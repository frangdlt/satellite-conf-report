#!/bin/bash

export LC_ALL=C
source /etc/os-release

# Default report location location
reportfile="/tmp/satellite-conf-report_${HOSTNAME}_$(date +%Y.%m.%d_%H%M%S)_${ID}-${VERSION_ID}.md"
starttime=$(date +%s)

# List of hammer items where we don't want to issue a hammer $thing info --id X,
# either because they are too verbose, take too long, or don't provide relevant
# information
ignoreiteminfo="auth-source global-parameter host job-template repository repository-set settings subscription "  # leave the trailing space here.


echo "
Satellite Configuration report
-------------------------------

This commands gathers information about your satellite configuration and
creates a file with output of hammer commands.

You need to have a working hammer configuration prior to launching this command.
"

hammer ping 2>&1 > /dev/null|| (echo "Hammer doesn't seem to be working." && exit 1)

echo "reportfile is at $reportfile

"

# Initialize report file.
echo "" > $reportfile


echo "
# Satellite Configuration report

Generated on $reportfile

## General Operating System configuration

~~~
Operating system: $(cat /etc/redhat-release)

Hostname: $HOSTNAME

Satellite version: $(rpm -q satellite --queryformat '%{NAME}-%{VERSION}\n')

Storage and filesystems:

$(df -PTh)

$(lsblk)

CPUs:

$(lscpu)

Memory:

$(free -h)

Environment proxy settings:

$(env | grep -i proxy)

IPs and routes:

$(ip --brief address)

$(ip --brief route | sort)

Hosts file content:
$(cat /etc/hosts)

Subscription identity:
$(subscription-manager identity)

Installed packages:
$(yum list installed | grep -i -P 'ansible|satellite|katello|foreman|puppet|ruby|epel')

Repositories:
$(yum repolist ; echo; yum repolist -v)

~~~

## Satellite installer configuration

~~~
$(satellite-installer --scenario satellite --full-help)
~~~

## General configuration settings
" >> $reportfile



# The list of items below can be grabbed by launching "hammer -h".
# It is kept alphabetically so far until I find a better way to arrange it.
#
# This list should only have items pertaining to the global Satellite 
# configuration. Organization configuration items are handled later.
for item in \
  alternate-content-source \
  "ansible roles" \
  "ansible variables" \
  architecture \
  "auth-source external" \
  capsule \
  compute-profile \
  compute-resource \
  config-report \
  defaults \
  discovery \
  discovery-rule \
  domain \
  file \
  global-parameter \
  host \
  host-collection \
  hostgroup \
  http-proxy \
  job-template \
  location \
  mail-notification \
  medium \
  model \
  organization \
  os \
  partition-table \
  policy \
  proxy \
  realm \
  recurring-logic \
  remote-execution-feature \
  report \
  report-template \
  role \
  scap-content \
  scap-content-profile \
  settings \
  subnet \
  tailoring-file \
  template \
  template-input \
  user \
  user-group \
  virt-who-config \
  webhook \
  webhook-template \
  ; do
  echo "=== Getting details of $item" 
  echo > /tmp/.item
  echo -e "### $item " >> $reportfile
  echo -e '\n```' >> $reportfile
  hammer $item list  &>> $reportfile
  hammer --csv $item list  > /tmp/.item
  echo -e '\n```\n\n' >> $reportfile
  
  # Go to the next item if we don't need to launch the hammer $item info --id X
  if [[ "$ignoreiteminfo" =~ "$item "  ]]; then 
    continue
  fi

  # show each item, removing the first line.
  sed -i '1d' /tmp/.item
  amount=$(cat /tmp/.item | wc -l )
  count=0
  for id in $(cat /tmp/.item | cut -d , -f 1); do
    count=$(expr $count + 1)
    echo Getting $item $count of $amount
    echo -e '\n```' >> $reportfile
    hammer $item info --id $id  &>> $reportfile
    echo -e '\n```\n\n' >> $reportfile
  done
  echo > /tmp/.item
done

######### org

# organization names might have spaces, and this is a reasonable way to deal
# with it.
hammer --csv organization list  | cut -d , -f 2 | tail -n +2 | while read org; do
  echo "==================== Getting information for organization $org"
  echo -e "## Organization $org" >> $reportfile
  echo -e '\n' >> $reportfile

  for item in \
  activation-key \
  "ansible roles" \
  "ansible variables" \
  content-credentials \
  content-view \
  host-collection \
  hostgroup \
  lifecycle-environment \
  product \
  subscription \
  sync-plan \
  repository \
  ; do

    # fix slow product fetch. Only get enabled products.
    extraopts=""
    if [ "$item" == "product" ]; then
      extraopts="--enabled 1"
    fi

    echo "=== Getting details of $item ($org)" 
    echo > /tmp/.item
    echo -e "### Org $org - $item" >> $reportfile
    echo -e '\n```' >> $reportfile
    hammer $item list --organization "$org" $extraopts &>> $reportfile
    hammer --csv $item list --organization "$org" $extraopts > /tmp/.item
    echo -e '```\n\n' >> $reportfile
    
    # Go to the next item if we don't need to launch the hammer $item info --id X
    if [[ "$ignoreiteminfo" =~ "$item "  ]]; then 
        continue
    fi

    # show each item, removing the first line.
    sed -i '1d' /tmp/.item
    amount=$(cat /tmp/.item | wc -l )
    count=0
    for id in $(cat /tmp/.item | cut -d , -f 1); do
        count=$(expr $count + 1)
        echo Getting $item $count of $amount
        echo -e '\n```' >> $reportfile
        hammer $item info --id $id --organization "$org" &>> $reportfile
        echo -e '```\n\n' >> $reportfile
    done
    rm /tmp/.item

    # TODO - Missing stuff
    # hammer simple-content-access status --organization "$org"

  done
done

endtime=$(date +%s)
duration=$(expr $endtime - $starttime)

echo "Generation of report took $duration seconds. 

End of report." >> $reportfile
chmod 644 $reportfile

echo "
Generation of report took $duration seconds.
The report is now available at $reportfile 

"
