# Satellite Configuration report

Generated on /tmp/satellite-conf-report-sat-reporting.p1.lab-2023.04.29.md

## General Operating System configuration

~~~
Operating system: Red Hat Enterprise Linux Server release 7.9 (Maipo)

Hostname: sat-reporting.p1.lab

Satellite version: satellite-6.6.3

Storage and filesystems:

Filesystem                   Type      Size  Used Avail Use% Mounted on
devtmpfs                     devtmpfs   16G     0   16G   0% /dev
tmpfs                        tmpfs      16G  124K   16G   1% /dev/shm
tmpfs                        tmpfs      16G   18M   16G   1% /run
tmpfs                        tmpfs      16G     0   16G   0% /sys/fs/cgroup
/dev/vda1                    xfs       100G   13G   88G  13% /
192.168.123.1:/mnt/repo      nfs4      866G  724G   98G  89% /mnt/repo
192.168.123.1:/mnt/vertedero nfs4      866G  724G   98G  89% /mnt/vertedero
192.168.123.1:/mnt/shared    nfs4      866G  724G   98G  89% /mnt/shared
tmpfs                        tmpfs     3.2G     0  3.2G   0% /run/user/1000

CPUs:

Architecture:          x86_64
CPU op-mode(s):        32-bit, 64-bit
Byte Order:            Little Endian
CPU(s):                6
On-line CPU(s) list:   0-5
Thread(s) per core:    1
Core(s) per socket:    1
Socket(s):             6
NUMA node(s):          1
Vendor ID:             GenuineIntel
CPU family:            6
Model:                 85
Model name:            Intel Xeon Processor (Cooperlake)
Stepping:              10
CPU MHz:               2496.000
BogoMIPS:              4992.00
Virtualization:        VT-x
Hypervisor vendor:     KVM
Virtualization type:   full
L1d cache:             32K
L1i cache:             32K
L2 cache:              4096K
L3 cache:              16384K
NUMA node0 CPU(s):     0-5
Flags:                 fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ss syscall nx pdpe1gb rdtscp lm constant_tsc rep_good nopl xtopology eagerfpu pni pclmulqdq vmx ssse3 fma cx16 pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand hypervisor lahf_lm abm 3dnowprefetch invpcid_single ssbd rsb_ctxsw ibrs ibpb stibp ibrs_enhanced tpr_shadow vnmi flexpriority ept vpid fsgsbase tsc_adjust bmi1 avx2 smep bmi2 erms invpcid avx512f avx512dq rdseed adx smap avx512ifma clflushopt clwb avx512cd sha_ni avx512bw avx512vl xsaveopt xsavec xgetbv1 arat avx512vbmi umip pku ospke avx512_vbmi2 gfni vaes vpclmulqdq avx512_vnni avx512_bitalg avx512_vpopcntdq movdiri movdir64b md_clear spec_ctrl intel_stibp arch_capabilities

Memory:

              total        used        free      shared  buff/cache   available
Mem:            31G         16G        6.3G        262M        8.8G         14G
Swap:            0B          0B          0B

Environment proxy settings:


~~~

## Satellite installer configuration

~~~
Usage:
    satellite-installer [OPTIONS]

Options:

= Generic:
    --[no-]lock-package-versions  Let installer lock versions of the installed packages to prevent
                                  unexpected breakages during system updates. The choice is remembered
                                  and used in next installer runs. (default: nil)
    --reset                       This option will drop the Katello database and clear all subsequent backend data stores. You will lose all data!
                                  Unfortunately, we can't detect a failure, so you should verify success manually.
                                  Dropping can fail when the DB is in use. (default: false)
    --clear-pulp-content          This option will clear all Pulp content from disk located in '/var/lib/pulp/content/'. (default: false)
    --clear-puppet-environments   This option will clear all published Puppet environments from disk. (default: false)
    --disable-system-checks       This option will skip the system checks for memory. (default: false)
    --force-upgrade-steps         This option will force upgrade steps to run that are normally only run once. (default: false)
    --certs-update-server         This option will enforce an update of the HTTPS certificates (default: false)
    --certs-update-server-ca      This option will enforce an update of the CA used for HTTPS certificates. (default: false)
    --certs-update-all            This option will enforce an update of all the certificates for given host (default: false)
    --certs-reset                 This option will reset any custom certificates and use the self-signed CA instead. Note that any clients will need to be updated with the latest katello-ca-consumer RPM, and any external proxies will need to have the certs updated by generating a new certs tarball. (default: false)
    --certs-skip-check            This option will cause skipping the certificates sanity check. Use with caution (default: false)
    --upgrade-mongo-storage-engine Run the steps necessary to upgrade the MongoDB storage engine. (default: false)
    --upgrade                     Run the steps necessary for an upgrade such as migrations, rake tasks, etc. (default: false)
    --disable-resolve-mismatches  This will disable the resolving of mismatches between the application and backend services, during upgrade.  The steps will still run in a non-commit mode to show what would have been changed. (default: false)
    --[no-]colors                 Use color output on STDOUT (default: true)
    --color-of-background COLOR   Your terminal background is :bright or :dark (default: :dark)
    --dont-save-answers           Skip saving answers to '/etc/foreman-installer/scenarios.d/satellite-answers.yaml'? (default: false)
    --ignore-undocumented         Ignore inconsistent parameter documentation (default: false)
    -i, --interactive             Run in interactive mode
    --log-level LEVEL             Log level for log file output (default: "DEBUG")
    -n, --noop                    Run puppet in noop mode? (default: false)
    -p, --profile                 Run puppet in profile mode? (default: false)
    -s, --skip-checks-i-know-better Skip all system checks (default: false)
    --skip-puppet-version-check   Skip check for compatible Puppet versions (default: false)
    -v, --verbose                 Display log on STDOUT instead of progressbar
    -l, --verbose-log-level LEVEL Log level for verbose mode output (default: "info")
    -S, --scenario SCENARIO       Use installation scenario
    --disable-scenario SCENARIO   Disable installation scenario
    --enable-scenario SCENARIO    Enable installation scenario
    --list-scenarios              List available installation scenarios
    --force                       Force change of installation scenario
    --compare-scenarios           Show changes between last used scenario and the scenario specified with -S or --scenario argument
    --migrations-only             Apply migrations to a selected scenario and exit
    --[no-]parser-cache           Force use or bypass of Puppet module parser cache
    -h, --help                    print help
    --full-help                   print complete help
    --[no-]enable-certs           Enable 'certs' puppet module (default: true)
    --[no-]enable-foreman         Enable 'foreman' puppet module (default: true)
    --[no-]enable-foreman-cli     Enable 'foreman_cli' puppet module (default: true)
    --[no-]enable-foreman-cli-kubevirt Enable 'foreman_cli_kubevirt' puppet module (default: false)
    --[no-]enable-foreman-compute-ec2 Enable 'foreman_compute_ec2' puppet module (default: false)
    --[no-]enable-foreman-compute-gce Enable 'foreman_compute_gce' puppet module (default: false)
    --[no-]enable-foreman-compute-libvirt Enable 'foreman_compute_libvirt' puppet module (default: false)
    --[no-]enable-foreman-compute-openstack Enable 'foreman_compute_openstack' puppet module (default: false)
    --[no-]enable-foreman-compute-ovirt Enable 'foreman_compute_ovirt' puppet module (default: false)
    --[no-]enable-foreman-compute-rackspace Enable 'foreman_compute_rackspace' puppet module (default: false)
    --[no-]enable-foreman-compute-vmware Enable 'foreman_compute_vmware' puppet module (default: false)
    --[no-]enable-foreman-plugin-ansible Enable 'foreman_plugin_ansible' puppet module (default: true)
    --[no-]enable-foreman-plugin-bootdisk Enable 'foreman_plugin_bootdisk' puppet module (default: false)
    --[no-]enable-foreman-plugin-discovery Enable 'foreman_plugin_discovery' puppet module (default: true)
    --[no-]enable-foreman-plugin-hooks Enable 'foreman_plugin_hooks' puppet module (default: true)
    --[no-]enable-foreman-plugin-kubevirt Enable 'foreman_plugin_kubevirt' puppet module (default: false)
    --[no-]enable-foreman-plugin-openscap Enable 'foreman_plugin_openscap' puppet module (default: true)
    --[no-]enable-foreman-plugin-remote-execution Enable 'foreman_plugin_remote_execution' puppet module (default: true)
    --[no-]enable-foreman-plugin-tasks Enable 'foreman_plugin_tasks' puppet module (default: true)
    --[no-]enable-foreman-plugin-templates Enable 'foreman_plugin_templates' puppet module (default: true)
    --[no-]enable-foreman-proxy   Enable 'foreman_proxy' puppet module (default: true)
    --[no-]enable-foreman-proxy-content Enable 'foreman_proxy_content' puppet module (default: true)
    --[no-]enable-foreman-proxy-plugin-ansible Enable 'foreman_proxy_plugin_ansible' puppet module (default: true)
    --[no-]enable-foreman-proxy-plugin-dhcp-infoblox Enable 'foreman_proxy_plugin_dhcp_infoblox' puppet module (default: false)
    --[no-]enable-foreman-proxy-plugin-dhcp-remote-isc Enable 'foreman_proxy_plugin_dhcp_remote_isc' puppet module (default: false)
    --[no-]enable-foreman-proxy-plugin-discovery Enable 'foreman_proxy_plugin_discovery' puppet module (default: true)
    --[no-]enable-foreman-proxy-plugin-dns-infoblox Enable 'foreman_proxy_plugin_dns_infoblox' puppet module (default: false)
    --[no-]enable-foreman-proxy-plugin-openscap Enable 'foreman_proxy_plugin_openscap' puppet module (default: true)
    --[no-]enable-foreman-proxy-plugin-pulp Enable 'foreman_proxy_plugin_pulp' puppet module (default: true)
    --[no-]enable-foreman-proxy-plugin-remote-execution-ssh Enable 'foreman_proxy_plugin_remote_execution_ssh' puppet module (default: true)
    --[no-]enable-katello         Enable 'katello' puppet module (default: true)
    --[no-]enable-puppet          Enable 'puppet' puppet module (default: true)

= Module certs:

== Advanced:
    --certs-ca-common-name        Common name for the generated CA certificate (current: "sat-reporting.p1.lab")
    --reset-certs-ca-common-name  Reset ca_common_name to the default value ("sat-reporting.p1.lab")
    --certs-ca-expiration         CA expiration attribute for managed certificates (current: "36500")
    --reset-certs-ca-expiration   Reset ca_expiration to the default value ("36500")
    --certs-city                  City attribute for managed certificates (current: "Raleigh")
    --reset-certs-city            Reset city to the default value ("Raleigh")
    --certs-country               Country attribute for managed certificates (current: "US")
    --reset-certs-country         Reset country to the default value ("US")
    --certs-default-ca-name       The name of the default CA (current: "katello-default-ca")
    --reset-certs-default-ca-name Reset default_ca_name to the default value ("katello-default-ca")
    --certs-deploy                Deploy the certs on the configured system. False means
                                  we want to apply it to a different system (current: true)
    --reset-certs-deploy          Reset deploy to the default value (true)
    --certs-expiration            Expiration attribute for managed certificates (current: "7300")
    --reset-certs-expiration      Reset expiration to the default value ("7300")
    --certs-generate              Should the generation of the certs be part of the
                                  configuration (current: true)
    --reset-certs-generate        Reset generate to the default value (true)
    --certs-group                 The group who should own the certs (current: "foreman")
    --reset-certs-group           Reset group to the default value ("root")
    --certs-log-dir               Where the log files should go (current: "/var/log/certs")
    --reset-certs-log-dir         Reset log_dir to the default value ("/var/log/certs")
    --certs-org                   Org attribute for managed certificates (current: "Katello")
    --reset-certs-org             Reset org to the default value ("Katello")
    --certs-org-unit              Org unit attribute for managed certificates (current: "SomeOrgUnit")
    --reset-certs-org-unit        Reset org_unit to the default value ("SomeOrgUnit")
    --certs-pki-dir               The PKI directory under which to place certs (current: "/etc/pki/katello")
    --reset-certs-pki-dir         Reset pki_dir to the default value ("/etc/pki/katello")
    --certs-regenerate            Force regeneration of the certificates (excluding
                                  CA certificates) (current: false)
    --reset-certs-regenerate      Reset regenerate to the default value (false)
    --certs-regenerate-ca         Force regeneration of the CA certificate (current: false)
    --reset-certs-regenerate-ca   Reset regenerate_ca to the default value (false)
    --certs-server-ca-name        The name of the server CA (used for https) (current: "katello-server-ca")
    --reset-certs-server-ca-name  Reset server_ca_name to the default value ("katello-server-ca")
    --certs-ssl-build-dir         The directory where SSL keys, certs and RPMs will be generated (current: "/root/ssl-build")
    --reset-certs-ssl-build-dir   Reset ssl_build_dir to the default value ("/root/ssl-build")
    --certs-state                 State attribute for managed certificates (current: "North Carolina")
    --reset-certs-state           Reset state to the default value ("North Carolina")
    --certs-user                  The system user name who should own the certs (current: "root")
    --reset-certs-user            Reset user to the default value ("root")

== Basic:
    --certs-cname                 The alternative names of the host the generated certificates
                                  should be for (current: [])
    --reset-certs-cname           Reset cname to the default value ([])
    --certs-node-fqdn             The fqdn of the host the generated certificates
                                  should be for (current: "sat-reporting.p1.lab")
    --reset-certs-node-fqdn       Reset node_fqdn to the default value ("sat-reporting.p1.lab")
    --certs-server-ca-cert        Path to the CA that issued the ssl certificates for https
                                  if not specified, the default CA will be used (current: UNDEF)
    --reset-certs-server-ca-cert  Reset server_ca_cert to the default value (UNDEF)
    --certs-server-cert           Path to the ssl certificate for https
                                  if not specified, the default CA will generate one (current: UNDEF)
    --reset-certs-server-cert     Reset server_cert to the default value (UNDEF)
    --certs-server-cert-req       Path to the ssl certificate request for https
                                  if not specified, the default CA will generate one (current: UNDEF)
    --reset-certs-server-cert-req Reset server_cert_req to the default value (UNDEF)
    --certs-server-key            Path to the ssl key for https
                                  if not specified, the default CA will generate one (current: UNDEF)
    --reset-certs-server-key      Reset server_key to the default value (UNDEF)
    --certs-tar-file              Use a tarball with certificates rather than generate
                                  new ones. This can be used on another node which is
                                  not the CA. (current: UNDEF)
    --reset-certs-tar-file        Reset tar_file to the default value (UNDEF)

= Module foreman:

== Advanced:
    --foreman-app-root            Name of foreman root directory (current: "/usr/share/foreman")
    --reset-foreman-app-root      Reset app_root to the default value ("/usr/share/foreman")
    --foreman-authentication      Enable user authentication. (Unused since 1.21)
                                  Initial credentials are set using initial_admin_username and initial_admin_password. (current: UNDEF)
    --reset-foreman-authentication Reset authentication to the default value (UNDEF)
    --foreman-client-ssl-ca       Defines the SSL CA used to communicate with Foreman Proxies (current: "/etc/foreman/proxy_ca.pem")
    --reset-foreman-client-ssl-ca Reset client_ssl_ca to the default value ("/etc/puppetlabs/puppet/ssl/certs/ca.pem")
    --foreman-client-ssl-cert     Defines the SSL certificate used to communicate with Foreman Proxies (current: "/etc/foreman/client_cert.pem")
    --reset-foreman-client-ssl-cert Reset client_ssl_cert to the default value ("/etc/puppetlabs/puppet/ssl/certs/sat-reporting.p1.lab.pem")
    --foreman-client-ssl-key      Defines the SSL private key used to communicate with Foreman Proxies (current: "/etc/foreman/client_key.pem")
    --reset-foreman-client-ssl-key Reset client_ssl_key to the default value ("/etc/puppetlabs/puppet/ssl/private_keys/sat-reporting.p1.lab.pem")
    --foreman-configure-epel-repo  If disabled the EPEL repo will not be configured on Red Hat family systems. (current: false)
    --reset-foreman-configure-epel-repo Reset configure_epel_repo to the default value (true)
    --foreman-configure-scl-repo  If disabled the SCL repo will not be configured on Red Hat clone systems.
                                  (Currently only installs repos for CentOS and Scientific) (current: false)
    --reset-foreman-configure-scl-repo Reset configure_scl_repo to the default value (true)
    --foreman-cors-domains        List of domains that show be allowed for Cross-Origin Resource Sharing. This requires Foreman 1.22+ (current: [])
    --reset-foreman-cors-domains  Reset cors_domains to the default value ([])
    --foreman-db-adapter          Database 'production' adapter (current: UNDEF)
    --reset-foreman-db-adapter    Reset db_adapter to the default value (UNDEF)
    --foreman-db-database         Database 'production' database (e.g. foreman) (current: UNDEF)
    --reset-foreman-db-database   Reset db_database to the default value (UNDEF)
    --foreman-db-host             Database 'production' host (current: UNDEF)
    --reset-foreman-db-host       Reset db_host to the default value (UNDEF)
    --foreman-db-manage-rake      if enabled, will run rake jobs, which depend on the database (current: true)
    --reset-foreman-db-manage-rake Reset db_manage_rake to the default value (true)
    --foreman-db-password         Database 'production' password, default is randomly generated (current: "QjFUL7bamVVz9RHGzX34sMKZ3rC4skc3")
    --reset-foreman-db-password   Reset db_password to the default value ("QjFUL7bamVVz9RHGzX34sMKZ3rC4skc3")
    --foreman-db-pool             Database 'production' size of connection pool (current: 5)
    --reset-foreman-db-pool       Reset db_pool to the default value (5)
    --foreman-db-port             Database 'production' port (current: UNDEF)
    --reset-foreman-db-port       Reset db_port to the default value (UNDEF)
    --foreman-db-root-cert        Root cert used to verify SSL connection to postgres (current: UNDEF)
    --reset-foreman-db-root-cert  Reset db_root_cert to the default value (UNDEF)
    --foreman-db-sslmode          Database 'production' ssl mode (current: UNDEF)
    --reset-foreman-db-sslmode    Reset db_sslmode to the default value (UNDEF)
    --foreman-db-username         Database 'production' user (e.g. foreman) (current: "foreman")
    --reset-foreman-db-username   Reset db_username to the default value ("foreman")
    --foreman-dynflow-pool-size   How many workers should Dynflow use (current: 5)
    --reset-foreman-dynflow-pool-size Reset dynflow_pool_size to the default value (5)
    --foreman-foreman-url         URL on which foreman is going to run (current: "https://sat-reporting.p1.lab")
    --reset-foreman-foreman-url   Reset foreman_url to the default value ("https://sat-reporting.p1.lab")
    --foreman-gpgcheck            Turn on/off gpg check in repo files (effective only on RedHat family systems) (current: true)
    --reset-foreman-gpgcheck      Reset gpgcheck to the default value (true)
    --foreman-group               Primary group for the Foreman user (current: "foreman")
    --reset-foreman-group         Reset group to the default value ("foreman")
    --foreman-hsts-enabled        Should HSTS enforcement in https requests be enabled (current: true)
    --reset-foreman-hsts-enabled  Reset hsts_enabled to the default value (true)
    --foreman-http-keytab         Path to keytab to be used for Kerberos authentication on the WebUI (current: "/etc/httpd/conf/http.keytab")
    --reset-foreman-http-keytab   Reset http_keytab to the default value ("/etc/httpd/conf/http.keytab")
    --foreman-ipa-manage-sssd     If ipa_authentication is true, should the installer manage SSSD? You can disable it
                                  if you use another module for SSSD configuration (current: true)
    --reset-foreman-ipa-manage-sssd Reset ipa_manage_sssd to the default value (true)
    --foreman-jobs-service        Name of the service for running the background Dynflow executor (current: "dynflowd")
    --reset-foreman-jobs-service  Reset jobs_service to the default value ("dynflowd")
    --foreman-jobs-service-enable  Whether the Dynflow executor should be enabled (current: true)
    --reset-foreman-jobs-service-enable Reset jobs_service_enable to the default value (true)
    --foreman-jobs-service-ensure  Whether the Dynflow executor should be running or stopped (current: "running")
    --reset-foreman-jobs-service-ensure Reset jobs_service_ensure to the default value ("running")
    --foreman-keepalive           Enable KeepAlive setting of Apache? (current: true)
    --reset-foreman-keepalive     Reset keepalive to the default value (true)
    --foreman-keepalive-timeout   KeepAliveTimeout setting of Apache
                                  (Seconds the server will wait for subsequent requests on a persistent connection) (current: 5)
    --reset-foreman-keepalive-timeout Reset keepalive_timeout to the default value (5)
    --foreman-locations-enabled   Enable locations? (Unused since 1.21) (current: UNDEF)
    --reset-foreman-locations-enabled Reset locations_enabled to the default value (UNDEF)
    --foreman-loggers             Enable or disable specific loggers, e.g. {"sql" => true} (current: {})
    --reset-foreman-loggers       Reset loggers to the default value ({})
    --foreman-logging-layout      Logging layout of the Foreman application (current: "pattern")
    --reset-foreman-logging-layout Reset logging_layout to the default value ("pattern")
    --foreman-logging-level       Logging level of the Foreman application (current: "info")
    --reset-foreman-logging-level Reset logging_level to the default value ("info")
    --foreman-logging-type        Logging type of the Foreman application (current: "file")
    --reset-foreman-logging-type  Reset logging_type to the default value ("file")
    --foreman-manage-user         Controls whether foreman module will manage the user on the system. (current: true)
    --reset-foreman-manage-user   Reset manage_user to the default value (true)
    --foreman-max-keepalive-requests  MaxKeepAliveRequests setting of Apache
                                  (Number of requests allowed on a persistent connection) (current: 10000)
    --reset-foreman-max-keepalive-requests Reset max_keepalive_requests to the default value (100)
    --foreman-oauth-active        Enable OAuth authentication for REST API (current: true)
    --reset-foreman-oauth-active  Reset oauth_active to the default value (true)
    --foreman-oauth-consumer-key  OAuth consumer key (current: "fz29L5H7uChn7fyRhvVyGScdNm9NbFGy")
    --reset-foreman-oauth-consumer-key Reset oauth_consumer_key to the default value ("fz29L5H7uChn7fyRhvVyGScdNm9NbFGy")
    --foreman-oauth-consumer-secret  OAuth consumer secret (current: "KZNzqmKx6cou9SCn3ExXfBG8GdhRd5Ak")
    --reset-foreman-oauth-consumer-secret Reset oauth_consumer_secret to the default value ("KZNzqmKx6cou9SCn3ExXfBG8GdhRd5Ak")
    --foreman-oauth-map-users     Should Foreman use the foreman_user header to identify API user? (current: false)
    --reset-foreman-oauth-map-users Reset oauth_map_users to the default value (false)
    --foreman-organizations-enabled  Enable organizations? (Unused since 1.21) (current: UNDEF)
    --reset-foreman-organizations-enabled Reset organizations_enabled to the default value (UNDEF)
    --foreman-pam-service         PAM service used for host-based access control in IPA (current: "foreman")
    --reset-foreman-pam-service   Reset pam_service to the default value ("foreman")
    --foreman-passenger           Configure foreman via apache and passenger (current: true)
    --reset-foreman-passenger     Reset passenger to the default value (true)
    --foreman-passenger-interface  Defines which network interface passenger should listen on, undef means all interfaces (current: UNDEF)
    --reset-foreman-passenger-interface Reset passenger_interface to the default value (UNDEF)
    --foreman-passenger-min-instances  Minimum passenger worker instances to keep when application is idle. (current: 1)
    --reset-foreman-passenger-min-instances Reset passenger_min_instances to the default value (1)
    --foreman-passenger-prestart  Pre-start the first passenger worker instance process during httpd start. (current: true)
    --reset-foreman-passenger-prestart Reset passenger_prestart to the default value (true)
    --foreman-passenger-ruby      Ruby interpreter used to run Foreman under Passenger (current: "/usr/bin/tfm-ruby")
    --reset-foreman-passenger-ruby Reset passenger_ruby to the default value ("/usr/bin/tfm-ruby")
    --foreman-passenger-ruby-package  Package to install to provide Passenger libraries for the active Ruby
                                  interpreter (current: "tfm-rubygem-passenger-native")
    --reset-foreman-passenger-ruby-package Reset passenger_ruby_package to the default value ("tfm-rubygem-passenger-native")
    --foreman-passenger-start-timeout  Number of seconds to wait for Ruby application boot. (current: 90)
    --reset-foreman-passenger-start-timeout Reset passenger_start_timeout to the default value (90)
    --foreman-plugin-prefix       String which is prepended to the plugin package names (current: "tfm-rubygem-foreman_")
    --reset-foreman-plugin-prefix Reset plugin_prefix to the default value ("tfm-rubygem-foreman_")
    --foreman-plugin-version      Foreman plugins package version, it's passed to ensure parameter of package resource
                                  can be set to 'installed', 'latest', 'present' only (current: "present")
    --reset-foreman-plugin-version Reset plugin_version to the default value ("present")
    --foreman-rails-env           Rails environment of foreman (current: "production")
    --reset-foreman-rails-env     Reset rails_env to the default value ("production")
    --foreman-repo                This can be a specific version or nightly (current: UNDEF)
    --reset-foreman-repo          Reset repo to the default value (UNDEF)
    --foreman-selinux             When undef, foreman-selinux will be installed if SELinux is enabled
                                  setting to false/true will override this check (e.g. set to false on 1.1) (current: UNDEF)
    --reset-foreman-selinux       Reset selinux to the default value (UNDEF)
    --foreman-server-port         Defines Apache port for HTTP requests (current: 80)
    --reset-foreman-server-port   Reset server_port to the default value (80)
    --foreman-server-ssl-ca       Defines Apache mod_ssl SSLCACertificateFile setting in Foreman vhost conf file. (current: "/etc/pki/katello/certs/katello-default-ca.crt")
    --reset-foreman-server-ssl-ca Reset server_ssl_ca to the default value ("/etc/puppetlabs/puppet/ssl/certs/ca.pem")
    --foreman-server-ssl-cert     Defines Apache mod_ssl SSLCertificateFile setting in Foreman vhost conf file. (current: "/etc/pki/katello/certs/katello-apache.crt")
    --reset-foreman-server-ssl-cert Reset server_ssl_cert to the default value ("/etc/puppetlabs/puppet/ssl/certs/sat-reporting.p1.lab.pem")
    --foreman-server-ssl-certs-dir  Defines Apache mod_ssl SSLCACertificatePath setting in Foreman vhost conf file. (current: "")
    --reset-foreman-server-ssl-certs-dir Reset server_ssl_certs_dir to the default value ("")
    --foreman-server-ssl-chain    Defines Apache mod_ssl SSLCertificateChainFile setting in Foreman vhost conf file. (current: "/etc/pki/katello/certs/katello-server-ca.crt")
    --reset-foreman-server-ssl-chain Reset server_ssl_chain to the default value ("/etc/puppetlabs/puppet/ssl/certs/ca.pem")
    --foreman-server-ssl-crl      Defines the Apache mod_ssl SSLCARevocationFile setting in Foreman vhost conf file. (current: "")
    --reset-foreman-server-ssl-crl Reset server_ssl_crl to the default value ("/etc/puppetlabs/puppet/ssl/crl.pem")
    --foreman-server-ssl-key      Defines Apache mod_ssl SSLCertificateKeyFile setting in Foreman vhost conf file. (current: "/etc/pki/katello/private/katello-apache.key")
    --reset-foreman-server-ssl-key Reset server_ssl_key to the default value ("/etc/puppetlabs/puppet/ssl/private_keys/sat-reporting.p1.lab.pem")
    --foreman-server-ssl-port     Defines Apache port for HTTPS requests (current: 443)
    --reset-foreman-server-ssl-port Reset server_ssl_port to the default value (443)
    --foreman-server-ssl-protocol  Defines the Apache mod_ssl SSLProtocol setting in Foreman vhost conf file. (current: UNDEF)
    --reset-foreman-server-ssl-protocol Reset server_ssl_protocol to the default value (UNDEF)
    --foreman-serveraliases       Server aliases of the VirtualHost in the webserver (current: ["foreman"])
    --reset-foreman-serveraliases Reset serveraliases to the default value (["foreman"])
    --foreman-servername          Server name of the VirtualHost in the webserver (current: "sat-reporting.p1.lab")
    --reset-foreman-servername    Reset servername to the default value ("sat-reporting.p1.lab")
    --foreman-ssl                 Enable and set require_ssl in Foreman settings (note: requires passenger, SSL does not apply to kickstarts) (current: true)
    --reset-foreman-ssl           Reset ssl to the default value (true)
    --foreman-telemetry-logger-enabled  Enable telemetry logs - useful for telemetry debugging (current: false)
    --reset-foreman-telemetry-logger-enabled Reset telemetry_logger_enabled to the default value (false)
    --foreman-telemetry-logger-level  Telemetry debugging logs level (current: "DEBUG")
    --reset-foreman-telemetry-logger-level Reset telemetry_logger_level to the default value ("DEBUG")
    --foreman-telemetry-prefix    Prefix for all metrics (current: "fm_rails")
    --reset-foreman-telemetry-prefix Reset telemetry_prefix to the default value ("fm_rails")
    --foreman-telemetry-prometheus-enabled  Enable prometheus telemetry (current: false)
    --reset-foreman-telemetry-prometheus-enabled Reset telemetry_prometheus_enabled to the default value (false)
    --foreman-telemetry-statsd-enabled  Enable statsd telemetry (current: false)
    --reset-foreman-telemetry-statsd-enabled Reset telemetry_statsd_enabled to the default value (false)
    --foreman-telemetry-statsd-host  Statsd host in format ip:port, do not use DNS (current: "127.0.0.1:8125")
    --reset-foreman-telemetry-statsd-host Reset telemetry_statsd_host to the default value ("127.0.0.1:8125")
    --foreman-telemetry-statsd-protocol  Statsd protocol one of 'statsd', 'statsite' or 'datadog' - currently only statsd is supported (current: "statsd")
    --reset-foreman-telemetry-statsd-protocol Reset telemetry_statsd_protocol to the default value ("statsd")
    --foreman-unattended          Should Foreman manage host provisioning as well (current: true)
    --reset-foreman-unattended    Reset unattended to the default value (true)
    --foreman-unattended-url      URL hosts will retrieve templates from during build (normally http as many installers don't support https) (current: UNDEF)
    --reset-foreman-unattended-url Reset unattended_url to the default value (UNDEF)
    --foreman-user                User under which foreman will run (current: "foreman")
    --reset-foreman-user          Reset user to the default value ("foreman")
    --foreman-user-groups         Additional groups for the Foreman user (current: [])
    --reset-foreman-user-groups   Reset user_groups to the default value (["puppet"])
    --foreman-version             Foreman package version, it's passed to ensure parameter of package resource
                                  can be set to specific version number, 'latest', 'present' etc. (current: "present")
    --reset-foreman-version       Reset version to the default value ("present")
    --foreman-vhost-priority      Defines Apache vhost priority for the Foreman vhost conf file. (current: "05")
    --reset-foreman-vhost-priority Reset vhost_priority to the default value ("05")
    --foreman-websockets-encrypt  Whether to encrypt websocket connections (current: true)
    --reset-foreman-websockets-encrypt Reset websockets_encrypt to the default value (true)
    --foreman-websockets-ssl-cert  SSL certificate file to use when encrypting websocket connections (current: "/etc/pki/katello/certs/katello-apache.crt")
    --reset-foreman-websockets-ssl-cert Reset websockets_ssl_cert to the default value ("/etc/puppetlabs/puppet/ssl/certs/sat-reporting.p1.lab.pem")
    --foreman-websockets-ssl-key  SSL key file to use when encrypting websocket connections (current: "/etc/pki/katello/private/katello-apache.key")
    --reset-foreman-websockets-ssl-key Reset websockets_ssl_key to the default value ("/etc/puppetlabs/puppet/ssl/private_keys/sat-reporting.p1.lab.pem")

== Basic:
    --foreman-db-manage           If enabled, will install and configure the database server on this host (current: true)
    --reset-foreman-db-manage     Reset db_manage to the default value (true)
    --foreman-db-type             Database 'production' type (current: "postgresql")
    --reset-foreman-db-type       Reset db_type to the default value ("postgresql")
    --foreman-email-delivery-method  Email delivery method (current: UNDEF)
    --reset-foreman-email-delivery-method Reset email_delivery_method to the default value (UNDEF)
    --foreman-email-smtp-address  SMTP server hostname, when delivery method is SMTP (current: UNDEF)
    --reset-foreman-email-smtp-address Reset email_smtp_address to the default value (UNDEF)
    --foreman-email-smtp-authentication  SMTP authentication method (current: "none")
    --reset-foreman-email-smtp-authentication Reset email_smtp_authentication to the default value ("none")
    --foreman-email-smtp-domain   SMTP HELO domain (current: UNDEF)
    --reset-foreman-email-smtp-domain Reset email_smtp_domain to the default value (UNDEF)
    --foreman-email-smtp-password  Password for SMTP server auth, if authentication is enabled (current: UNDEF)
    --reset-foreman-email-smtp-password Reset email_smtp_password to the default value (UNDEF)
    --foreman-email-smtp-port     SMTP port (current: 25)
    --reset-foreman-email-smtp-port Reset email_smtp_port to the default value (25)
    --foreman-email-smtp-user-name  Username for SMTP server auth, if authentication is enabled (current: UNDEF)
    --reset-foreman-email-smtp-user-name Reset email_smtp_user_name to the default value (UNDEF)
    --foreman-initial-admin-email  Initial E-mail address of the admin user (current: UNDEF)
    --reset-foreman-initial-admin-email Reset initial_admin_email to the default value (UNDEF)
    --foreman-initial-admin-first-name  Initial first name of the admin user (current: UNDEF)
    --reset-foreman-initial-admin-first-name Reset initial_admin_first_name to the default value (UNDEF)
    --foreman-initial-admin-last-name  Initial last name of the admin user (current: UNDEF)
    --reset-foreman-initial-admin-last-name Reset initial_admin_last_name to the default value (UNDEF)
    --foreman-initial-admin-password  Initial password of the admin user, default is randomly generated (current: "redhat")
    --reset-foreman-initial-admin-password Reset initial_admin_password to the default value ("XRrBpwWpq2GKXjuB")
    --foreman-initial-admin-username  Initial username for the admin user account, default is admin (current: "admin")
    --reset-foreman-initial-admin-username Reset initial_admin_username to the default value ("admin")
    --foreman-initial-location    Name of an initial location (current: "DefaultLocation")
    --reset-foreman-initial-location Reset initial_location to the default value (UNDEF)
    --foreman-initial-organization  Name of an initial organization (current: "RHCI")
    --reset-foreman-initial-organization Reset initial_organization to the default value (UNDEF)
    --foreman-ipa-authentication  Enable configuration for external authentication via IPA (current: false)
    --reset-foreman-ipa-authentication Reset ipa_authentication to the default value (false)
    --foreman-puppetrun           Should Foreman be able to start Puppet runs on nodes (current: false)
    --reset-foreman-puppetrun     Reset puppetrun to the default value (false)

= Module foreman_cli:

== Basic:
    --foreman-cli-foreman-url     URL on which Foreman runs (current: UNDEF)
    --reset-foreman-cli-foreman-url Reset foreman_url to the default value (UNDEF)
    --foreman-cli-password        Password for authentication (current: UNDEF)
    --reset-foreman-cli-password  Reset password to the default value (UNDEF)
    --foreman-cli-username        Username for authentication (current: UNDEF)
    --reset-foreman-cli-username  Reset username to the default value (UNDEF)

== Advanced:
    --foreman-cli-hammer-plugin-prefix  Hammer plugin package prefix based normally on platform (current: "tfm-rubygem-hammer_cli_")
    --reset-foreman-cli-hammer-plugin-prefix Reset hammer_plugin_prefix to the default value ("tfm-rubygem-hammer_cli_")
    --foreman-cli-manage-root-config  Whether to manage /root/.hammer configuration. (current: true)
    --reset-foreman-cli-manage-root-config Reset manage_root_config to the default value (true)
    --foreman-cli-refresh-cache   Check API documentation cache status on each request (current: false)
    --reset-foreman-cli-refresh-cache Reset refresh_cache to the default value (false)
    --foreman-cli-request-timeout  API request timeout, set -1 for infinity (current: 120)
    --reset-foreman-cli-request-timeout Reset request_timeout to the default value (120)
    --foreman-cli-ssl-ca-file     Path to SSL certificate authority (current: UNDEF)
    --reset-foreman-cli-ssl-ca-file Reset ssl_ca_file to the default value (UNDEF)
    --foreman-cli-version         foreman-cli package version, it's passed to ensure parameter of package resource
                                  can be set to specific version number, 'latest', 'present' etc. (current: "installed")
    --reset-foreman-cli-version   Reset version to the default value ("installed")


= Module foreman_compute_ec2:
    --foreman-compute-ec2-version  Package version to install, defaults to installed (current: "installed")
    --reset-foreman-compute-ec2-version Reset version to the default value ("installed")


= Module foreman_compute_gce:
    --foreman-compute-gce-version  Package version to install, defaults to installed (current: "installed")
    --reset-foreman-compute-gce-version Reset version to the default value ("installed")


= Module foreman_compute_libvirt:
    --foreman-compute-libvirt-version  Package version to install, defaults to installed (current: "installed")
    --reset-foreman-compute-libvirt-version Reset version to the default value ("installed")


= Module foreman_compute_openstack:
    --foreman-compute-openstack-version  Package version to install, defaults to installed (current: "installed")
    --reset-foreman-compute-openstack-version Reset version to the default value ("installed")


= Module foreman_compute_ovirt:
    --foreman-compute-ovirt-version  Package version to install, defaults to installed (current: "installed")
    --reset-foreman-compute-ovirt-version Reset version to the default value ("installed")


= Module foreman_compute_rackspace:
    --foreman-compute-rackspace-version  Package version to install, defaults to installed (current: "installed")
    --reset-foreman-compute-rackspace-version Reset version to the default value ("installed")


= Module foreman_compute_vmware:
    --foreman-compute-vmware-version  Package version to install, defaults to installed (current: "installed")
    --reset-foreman-compute-vmware-version Reset version to the default value ("installed")


= Module foreman_plugin_tasks:
    --foreman-plugin-tasks-automatic-cleanup  Enable automatic task cleanup using a cron job (current: true)
    --reset-foreman-plugin-tasks-automatic-cleanup Reset automatic_cleanup to the default value (false)
    --foreman-plugin-tasks-cron-line  Cron line defining when the cleanup cron job should run (current: "00 15 * * *")
    --reset-foreman-plugin-tasks-cron-line Reset cron_line to the default value ("45 19 * * *")
    --foreman-plugin-tasks-package  Package name to install, use ruby193-rubygem-foreman-tasks on Foreman 1.8/1.9 on EL (current: "tfm-rubygem-foreman-tasks")
    --reset-foreman-plugin-tasks-package Reset package to the default value ("tfm-rubygem-foreman-tasks")

= Module foreman_proxy:

== Basic:
    --foreman-proxy-autosignfile  Hostname-Whitelisting only: Location of puppets autosign.conf (current: "/etc/puppetlabs/puppet/autosign.conf")
    --reset-foreman-proxy-autosignfile Reset autosignfile to the default value ("/etc/puppetlabs/puppet/autosign.conf")
    --foreman-proxy-bind-host     Host to bind ports to, e.g. *, localhost, 0.0.0.0 (current: ["::"])
    --reset-foreman-proxy-bind-host Reset bind_host to the default value (["::"])
    --foreman-proxy-bmc           Enable BMC feature (current: false)
    --reset-foreman-proxy-bmc     Reset bmc to the default value (false)
    --foreman-proxy-bmc-default-provider  BMC default provider. (current: "ipmitool")
    --reset-foreman-proxy-bmc-default-provider Reset bmc_default_provider to the default value ("ipmitool")
    --foreman-proxy-bmc-listen-on  BMC proxy to listen on https, http, or both (current: "https")
    --reset-foreman-proxy-bmc-listen-on Reset bmc_listen_on to the default value ("https")
    --foreman-proxy-bmc-ssh-key   BMC SSH key location. (current: "/usr/share/foreman/.ssh/id_rsa")
    --reset-foreman-proxy-bmc-ssh-key Reset bmc_ssh_key to the default value ("/usr/share/foreman/.ssh/id_rsa")
    --foreman-proxy-bmc-ssh-powercycle  BMC SSH powercycle command. (current: "shutdown -r +1")
    --reset-foreman-proxy-bmc-ssh-powercycle Reset bmc_ssh_powercycle to the default value ("shutdown -r +1")
    --foreman-proxy-bmc-ssh-poweroff  BMC SSH poweroff command. (current: "shutdown +1")
    --reset-foreman-proxy-bmc-ssh-poweroff Reset bmc_ssh_poweroff to the default value ("shutdown +1")
    --foreman-proxy-bmc-ssh-poweron  BMC SSH poweron command. (current: "false")
    --reset-foreman-proxy-bmc-ssh-poweron Reset bmc_ssh_poweron to the default value ("false")
    --foreman-proxy-bmc-ssh-powerstatus  BMC SSH powerstatus command. (current: "true")
    --reset-foreman-proxy-bmc-ssh-powerstatus Reset bmc_ssh_powerstatus to the default value ("true")
    --foreman-proxy-bmc-ssh-user  BMC SSH user. (current: "root")
    --reset-foreman-proxy-bmc-ssh-user Reset bmc_ssh_user to the default value ("root")
    --foreman-proxy-customrun-args  Puppet customrun command arguments (current: "-ay -f -s")
    --reset-foreman-proxy-customrun-args Reset customrun_args to the default value ("-ay -f -s")
    --foreman-proxy-customrun-cmd  Puppet customrun command (current: "/bin/false")
    --reset-foreman-proxy-customrun-cmd Reset customrun_cmd to the default value ("/bin/false")
    --foreman-proxy-dhcp          Enable DHCP feature (current: false)
    --reset-foreman-proxy-dhcp    Reset dhcp to the default value (false)
    --foreman-proxy-dhcp-additional-interfaces  Additional DHCP listen interfaces (in addition to dhcp_interface). Note: as opposed to dhcp_interface
                                  *no* subnet will be provisioned for any of the additional DHCP listen interfaces. Please configure any
                                  additional subnets using `dhcp::pool` and related resource types (provided by the theforeman/puppet-dhcp
                                  module). (current: [])
    --reset-foreman-proxy-dhcp-additional-interfaces Reset dhcp_additional_interfaces to the default value ([])
    --foreman-proxy-dhcp-config   DHCP config file path (current: "/etc/dhcp/dhcpd.conf")
    --reset-foreman-proxy-dhcp-config Reset dhcp_config to the default value ("/etc/dhcp/dhcpd.conf")
    --foreman-proxy-dhcp-gateway  DHCP pool gateway (current: UNDEF)
    --reset-foreman-proxy-dhcp-gateway Reset dhcp_gateway to the default value (UNDEF)
    --foreman-proxy-dhcp-interface  DHCP listen interface (current: "eth0")
    --reset-foreman-proxy-dhcp-interface Reset dhcp_interface to the default value ("eth0")
    --foreman-proxy-dhcp-key-name  DHCP key name (current: UNDEF)
    --reset-foreman-proxy-dhcp-key-name Reset dhcp_key_name to the default value (UNDEF)
    --foreman-proxy-dhcp-key-secret  DHCP password (current: UNDEF)
    --reset-foreman-proxy-dhcp-key-secret Reset dhcp_key_secret to the default value (UNDEF)
    --foreman-proxy-dhcp-leases   DHCP leases file (current: "/var/lib/dhcpd/dhcpd.leases")
    --reset-foreman-proxy-dhcp-leases Reset dhcp_leases to the default value ("/var/lib/dhcpd/dhcpd.leases")
    --foreman-proxy-dhcp-listen-on  DHCP proxy to listen on https, http, or both (current: "https")
    --reset-foreman-proxy-dhcp-listen-on Reset dhcp_listen_on to the default value ("https")
    --foreman-proxy-dhcp-managed  The DHCP daemon is managed by this module (current: true)
    --reset-foreman-proxy-dhcp-managed Reset dhcp_managed to the default value (true)
    --foreman-proxy-dhcp-nameservers  DHCP nameservers, comma-separated (current: "default")
    --reset-foreman-proxy-dhcp-nameservers Reset dhcp_nameservers to the default value ("default")
    --foreman-proxy-dhcp-netmask  DHCP server netmask value, defaults otherwise to value based on IP of dhcp_interface (current: UNDEF)
    --reset-foreman-proxy-dhcp-netmask Reset dhcp_netmask to the default value (UNDEF)
    --foreman-proxy-dhcp-network  DHCP server network value, defaults otherwise to value based on IP of dhcp_interface (current: UNDEF)
    --reset-foreman-proxy-dhcp-network Reset dhcp_network to the default value (UNDEF)
    --foreman-proxy-dhcp-node-type  DHCP node type (current: "standalone")
    --reset-foreman-proxy-dhcp-node-type Reset dhcp_node_type to the default value ("standalone")
    --foreman-proxy-dhcp-omapi-port  DHCP server OMAPI port (current: 7911)
    --reset-foreman-proxy-dhcp-omapi-port Reset dhcp_omapi_port to the default value (7911)
    --foreman-proxy-dhcp-option-domain  DHCP use the dhcpd config option domain-name (current: ["p1.lab"])
    --reset-foreman-proxy-dhcp-option-domain Reset dhcp_option_domain to the default value (["p1.lab"])
    --foreman-proxy-dhcp-peer-address  The other DHCP servers address (current: UNDEF)
    --reset-foreman-proxy-dhcp-peer-address Reset dhcp_peer_address to the default value (UNDEF)
    --foreman-proxy-dhcp-provider  DHCP provider for the DHCP module (current: "isc")
    --reset-foreman-proxy-dhcp-provider Reset dhcp_provider to the default value ("isc")
    --foreman-proxy-dhcp-pxefilename  DHCP "filename" value, defaults otherwise to pxelinux.0 (current: "pxelinux.0")
    --reset-foreman-proxy-dhcp-pxefilename Reset dhcp_pxefilename to the default value ("pxelinux.0")
    --foreman-proxy-dhcp-pxeserver  DHCP "next-server" value, defaults otherwise to IP of dhcp_interface (current: UNDEF)
    --reset-foreman-proxy-dhcp-pxeserver Reset dhcp_pxeserver to the default value (UNDEF)
    --foreman-proxy-dhcp-range    Space-separated DHCP pool range (current: UNDEF)
    --reset-foreman-proxy-dhcp-range Reset dhcp_range to the default value (UNDEF)
    --foreman-proxy-dhcp-search-domains  DHCP search domains option (current: UNDEF)
    --reset-foreman-proxy-dhcp-search-domains Reset dhcp_search_domains to the default value (UNDEF)
    --foreman-proxy-dhcp-server   Address of DHCP server to manage (current: "127.0.0.1")
    --reset-foreman-proxy-dhcp-server Reset dhcp_server to the default value ("127.0.0.1")
    --foreman-proxy-dhcp-subnets  Subnets list to restrict DHCP management to (current: [])
    --reset-foreman-proxy-dhcp-subnets Reset dhcp_subnets to the default value ([])
    --foreman-proxy-dir           Foreman proxy install directory (current: "/usr/share/foreman-proxy")
    --reset-foreman-proxy-dir     Reset dir to the default value ("/usr/share/foreman-proxy")
    --foreman-proxy-dns           Enable DNS feature (current: false)
    --reset-foreman-proxy-dns     Reset dns to the default value (false)
    --foreman-proxy-dns-forwarders  DNS forwarders (current: [])
    --reset-foreman-proxy-dns-forwarders Reset dns_forwarders to the default value ([])
    --foreman-proxy-dns-interface  DNS interface (current: "eth0")
    --reset-foreman-proxy-dns-interface Reset dns_interface to the default value ("eth0")
    --foreman-proxy-dns-listen-on  DNS proxy to listen on https, http, or both (current: "https")
    --reset-foreman-proxy-dns-listen-on Reset dns_listen_on to the default value ("https")
    --foreman-proxy-dns-managed   The DNS daemon is managed by this module (current: true)
    --reset-foreman-proxy-dns-managed Reset dns_managed to the default value (true)
    --foreman-proxy-dns-provider  DNS provider (current: "nsupdate")
    --reset-foreman-proxy-dns-provider Reset dns_provider to the default value ("nsupdate")
    --foreman-proxy-dns-reverse   DNS reverse zone name (current: UNDEF)
    --reset-foreman-proxy-dns-reverse Reset dns_reverse to the default value (UNDEF)
    --foreman-proxy-dns-server    Address of DNS server to manage (current: "127.0.0.1")
    --reset-foreman-proxy-dns-server Reset dns_server to the default value ("127.0.0.1")
    --foreman-proxy-dns-tsig-keytab  Kerberos keytab for DNS updates using GSS-TSIG authentication (current: "/etc/foreman-proxy/dns.keytab")
    --reset-foreman-proxy-dns-tsig-keytab Reset dns_tsig_keytab to the default value ("/etc/foreman-proxy/dns.keytab")
    --foreman-proxy-dns-tsig-principal  Kerberos principal for DNS updates using GSS-TSIG authentication (current: "foremanproxy/sat-reporting.p1.lab@P1.LAB")
    --reset-foreman-proxy-dns-tsig-principal Reset dns_tsig_principal to the default value ("foremanproxy/sat-reporting.p1.lab@P1.LAB")
    --foreman-proxy-dns-ttl       DNS default TTL override (current: 86400)
    --reset-foreman-proxy-dns-ttl Reset dns_ttl to the default value (86400)
    --foreman-proxy-dns-zone      DNS zone name (current: "p1.lab")
    --reset-foreman-proxy-dns-zone Reset dns_zone to the default value ("p1.lab")
    --foreman-proxy-ensure-packages-version  control extra packages version, it's passed to ensure parameter of package resource (current: "present")
    --reset-foreman-proxy-ensure-packages-version Reset ensure_packages_version to the default value ("present")
    --foreman-proxy-foreman-base-url  Base Foreman URL used for REST interaction (current: "https://sat-reporting.p1.lab")
    --reset-foreman-proxy-foreman-base-url Reset foreman_base_url to the default value ("https://sat-reporting.p1.lab")
    --foreman-proxy-foreman-ssl-ca  SSL CA used to verify connections when accessing the Foreman API.
                                  When not specified, the ssl_ca is used instead. (current: "/etc/foreman-proxy/foreman_ssl_ca.pem")
    --reset-foreman-proxy-foreman-ssl-ca Reset foreman_ssl_ca to the default value (UNDEF)
    --foreman-proxy-foreman-ssl-cert  SSL client certificate used when accessing the Foreman API
                                  When not specified, the ssl_cert is used instead. (current: "/etc/foreman-proxy/foreman_ssl_cert.pem")
    --reset-foreman-proxy-foreman-ssl-cert Reset foreman_ssl_cert to the default value (UNDEF)
    --foreman-proxy-foreman-ssl-key  Corresponding key to a foreman_ssl_cert certificate
                                  When not specified, the ssl_key is used instead. (current: "/etc/foreman-proxy/foreman_ssl_key.pem")
    --reset-foreman-proxy-foreman-ssl-key Reset foreman_ssl_key to the default value (UNDEF)
    --foreman-proxy-freeipa-config  Path to FreeIPA default.conf configuration file (current: "/etc/ipa/default.conf")
    --reset-foreman-proxy-freeipa-config Reset freeipa_config to the default value ("/etc/ipa/default.conf")
    --foreman-proxy-freeipa-remove-dns  Remove DNS entries from FreeIPA when deleting hosts from realm (current: true)
    --reset-foreman-proxy-freeipa-remove-dns Reset freeipa_remove_dns to the default value (true)
    --foreman-proxy-groups        Array of additional groups for the foreman proxy user (current: [])
    --reset-foreman-proxy-groups  Reset groups to the default value ([])
    --foreman-proxy-http          Enable HTTP (current: true)
    --reset-foreman-proxy-http    Reset http to the default value (false)
    --foreman-proxy-http-port     HTTP port to listen on (if http is enabled) (current: 8000)
    --reset-foreman-proxy-http-port Reset http_port to the default value (8000)
    --foreman-proxy-keyfile       DNS server keyfile path (current: "/etc/rndc.key")
    --reset-foreman-proxy-keyfile Reset keyfile to the default value ("/etc/rndc.key")
    --foreman-proxy-libvirt-connection  Connection string of libvirt DNS/DHCP provider (e.g. "qemu:///system") (current: "qemu:///system")
    --reset-foreman-proxy-libvirt-connection Reset libvirt_connection to the default value ("qemu:///system")
    --foreman-proxy-libvirt-network  Network for libvirt DNS/DHCP provider (current: "default")
    --reset-foreman-proxy-libvirt-network Reset libvirt_network to the default value ("default")
    --foreman-proxy-log           Foreman proxy log file, 'STDOUT', 'SYSLOG' or 'JOURNAL' (current: "/var/log/foreman-proxy/proxy.log")
    --reset-foreman-proxy-log     Reset log to the default value ("/var/log/foreman-proxy/proxy.log")
    --foreman-proxy-log-buffer    Log buffer size (current: 2000)
    --reset-foreman-proxy-log-buffer Reset log_buffer to the default value (2000)
    --foreman-proxy-log-buffer-errors  Additional log buffer size for errors (current: 1000)
    --reset-foreman-proxy-log-buffer-errors Reset log_buffer_errors to the default value (1000)
    --foreman-proxy-log-level     Foreman proxy log level (current: "INFO")
    --reset-foreman-proxy-log-level Reset log_level to the default value ("INFO")
    --foreman-proxy-logs          Enable Logs (log buffer) feature (current: true)
    --reset-foreman-proxy-logs    Reset logs to the default value (true)
    --foreman-proxy-logs-listen-on  Logs proxy to listen on https, http, or both (current: "https")
    --reset-foreman-proxy-logs-listen-on Reset logs_listen_on to the default value ("https")
    --foreman-proxy-manage-puppet-group  Whether to ensure the $puppet_group exists.  Also ensures group owner of ssl keys and certs is $puppet_group
                                  Not applicable when ssl is false. (current: false)
    --reset-foreman-proxy-manage-puppet-group Reset manage_puppet_group to the default value (true)
    --foreman-proxy-manage-sudoersd  Whether to manage File['/etc/sudoers.d'] or not.  When reusing this module, this may be
                                  disabled to let a dedicated sudo module manage it instead. (current: true)
    --reset-foreman-proxy-manage-sudoersd Reset manage_sudoersd to the default value (true)
    --foreman-proxy-mcollective-user  The user for puppetrun_provider mcollective (current: "root")
    --reset-foreman-proxy-mcollective-user Reset mcollective_user to the default value ("root")
    --foreman-proxy-oauth-consumer-key  OAuth key to be used for REST interaction (current: "fz29L5H7uChn7fyRhvVyGScdNm9NbFGy")
    --reset-foreman-proxy-oauth-consumer-key Reset oauth_consumer_key to the default value ("fz29L5H7uChn7fyRhvVyGScdNm9NbFGy")
    --foreman-proxy-oauth-consumer-secret  OAuth secret to be used for REST interaction (current: "KZNzqmKx6cou9SCn3ExXfBG8GdhRd5Ak")
    --reset-foreman-proxy-oauth-consumer-secret Reset oauth_consumer_secret to the default value ("KZNzqmKx6cou9SCn3ExXfBG8GdhRd5Ak")
    --foreman-proxy-oauth-effective-user  User to be used for REST interaction (current: "admin")
    --reset-foreman-proxy-oauth-effective-user Reset oauth_effective_user to the default value ("admin")
    --foreman-proxy-plugin-version  foreman plugins version, it's passed to ensure parameter of plugins package resource (current: "installed")
    --reset-foreman-proxy-plugin-version Reset plugin_version to the default value ("installed")
    --foreman-proxy-puppet        Enable Puppet module for environment imports and Puppet runs (current: true)
    --reset-foreman-proxy-puppet  Reset puppet to the default value (true)
    --foreman-proxy-puppet-api-timeout  Timeout in seconds when accessing Puppet environment classes API (current: 30)
    --reset-foreman-proxy-puppet-api-timeout Reset puppet_api_timeout to the default value (30)
    --foreman-proxy-puppet-group  Groups of Foreman proxy user (current: "puppet")
    --reset-foreman-proxy-puppet-group Reset puppet_group to the default value ("puppet")
    --foreman-proxy-puppet-listen-on  Protocols for the Puppet feature to listen on (current: "https")
    --reset-foreman-proxy-puppet-listen-on Reset puppet_listen_on to the default value ("https")
    --foreman-proxy-puppet-ssl-ca  SSL CA used to verify connections when accessing the Puppet master API (current: "/etc/puppetlabs/puppet/ssl/certs/ca.pem")
    --reset-foreman-proxy-puppet-ssl-ca Reset puppet_ssl_ca to the default value ("/etc/puppetlabs/puppet/ssl/certs/ca.pem")
    --foreman-proxy-puppet-ssl-cert  SSL certificate used when accessing the Puppet master API (current: "/etc/puppetlabs/puppet/ssl/certs/sat-reporting.p1.lab.pem")
    --reset-foreman-proxy-puppet-ssl-cert Reset puppet_ssl_cert to the default value ("/etc/puppetlabs/puppet/ssl/certs/sat-reporting.p1.lab.pem")
    --foreman-proxy-puppet-ssl-key  SSL private key used when accessing the Puppet master API (current: "/etc/puppetlabs/puppet/ssl/private_keys/sat-reporting.p1.lab.pem")
    --reset-foreman-proxy-puppet-ssl-key Reset puppet_ssl_key to the default value ("/etc/puppetlabs/puppet/ssl/private_keys/sat-reporting.p1.lab.pem")
    --foreman-proxy-puppet-url    URL of the Puppet master itself for API requests (current: "https://sat-reporting.p1.lab:8140")
    --reset-foreman-proxy-puppet-url Reset puppet_url to the default value ("https://sat-reporting.p1.lab:8140")
    --foreman-proxy-puppet-use-cache  Whether to enable caching of puppet classes (current: UNDEF)
    --reset-foreman-proxy-puppet-use-cache Reset puppet_use_cache to the default value (UNDEF)
    --foreman-proxy-puppet-use-environment-api  Override use of Puppet's API to list environments.  When unset, the proxy will
                                  try to determine this automatically. (current: UNDEF)
    --reset-foreman-proxy-puppet-use-environment-api Reset puppet_use_environment_api to the default value (UNDEF)
    --foreman-proxy-puppet-user   Which user to invoke sudo as to run puppet commands (current: "root")
    --reset-foreman-proxy-puppet-user Reset puppet_user to the default value ("root")
    --foreman-proxy-puppetca      Enable Puppet CA feature (current: true)
    --reset-foreman-proxy-puppetca Reset puppetca to the default value (true)
    --foreman-proxy-puppetca-cmd  Puppet CA command to be allowed in sudoers (current: "/opt/puppetlabs/bin/puppet cert")
    --reset-foreman-proxy-puppetca-cmd Reset puppetca_cmd to the default value ("/opt/puppetlabs/bin/puppet cert")
    --foreman-proxy-puppetca-listen-on  Protocols for the Puppet CA feature to listen on (current: "https")
    --reset-foreman-proxy-puppetca-listen-on Reset puppetca_listen_on to the default value ("https")
    --foreman-proxy-puppetca-tokens-file  Token-Whitelisting only: Location of the tokens.yaml (current: "/var/lib/foreman-proxy/tokens.yml")
    --reset-foreman-proxy-puppetca-tokens-file Reset puppetca_tokens_file to the default value ("/var/lib/foreman-proxy/tokens.yml")
    --foreman-proxy-puppetdir     Puppet var directory (current: "/etc/puppetlabs/puppet")
    --reset-foreman-proxy-puppetdir Reset puppetdir to the default value ("/etc/puppetlabs/puppet")
    --foreman-proxy-puppetrun-cmd  Puppet run/kick command to be allowed in sudoers (current: "/opt/puppetlabs/bin/puppet kick")
    --reset-foreman-proxy-puppetrun-cmd Reset puppetrun_cmd to the default value ("/opt/puppetlabs/bin/puppet kick")
    --foreman-proxy-puppetrun-provider  Provider for running/kicking Puppet agents (current: UNDEF)
    --reset-foreman-proxy-puppetrun-provider Reset puppetrun_provider to the default value (UNDEF)
    --foreman-proxy-puppetssh-command  The command used by puppetrun_provider puppetssh (current: "/opt/puppetlabs/bin/puppet agent --onetime --no-usecacheonfailure")
    --reset-foreman-proxy-puppetssh-command Reset puppetssh_command to the default value ("/opt/puppetlabs/bin/puppet agent --onetime --no-usecacheonfailure")
    --foreman-proxy-puppetssh-keyfile  The keyfile for puppetrun_provider puppetssh commands (current: "/etc/foreman-proxy/id_rsa")
    --reset-foreman-proxy-puppetssh-keyfile Reset puppetssh_keyfile to the default value ("/etc/foreman-proxy/id_rsa")
    --foreman-proxy-puppetssh-sudo  Whether to use sudo before commands when using puppetrun_provider puppetssh (current: false)
    --reset-foreman-proxy-puppetssh-sudo Reset puppetssh_sudo to the default value (false)
    --foreman-proxy-puppetssh-user  The user for puppetrun_provider puppetssh (current: "root")
    --reset-foreman-proxy-puppetssh-user Reset puppetssh_user to the default value ("root")
    --foreman-proxy-puppetssh-wait  Whether to wait for completion of the Puppet command over SSH and return
                                  the exit code (current: false)
    --reset-foreman-proxy-puppetssh-wait Reset puppetssh_wait to the default value (false)
    --foreman-proxy-realm         Enable realm management feature (current: true)
    --reset-foreman-proxy-realm   Reset realm to the default value (false)
    --foreman-proxy-realm-keytab  Kerberos keytab path to authenticate realm updates (current: "/etc/foreman-proxy/freeipa.keytab")
    --reset-foreman-proxy-realm-keytab Reset realm_keytab to the default value ("/etc/foreman-proxy/freeipa.keytab")
    --foreman-proxy-realm-listen-on  Realm proxy to listen on https, http, or both (current: "https")
    --reset-foreman-proxy-realm-listen-on Reset realm_listen_on to the default value ("https")
    --foreman-proxy-realm-principal  Kerberos principal for realm updates (current: "realm-capsule@P1.LAB")
    --reset-foreman-proxy-realm-principal Reset realm_principal to the default value ("realm-proxy@EXAMPLE.COM")
    --foreman-proxy-realm-provider  Realm management provider (current: "freeipa")
    --reset-foreman-proxy-realm-provider Reset realm_provider to the default value ("freeipa")
    --foreman-proxy-register-in-foreman  Register proxy back in Foreman (current: true)
    --reset-foreman-proxy-register-in-foreman Reset register_in_foreman to the default value (true)
    --foreman-proxy-registered-name  Proxy name which is registered in Foreman (current: "sat-reporting.p1.lab")
    --reset-foreman-proxy-registered-name Reset registered_name to the default value ("sat-reporting.p1.lab")
    --foreman-proxy-registered-proxy-url  Proxy URL which is registered in Foreman (current: UNDEF)
    --reset-foreman-proxy-registered-proxy-url Reset registered_proxy_url to the default value (UNDEF)
    --foreman-proxy-salt-puppetrun-cmd  Salt command to trigger Puppet run (current: "puppet.run")
    --reset-foreman-proxy-salt-puppetrun-cmd Reset salt_puppetrun_cmd to the default value ("puppet.run")
    --foreman-proxy-ssl           Enable SSL, ensure feature is added with "https://" protocol if true (current: true)
    --reset-foreman-proxy-ssl     Reset ssl to the default value (true)
    --foreman-proxy-ssl-ca        SSL CA to validate the client certificates used to access the proxy (current: "/etc/foreman-proxy/ssl_ca.pem")
    --reset-foreman-proxy-ssl-ca  Reset ssl_ca to the default value ("/etc/puppetlabs/puppet/ssl/certs/ca.pem")
    --foreman-proxy-ssl-cert      SSL certificate to be used to run the foreman proxy via https. (current: "/etc/foreman-proxy/ssl_cert.pem")
    --reset-foreman-proxy-ssl-cert Reset ssl_cert to the default value ("/etc/puppetlabs/puppet/ssl/certs/sat-reporting.p1.lab.pem")
    --foreman-proxy-ssl-disabled-ciphers  List of OpenSSL cipher suite names that will be disabled from the default (current: [])
    --reset-foreman-proxy-ssl-disabled-ciphers Reset ssl_disabled_ciphers to the default value ([])
    --foreman-proxy-ssl-key       Corresponding key to a ssl_cert certificate (current: "/etc/foreman-proxy/ssl_key.pem")
    --reset-foreman-proxy-ssl-key Reset ssl_key to the default value ("/etc/puppetlabs/puppet/ssl/private_keys/sat-reporting.p1.lab.pem")
    --foreman-proxy-ssl-port      HTTPS port to listen on (if ssl is enabled) (current: 9090)
    --reset-foreman-proxy-ssl-port Reset ssl_port to the default value (8443)
    --foreman-proxy-ssldir        Puppet CA SSL directory (current: "/etc/puppetlabs/puppet/ssl")
    --reset-foreman-proxy-ssldir  Reset ssldir to the default value ("/etc/puppetlabs/puppet/ssl")
    --foreman-proxy-template-url  URL a client should use for provisioning templates (current: "http://sat-reporting.p1.lab:8000")
    --reset-foreman-proxy-template-url Reset template_url to the default value ("http://sat-reporting.p1.lab:8000")
    --foreman-proxy-templates     Enable templates feature (current: true)
    --reset-foreman-proxy-templates Reset templates to the default value (false)
    --foreman-proxy-templates-listen-on  Templates proxy to listen on https, http, or both (current: "both")
    --reset-foreman-proxy-templates-listen-on Reset templates_listen_on to the default value ("both")
    --foreman-proxy-tftp          Enable TFTP feature (current: true)
    --reset-foreman-proxy-tftp    Reset tftp to the default value (true)
    --foreman-proxy-tftp-dirs     Directories to be create in $tftp_root (current: ["/var/lib/tftpboot/pxelinux.cfg", "/var/lib/tftpboot/grub", "/var/lib/tftpboot/grub2", "/var/lib/tftpboot/boot", "/var/lib/tftpboot/ztp.cfg", "/var/lib/tftpboot/poap.cfg"])
    --reset-foreman-proxy-tftp-dirs Reset tftp_dirs to the default value (["/var/lib/tftpboot/pxelinux.cfg", "/var/lib/tftpboot/grub", "/var/lib/tftpboot/grub2", "/var/lib/tftpboot/boot", "/var/lib/tftpboot/ztp.cfg", "/var/lib/tftpboot/poap.cfg"])
    --foreman-proxy-tftp-listen-on  TFTP proxy to listen on https, http, or both (current: "https")
    --reset-foreman-proxy-tftp-listen-on Reset tftp_listen_on to the default value ("https")
    --foreman-proxy-tftp-manage-wget  If enabled will install the wget package (current: true)
    --reset-foreman-proxy-tftp-manage-wget Reset tftp_manage_wget to the default value (true)
    --foreman-proxy-tftp-managed  The TFTP daemon is managed by this module. (current: true)
    --reset-foreman-proxy-tftp-managed Reset tftp_managed to the default value (true)
    --foreman-proxy-tftp-replace-grub2-cfg  Determines if grub2.cfg will be replaced (current: false)
    --reset-foreman-proxy-tftp-replace-grub2-cfg Reset tftp_replace_grub2_cfg to the default value (false)
    --foreman-proxy-tftp-root     TFTP root directory (current: "/var/lib/tftpboot")
    --reset-foreman-proxy-tftp-root Reset tftp_root to the default value ("/var/lib/tftpboot")
    --foreman-proxy-tftp-servername  Defines the TFTP Servername to use, overrides the name in the subnet declaration (current: UNDEF)
    --reset-foreman-proxy-tftp-servername Reset tftp_servername to the default value (UNDEF)
    --foreman-proxy-tftp-syslinux-filenames  Syslinux files to install on TFTP (full paths) (current: ["/usr/share/syslinux/chain.c32", "/usr/share/syslinux/mboot.c32", "/usr/share/syslinux/menu.c32", "/usr/share/syslinux/memdisk", "/usr/share/syslinux/pxelinux.0"])
    --reset-foreman-proxy-tftp-syslinux-filenames Reset tftp_syslinux_filenames to the default value (["/usr/share/syslinux/chain.c32", "/usr/share/syslinux/mboot.c32", "/usr/share/syslinux/menu.c32", "/usr/share/syslinux/memdisk", "/usr/share/syslinux/pxelinux.0"])
    --foreman-proxy-tls-disabled-versions  List of TLS versions that will be disabled from the default (current: [])
    --reset-foreman-proxy-tls-disabled-versions Reset tls_disabled_versions to the default value ([])
    --foreman-proxy-trusted-hosts  Only hosts listed will be permitted, empty array to disable authorization (current: ["sat-reporting.p1.lab"])
    --reset-foreman-proxy-trusted-hosts Reset trusted_hosts to the default value (["sat-reporting.p1.lab"])
    --foreman-proxy-use-sudoers   Add contents to /etc/sudoers (true). This is ignored if $use_sudoersd is true. (current: true)
    --reset-foreman-proxy-use-sudoers Reset use_sudoers to the default value (true)
    --foreman-proxy-use-sudoersd  Add a file to /etc/sudoers.d (true). (current: true)
    --reset-foreman-proxy-use-sudoersd Reset use_sudoersd to the default value (true)
    --foreman-proxy-user          User under which foreman proxy will run (current: "foreman-proxy")
    --reset-foreman-proxy-user    Reset user to the default value ("foreman-proxy")
    --foreman-proxy-version       foreman package version, it's passed to ensure parameter of package resource
                                  can be set to specific version number, 'latest', 'present' etc. (current: "present")
    --reset-foreman-proxy-version Reset version to the default value ("present")

== Advanced:
    --foreman-proxy-dhcp-failover-address  Address for DHCP to listen for connections from its peer (current: "192.168.123.123")
    --reset-foreman-proxy-dhcp-failover-address Reset dhcp_failover_address to the default value ("192.168.123.123")
    --foreman-proxy-dhcp-failover-port  Port for DHCP to listen & communicate with it DHCP peer (current: 519)
    --reset-foreman-proxy-dhcp-failover-port Reset dhcp_failover_port to the default value (519)
    --foreman-proxy-dhcp-load-balance  Cutoff after which load balancing is disabled (current: 3)
    --reset-foreman-proxy-dhcp-load-balance Reset dhcp_load_balance to the default value (3)
    --foreman-proxy-dhcp-load-split  Split leases between Primary and Secondary. 255 means Primary is chiefly responsible. 0 means Secondary is chiefly responsible. (current: 255)
    --reset-foreman-proxy-dhcp-load-split Reset dhcp_load_split to the default value (255)
    --foreman-proxy-dhcp-manage-acls  Whether to manage DHCP directory ACLs. This allows the Foreman Proxy user to access even if the directory mode is 0750. (current: true)
    --reset-foreman-proxy-dhcp-manage-acls Reset dhcp_manage_acls to the default value (true)
    --foreman-proxy-dhcp-max-response-delay  Seconds after it will assume that connection has failed to DHCP peer (current: 30)
    --reset-foreman-proxy-dhcp-max-response-delay Reset dhcp_max_response_delay to the default value (30)
    --foreman-proxy-dhcp-max-unacked-updates  How many BNDUPD messages DHCP can send before it receives a BNDACK from the local system (current: 10)
    --reset-foreman-proxy-dhcp-max-unacked-updates Reset dhcp_max_unacked_updates to the default value (10)
    --foreman-proxy-dhcp-mclt     Seconds for which a lease may be renewed by either failover peer without contacting the other (current: 300)
    --reset-foreman-proxy-dhcp-mclt Reset dhcp_mclt to the default value (300)
    --foreman-proxy-gpgcheck      Turn on/off gpg check in repo files (effective only on RedHat family systems) (current: true)
    --reset-foreman-proxy-gpgcheck Reset gpgcheck to the default value (true)
    --foreman-proxy-httpboot      Enable HTTPBoot feature (current: UNDEF)
    --reset-foreman-proxy-httpboot Reset httpboot to the default value (UNDEF)
    --foreman-proxy-httpboot-listen-on  HTTPBoot proxy to listen on https, http, or both (current: "both")
    --reset-foreman-proxy-httpboot-listen-on Reset httpboot_listen_on to the default value ("both")
    --foreman-proxy-puppetca-certificate  Token-whitelisting only: Certificate to use when encrypting tokens (undef to use SSL certificate) (current: UNDEF)
    --reset-foreman-proxy-puppetca-certificate Reset puppetca_certificate to the default value (UNDEF)
    --foreman-proxy-puppetca-provider  Whether to use puppetca_hostname_whitelisting or puppetca_token_whitelisting (current: "puppetca_hostname_whitelisting")
    --reset-foreman-proxy-puppetca-provider Reset puppetca_provider to the default value ("puppetca_hostname_whitelisting")
    --foreman-proxy-puppetca-sign-all  Token-whitelisting only: Whether to sign all CSRs without checking their token (current: false)
    --reset-foreman-proxy-puppetca-sign-all Reset puppetca_sign_all to the default value (false)
    --foreman-proxy-puppetca-split-configs  Whether to split the puppetca configs. This is only supported on 1.22+.
                                  Set to false for older versions. (current: true)
    --reset-foreman-proxy-puppetca-split-configs Reset puppetca_split_configs to the default value (true)
    --foreman-proxy-puppetca-token-ttl  Token-whitelisting only: Fallback time (in minutes) after which tokens will expire (current: 360)
    --reset-foreman-proxy-puppetca-token-ttl Reset puppetca_token_ttl to the default value (360)
    --foreman-proxy-repo          Which repository to use. Can be a specific version or nightly. Will not configure anything when undefined. (current: UNDEF)
    --reset-foreman-proxy-repo    Reset repo to the default value (UNDEF)

= Module foreman_proxy_content:

== Basic:
    --foreman-proxy-content-enable-deb  Enable debian content plugin (current: false)
    --reset-foreman-proxy-content-enable-deb Reset enable_deb to the default value (true)
    --foreman-proxy-content-enable-docker  Enable docker content plugin (current: true)
    --reset-foreman-proxy-content-enable-docker Reset enable_docker to the default value (true)
    --foreman-proxy-content-enable-file  Enable file content plugin (current: true)
    --reset-foreman-proxy-content-enable-file Reset enable_file to the default value (true)
    --foreman-proxy-content-enable-ostree  Enable ostree content plugin, this requires an ostree install (current: false)
    --reset-foreman-proxy-content-enable-ostree Reset enable_ostree to the default value (false)
    --foreman-proxy-content-enable-puppet  Enable puppet content plugin (current: true)
    --reset-foreman-proxy-content-enable-puppet Reset enable_puppet to the default value (true)
    --foreman-proxy-content-enable-yum  Enable rpm content plugin, including syncing of yum content (current: true)
    --reset-foreman-proxy-content-enable-yum Reset enable_yum to the default value (true)
    --foreman-proxy-content-parent-fqdn  FQDN of the parent node. (current: "sat-reporting.p1.lab")
    --reset-foreman-proxy-content-parent-fqdn Reset parent_fqdn to the default value ("sat-reporting.p1.lab")

== Advanced:
    --foreman-proxy-content-manage-broker  Manage the qpid message broker when applicable (current: true)
    --reset-foreman-proxy-content-manage-broker Reset manage_broker to the default value (true)
    --foreman-proxy-content-pulp-admin-password  Password for the Pulp admin user. It should be left blank so that a random password is generated (current: "4JfxDCTm4stck66P8iQRaA4yBxqY7v7y")
    --reset-foreman-proxy-content-pulp-admin-password Reset pulp_admin_password to the default value ("4JfxDCTm4stck66P8iQRaA4yBxqY7v7y")
    --foreman-proxy-content-pulp-ca-cert  Absolute path to PEM encoded CA certificate file, used by Pulp to validate the identity of the broker using SSL. (current: UNDEF)
    --reset-foreman-proxy-content-pulp-ca-cert Reset pulp_ca_cert to the default value (UNDEF)
    --foreman-proxy-content-pulp-master  Whether the foreman_proxy_content should be identified as a pulp master server (current: true)
    --reset-foreman-proxy-content-pulp-master Reset pulp_master to the default value (false)
    --foreman-proxy-content-pulp-max-speed  The maximum download speed per second for a Pulp task, such as a sync. (e.g. "4 Kb" (Uses SI KB), 4MB, or 1GB" ) (current: UNDEF)
    --reset-foreman-proxy-content-pulp-max-speed Reset pulp_max_speed to the default value (UNDEF)
    --foreman-proxy-content-pulp-num-workers  Number of Pulp workers to use. (current: UNDEF)
    --reset-foreman-proxy-content-pulp-num-workers Reset pulp_num_workers to the default value (UNDEF)
    --foreman-proxy-content-pulp-proxy-password  Proxy password for authentication (current: UNDEF)
    --reset-foreman-proxy-content-pulp-proxy-password Reset pulp_proxy_password to the default value (UNDEF)
    --foreman-proxy-content-pulp-proxy-port  Port of the http proxy server (current: UNDEF)
    --reset-foreman-proxy-content-pulp-proxy-port Reset pulp_proxy_port to the default value (UNDEF)
    --foreman-proxy-content-pulp-proxy-url  URL of the http proxy server (current: UNDEF)
    --reset-foreman-proxy-content-pulp-proxy-url Reset pulp_proxy_url to the default value (UNDEF)
    --foreman-proxy-content-pulp-proxy-username  Proxy username for authentication (current: UNDEF)
    --reset-foreman-proxy-content-pulp-proxy-username Reset pulp_proxy_username to the default value (UNDEF)
    --foreman-proxy-content-pulp-puppet-wsgi-processes  Number of WSGI processes to spawn for the puppet webapp (current: 1)
    --reset-foreman-proxy-content-pulp-puppet-wsgi-processes Reset pulp_puppet_wsgi_processes to the default value (1)
    --foreman-proxy-content-pulp-worker-timeout  The amount of time (in seconds) before considering a worker as missing. If Pulp's
                                  mongo database has slow I/O, then setting a higher number may resolve issues where workers are
                                  going missing incorrectly. (current: 60)
    --reset-foreman-proxy-content-pulp-worker-timeout Reset pulp_worker_timeout to the default value (60)
    --foreman-proxy-content-puppet  Enable puppet (current: true)
    --reset-foreman-proxy-content-puppet Reset puppet to the default value (true)
    --foreman-proxy-content-qpid-router  Configure qpid dispatch router (current: true)
    --reset-foreman-proxy-content-qpid-router Reset qpid_router to the default value (true)
    --foreman-proxy-content-qpid-router-agent-addr  Listener address for goferd agents (current: UNDEF)
    --reset-foreman-proxy-content-qpid-router-agent-addr Reset qpid_router_agent_addr to the default value (UNDEF)
    --foreman-proxy-content-qpid-router-agent-port  Listener port for goferd agents (current: 5647)
    --reset-foreman-proxy-content-qpid-router-agent-port Reset qpid_router_agent_port to the default value (5647)
    --foreman-proxy-content-qpid-router-broker-addr  Address of qpidd broker to connect to (current: "localhost")
    --reset-foreman-proxy-content-qpid-router-broker-addr Reset qpid_router_broker_addr to the default value ("localhost")
    --foreman-proxy-content-qpid-router-broker-port  Port of qpidd broker to connect to (current: 5671)
    --reset-foreman-proxy-content-qpid-router-broker-port Reset qpid_router_broker_port to the default value (5671)
    --foreman-proxy-content-qpid-router-hub-addr  Address for dispatch router hub (current: UNDEF)
    --reset-foreman-proxy-content-qpid-router-hub-addr Reset qpid_router_hub_addr to the default value (UNDEF)
    --foreman-proxy-content-qpid-router-hub-port  Port for dispatch router hub (current: 5646)
    --reset-foreman-proxy-content-qpid-router-hub-port Reset qpid_router_hub_port to the default value (5646)
    --foreman-proxy-content-qpid-router-logging  Whether to log to file or syslog. (current: "syslog")
    --reset-foreman-proxy-content-qpid-router-logging Reset qpid_router_logging to the default value ("syslog")
    --foreman-proxy-content-qpid-router-logging-level  Logging level of dispatch router (e.g. info+ or debug+) (current: "info+")
    --reset-foreman-proxy-content-qpid-router-logging-level Reset qpid_router_logging_level to the default value ("info+")
    --foreman-proxy-content-qpid-router-logging-path  Directory for dispatch router logs, if using file logging (current: "/var/log/qdrouterd")
    --reset-foreman-proxy-content-qpid-router-logging-path Reset qpid_router_logging_path to the default value ("/var/log/qdrouterd")
    --foreman-proxy-content-qpid-router-sasl-mech  SASL mechanism to be used from router to broker (current: "PLAIN")
    --reset-foreman-proxy-content-qpid-router-sasl-mech Reset qpid_router_sasl_mech to the default value ("PLAIN")
    --foreman-proxy-content-qpid-router-sasl-password  SASL password to be used from router to broker (current: "2KWi3Pe3NAYnMP89")
    --reset-foreman-proxy-content-qpid-router-sasl-password Reset qpid_router_sasl_password to the default value ("2KWi3Pe3NAYnMP89")
    --foreman-proxy-content-qpid-router-sasl-username  SASL username to be used from router to broker (current: "katello_agent")
    --reset-foreman-proxy-content-qpid-router-sasl-username Reset qpid_router_sasl_username to the default value ("katello_agent")
    --foreman-proxy-content-qpid-router-ssl-ciphers  SSL Ciphers to support in dispatch router (current: UNDEF)
    --reset-foreman-proxy-content-qpid-router-ssl-ciphers Reset qpid_router_ssl_ciphers to the default value (UNDEF)
    --foreman-proxy-content-qpid-router-ssl-protocols  Protocols to support in dispatch router (e.g. TLSv1.2, etc) (current: UNDEF)
    --reset-foreman-proxy-content-qpid-router-ssl-protocols Reset qpid_router_ssl_protocols to the default value (UNDEF)
    --foreman-proxy-content-reverse-proxy  Add reverse proxy to the parent (current: false)
    --reset-foreman-proxy-content-reverse-proxy Reset reverse_proxy to the default value (false)
    --foreman-proxy-content-reverse-proxy-port  Reverse proxy listening port (current: 8443)
    --reset-foreman-proxy-content-reverse-proxy-port Reset reverse_proxy_port to the default value (8443)
    --foreman-proxy-content-rhsm-hostname  The hostname that the RHSM API is rooted at (current: UNDEF)
    --reset-foreman-proxy-content-rhsm-hostname Reset rhsm_hostname to the default value (UNDEF)
    --foreman-proxy-content-rhsm-url  The URL path that the RHSM API is rooted at (current: "/rhsm")
    --reset-foreman-proxy-content-rhsm-url Reset rhsm_url to the default value ("/rhsm")
    --foreman-proxy-content-ssl-protocol  Apache SSLProtocol configuration to use (current: UNDEF)
    --reset-foreman-proxy-content-ssl-protocol Reset ssl_protocol to the default value (UNDEF)


= Module foreman_proxy_plugin_ansible:
    --foreman-proxy-plugin-ansible-ansible-dir  Ansible directory to search for available roles (current: "/usr/share/foreman-proxy")
    --reset-foreman-proxy-plugin-ansible-ansible-dir Reset ansible_dir to the default value ("/usr/share/foreman-proxy")
    --foreman-proxy-plugin-ansible-enabled  Enables/disables the ansible plugin (current: true)
    --reset-foreman-proxy-plugin-ansible-enabled Reset enabled to the default value (true)
    --foreman-proxy-plugin-ansible-host-key-checking  Whether to ignore errors when a host is reinstalled
                                  so it has a different key in ~/.ssh/known_hosts
                                  If a host is not initially in 'known_hosts' setting
                                  this to True will result in prompting for confirmation
                                  of the key, which is not possible from non-interactive
                                  environments like Foreman Remote Execution or cron (current: false)
    --reset-foreman-proxy-plugin-ansible-host-key-checking Reset host_key_checking to the default value (false)
    --foreman-proxy-plugin-ansible-listen-on  Proxy feature listens on https, http, or both (current: "https")
    --reset-foreman-proxy-plugin-ansible-listen-on Reset listen_on to the default value ("https")
    --foreman-proxy-plugin-ansible-roles-path  Paths where we look for ansible roles. (current: ["/etc/ansible/roles", "/usr/share/ansible/roles"])
    --reset-foreman-proxy-plugin-ansible-roles-path Reset roles_path to the default value (["/etc/ansible/roles", "/usr/share/ansible/roles"])
    --foreman-proxy-plugin-ansible-ssh-args  The ssh_args parameter in ansible.cfg under [ssh_connection] (current: "-o ProxyCommand=none")
    --reset-foreman-proxy-plugin-ansible-ssh-args Reset ssh_args to the default value ("-o ProxyCommand=none")
    --foreman-proxy-plugin-ansible-stdout-callback  Ansible's stdout_callback setting (current: "yaml")
    --reset-foreman-proxy-plugin-ansible-stdout-callback Reset stdout_callback to the default value ("yaml")
    --foreman-proxy-plugin-ansible-working-dir  A directory where the playbooks will be generated.
                                  A tmp directory will be created when left blank (current: "/tmp")
    --reset-foreman-proxy-plugin-ansible-working-dir Reset working_dir to the default value ("/tmp")


= Module foreman_proxy_plugin_dhcp_infoblox:
    --foreman-proxy-plugin-dhcp-infoblox-dns-view  The DNS view to use (current: "default")
    --reset-foreman-proxy-plugin-dhcp-infoblox-dns-view Reset dns_view to the default value ("default")
    --foreman-proxy-plugin-dhcp-infoblox-network-view  The network view to use (current: "default")
    --reset-foreman-proxy-plugin-dhcp-infoblox-network-view Reset network_view to the default value ("default")
    --foreman-proxy-plugin-dhcp-infoblox-password  The password of the Infoblox user (current: UNDEF)
    --reset-foreman-proxy-plugin-dhcp-infoblox-password Reset password to the default value (UNDEF)
    --foreman-proxy-plugin-dhcp-infoblox-record-type  Record type to manage (current: "fixedaddress")
    --reset-foreman-proxy-plugin-dhcp-infoblox-record-type Reset record_type to the default value ("fixedaddress")
    --foreman-proxy-plugin-dhcp-infoblox-username  The username of the Infoblox user (current: UNDEF)
    --reset-foreman-proxy-plugin-dhcp-infoblox-username Reset username to the default value (UNDEF)


= Module foreman_proxy_plugin_dhcp_remote_isc:
    --foreman-proxy-plugin-dhcp-remote-isc-dhcp-config  DHCP config file path (current: "/etc/dhcp/dhcpd.conf")
    --reset-foreman-proxy-plugin-dhcp-remote-isc-dhcp-config Reset dhcp_config to the default value ("/etc/dhcp/dhcpd.conf")
    --foreman-proxy-plugin-dhcp-remote-isc-dhcp-leases  DHCP leases file (current: "/var/lib/dhcpd/dhcpd.leases")
    --reset-foreman-proxy-plugin-dhcp-remote-isc-dhcp-leases Reset dhcp_leases to the default value ("/var/lib/dhcpd/dhcpd.leases")
    --foreman-proxy-plugin-dhcp-remote-isc-key-name  DHCP key name (current: UNDEF)
    --reset-foreman-proxy-plugin-dhcp-remote-isc-key-name Reset key_name to the default value (UNDEF)
    --foreman-proxy-plugin-dhcp-remote-isc-key-secret  DHCP password (current: UNDEF)
    --reset-foreman-proxy-plugin-dhcp-remote-isc-key-secret Reset key_secret to the default value (UNDEF)
    --foreman-proxy-plugin-dhcp-remote-isc-omapi-port  DHCP server OMAPI port (current: 7911)
    --reset-foreman-proxy-plugin-dhcp-remote-isc-omapi-port Reset omapi_port to the default value (7911)


= Module foreman_proxy_plugin_discovery:
    --foreman-proxy-plugin-discovery-image-name  tarball with images (current: "fdi-image-latest.tar")
    --reset-foreman-proxy-plugin-discovery-image-name Reset image_name to the default value ("fdi-image-latest.tar")
    --foreman-proxy-plugin-discovery-install-images  should the discovery image be downloaded and extracted (current: false)
    --reset-foreman-proxy-plugin-discovery-install-images Reset install_images to the default value (false)
    --foreman-proxy-plugin-discovery-source-url  source URL to download from (current: "http://downloads.theforeman.org/discovery/releases/latest/")
    --reset-foreman-proxy-plugin-discovery-source-url Reset source_url to the default value ("http://downloads.theforeman.org/discovery/releases/latest/")
    --foreman-proxy-plugin-discovery-tftp-root  tftp root to install image into (current: "/var/lib/tftpboot")
    --reset-foreman-proxy-plugin-discovery-tftp-root Reset tftp_root to the default value ("/var/lib/tftpboot")


= Module foreman_proxy_plugin_dns_infoblox:
    --foreman-proxy-plugin-dns-infoblox-dns-server  The address of the Infoblox server (current: UNDEF)
    --reset-foreman-proxy-plugin-dns-infoblox-dns-server Reset dns_server to the default value (UNDEF)
    --foreman-proxy-plugin-dns-infoblox-dns-view  The Infoblox DNS View (current: "default")
    --reset-foreman-proxy-plugin-dns-infoblox-dns-view Reset dns_view to the default value ("default")
    --foreman-proxy-plugin-dns-infoblox-password  The password of the Infoblox user (current: UNDEF)
    --reset-foreman-proxy-plugin-dns-infoblox-password Reset password to the default value (UNDEF)
    --foreman-proxy-plugin-dns-infoblox-username  The username of the Infoblox user (current: UNDEF)
    --reset-foreman-proxy-plugin-dns-infoblox-username Reset username to the default value (UNDEF)

= Module foreman_proxy_plugin_openscap:

== Basic:
    --foreman-proxy-plugin-openscap-contentdir  Directory where OpenSCAP content XML are stored
                                  So we will not request the XML from Foreman each time (current: "/var/lib/foreman-proxy/openscap/content")
    --reset-foreman-proxy-plugin-openscap-contentdir Reset contentdir to the default value ("/var/lib/foreman-proxy/openscap/content")
    --foreman-proxy-plugin-openscap-failed-dir  Directory where OpenSCAP report XML are stored
                                  In case sending to Foreman succeeded, yet failed to save to reportsdir (current: "/var/lib/foreman-proxy/openscap/failed")
    --reset-foreman-proxy-plugin-openscap-failed-dir Reset failed_dir to the default value ("/var/lib/foreman-proxy/openscap/failed")
    --foreman-proxy-plugin-openscap-openscap-send-log-file  Log file for the forwarding script (current: "/var/log/foreman-proxy/openscap-send.log")
    --reset-foreman-proxy-plugin-openscap-openscap-send-log-file Reset openscap_send_log_file to the default value ("/var/log/foreman-proxy/openscap-send.log")
    --foreman-proxy-plugin-openscap-proxy-name  Proxy name to send to Foreman with parsed report
                                  Foreman matches it against names of registered proxies to find the report source (current: UNDEF)
    --reset-foreman-proxy-plugin-openscap-proxy-name Reset proxy_name to the default value (UNDEF)
    --foreman-proxy-plugin-openscap-reportsdir  Directory where OpenSCAP report XML are stored
                                  So Foreman can request arf xml reports (current: "/var/lib/foreman-proxy/openscap/reports")
    --reset-foreman-proxy-plugin-openscap-reportsdir Reset reportsdir to the default value ("/var/lib/foreman-proxy/openscap/reports")
    --foreman-proxy-plugin-openscap-spooldir  Directory where OpenSCAP audits are stored
                                  before they are forwarded to Foreman (current: "/var/spool/foreman-proxy/openscap")
    --reset-foreman-proxy-plugin-openscap-spooldir Reset spooldir to the default value ("/var/spool/foreman-proxy/openscap")
    --foreman-proxy-plugin-openscap-timeout  Timeout for sending ARF reports to foreman (current: 60)
    --reset-foreman-proxy-plugin-openscap-timeout Reset timeout to the default value (60)

== Advanced:
    --foreman-proxy-plugin-openscap-enabled  enables/disables the openscap plugin (current: true)
    --reset-foreman-proxy-plugin-openscap-enabled Reset enabled to the default value (true)
    --foreman-proxy-plugin-openscap-listen-on  Proxy feature listens on http, https, or both (current: "https")
    --reset-foreman-proxy-plugin-openscap-listen-on Reset listen_on to the default value ("https")
    --foreman-proxy-plugin-openscap-version  plugin package version, it's passed to ensure parameter of package resource
                                  can be set to specific version number, 'latest', 'present' etc. (current: UNDEF)
    --reset-foreman-proxy-plugin-openscap-version Reset version to the default value (UNDEF)


= Module foreman_proxy_plugin_pulp:
    --foreman-proxy-plugin-pulp-enabled  enables/disables the pulp plugin (current: true)
    --reset-foreman-proxy-plugin-pulp-enabled Reset enabled to the default value (true)
    --foreman-proxy-plugin-pulp-group  group owner of the configuration file (current: UNDEF)
    --reset-foreman-proxy-plugin-pulp-group Reset group to the default value (UNDEF)
    --foreman-proxy-plugin-pulp-listen-on  proxy feature listens on http, https, or both (current: "https")
    --reset-foreman-proxy-plugin-pulp-listen-on Reset listen_on to the default value ("https")
    --foreman-proxy-plugin-pulp-mongodb-dir  directory for Mongo DB (current: "/var/lib/mongodb")
    --reset-foreman-proxy-plugin-pulp-mongodb-dir Reset mongodb_dir to the default value ("/var/lib/mongodb")
    --foreman-proxy-plugin-pulp-pulp3-enabled  enables/disables the pulp3 plugin (current: false)
    --reset-foreman-proxy-plugin-pulp-pulp3-enabled Reset pulp3_enabled to the default value (false)
    --foreman-proxy-plugin-pulp-pulp3-mirror  Whether this pulp3 plugin acts as a mirror or another pulp node. A pulp3 mirror is the pulp3 equivalent of a pulpnode. (current: false)
    --reset-foreman-proxy-plugin-pulp-pulp3-mirror Reset pulp3_mirror to the default value (false)
    --foreman-proxy-plugin-pulp-pulp-content-dir  directory for pulp content (current: "/var/lib/pulp/content")
    --reset-foreman-proxy-plugin-pulp-pulp-content-dir Reset pulp_content_dir to the default value ("/var/lib/pulp/content")
    --foreman-proxy-plugin-pulp-pulp-dir  directory for pulp (current: "/var/lib/pulp")
    --reset-foreman-proxy-plugin-pulp-pulp-dir Reset pulp_dir to the default value ("/var/lib/pulp")
    --foreman-proxy-plugin-pulp-pulp-url  pulp url to use (current: "https://sat-reporting.p1.lab/pulp")
    --reset-foreman-proxy-plugin-pulp-pulp-url Reset pulp_url to the default value ("https://sat-reporting.p1.lab/pulp")
    --foreman-proxy-plugin-pulp-pulpnode-enabled  enables/disables the pulpnode plugin (current: false)
    --reset-foreman-proxy-plugin-pulp-pulpnode-enabled Reset pulpnode_enabled to the default value (false)
    --foreman-proxy-plugin-pulp-puppet-content-dir  directory for puppet content (current: "/etc/puppetlabs/code/environments")
    --reset-foreman-proxy-plugin-pulp-puppet-content-dir Reset puppet_content_dir to the default value ("/etc/puppetlabs/code/environments")
    --foreman-proxy-plugin-pulp-version  plugin package version, it's passed to ensure parameter of package resource
                                  can be set to specific version number, 'latest', 'present' etc. (current: UNDEF)
    --reset-foreman-proxy-plugin-pulp-version Reset version to the default value (UNDEF)

= Module foreman_proxy_plugin_remote_execution_ssh:

== Advanced:
    --foreman-proxy-plugin-remote-execution-ssh-async-ssh  Whether to run remote execution jobs asynchronously. (current: false)
    --reset-foreman-proxy-plugin-remote-execution-ssh-async-ssh Reset async_ssh to the default value (false)
    --foreman-proxy-plugin-remote-execution-ssh-enabled  Enables/disables the plugin (current: true)
    --reset-foreman-proxy-plugin-remote-execution-ssh-enabled Reset enabled to the default value (true)
    --foreman-proxy-plugin-remote-execution-ssh-listen-on  Proxy feature listens on https, http, or both (current: "https")
    --reset-foreman-proxy-plugin-remote-execution-ssh-listen-on Reset listen_on to the default value ("https")

== Basic:
    --foreman-proxy-plugin-remote-execution-ssh-generate-keys  Automatically generate SSH keys (current: true)
    --reset-foreman-proxy-plugin-remote-execution-ssh-generate-keys Reset generate_keys to the default value (true)
    --foreman-proxy-plugin-remote-execution-ssh-install-key  Automatically install generated SSH key to root authorized keys
                                  which allows managing this host through Remote Execution (current: false)
    --reset-foreman-proxy-plugin-remote-execution-ssh-install-key Reset install_key to the default value (false)
    --foreman-proxy-plugin-remote-execution-ssh-local-working-dir  Local working directory on the smart proxy (current: "/var/tmp")
    --reset-foreman-proxy-plugin-remote-execution-ssh-local-working-dir Reset local_working_dir to the default value ("/var/tmp")
    --foreman-proxy-plugin-remote-execution-ssh-remote-working-dir  Remote working directory on clients (current: "/var/tmp")
    --reset-foreman-proxy-plugin-remote-execution-ssh-remote-working-dir Reset remote_working_dir to the default value ("/var/tmp")
    --foreman-proxy-plugin-remote-execution-ssh-ssh-identity-dir  Directory where SSH keys are stored (current: "/var/lib/foreman-proxy/ssh")
    --reset-foreman-proxy-plugin-remote-execution-ssh-ssh-identity-dir Reset ssh_identity_dir to the default value ("/var/lib/foreman-proxy/ssh")
    --foreman-proxy-plugin-remote-execution-ssh-ssh-identity-file  Provide an alternative name for the SSH keys (current: "id_rsa_foreman_proxy")
    --reset-foreman-proxy-plugin-remote-execution-ssh-ssh-identity-file Reset ssh_identity_file to the default value ("id_rsa_foreman_proxy")
    --foreman-proxy-plugin-remote-execution-ssh-ssh-kerberos-auth  Enable kerberos authentication for SSH (current: false)
    --reset-foreman-proxy-plugin-remote-execution-ssh-ssh-kerberos-auth Reset ssh_kerberos_auth to the default value (false)
    --foreman-proxy-plugin-remote-execution-ssh-ssh-keygen  Location of the ssh-keygen binary (current: "/usr/bin/ssh-keygen")
    --reset-foreman-proxy-plugin-remote-execution-ssh-ssh-keygen Reset ssh_keygen to the default value ("/usr/bin/ssh-keygen")

= Module katello:

== Advanced:
    --katello-candlepin-db-host   Host with Candlepin DB (current: "localhost")
    --reset-katello-candlepin-db-host Reset candlepin_db_host to the default value ("localhost")
    --katello-candlepin-db-name   Name of the Candlepin DB (current: "candlepin")
    --reset-katello-candlepin-db-name Reset candlepin_db_name to the default value ("candlepin")
    --katello-candlepin-db-password  Candlepin DB password (current: "XMofC82ESxUnnQPUgQjTBY94EAmJZgNL")
    --reset-katello-candlepin-db-password Reset candlepin_db_password to the default value ("XMofC82ESxUnnQPUgQjTBY94EAmJZgNL")
    --katello-candlepin-db-port   Port accepting connections to Candlepin DB (current: UNDEF)
    --reset-katello-candlepin-db-port Reset candlepin_db_port to the default value (UNDEF)
    --katello-candlepin-db-ssl    Boolean indicating if the connection to the database should be over
                                  an SSL connection. Requires DB host's CA Cert in the system trust (current: false)
    --reset-katello-candlepin-db-ssl Reset candlepin_db_ssl to the default value (false)
    --katello-candlepin-db-ssl-verify  Boolean indicating if the SSL connection to the database should be verified (current: true)
    --reset-katello-candlepin-db-ssl-verify Reset candlepin_db_ssl_verify to the default value (true)
    --katello-candlepin-db-user   Candlepin DB user (current: "candlepin")
    --reset-katello-candlepin-db-user Reset candlepin_db_user to the default value ("candlepin")
    --katello-candlepin-manage-db  Boolean indicating whether a database should be installed, this includes db creation and user (current: true)
    --reset-katello-candlepin-manage-db Reset candlepin_manage_db to the default value (true)
    --katello-candlepin-oauth-key  The OAuth key for talking to the candlepin API (current: "katello")
    --reset-katello-candlepin-oauth-key Reset candlepin_oauth_key to the default value ("katello")
    --katello-candlepin-oauth-secret  The OAuth secret for talking to the candlepin API (current: "9BmVhcX8WmKBwsTLJqpnSaZhyuLzg2fR")
    --reset-katello-candlepin-oauth-secret Reset candlepin_oauth_secret to the default value ("9BmVhcX8WmKBwsTLJqpnSaZhyuLzg2fR")
    --katello-cdn-ssl-version     SSL version used to communicate with the CDN (current: UNDEF)
    --reset-katello-cdn-ssl-version Reset cdn_ssl_version to the default value (UNDEF)
    --katello-group               The Katello system user group (current: "foreman")
    --reset-katello-group         Reset group to the default value ("foreman")
    --katello-manage-repo         Whether to manage the yum repository (current: false)
    --reset-katello-manage-repo   Reset manage_repo to the default value (false)
    --katello-num-pulp-workers    Number of pulp workers to use (current: 6)
    --reset-katello-num-pulp-workers Reset num_pulp_workers to the default value (6)
    --katello-package-names       Packages that this module ensures are present instead of the default (current: ["katello", "tfm-rubygem-katello"])
    --reset-katello-package-names Reset package_names to the default value (["katello", "tfm-rubygem-katello"])
    --katello-post-sync-token     The shared secret for pulp notifying katello about
                                  completed syncs (current: "ebeouzxiFtEcxXFzuNCSTJFCdLSTpgGk")
    --reset-katello-post-sync-token Reset post_sync_token to the default value ("ebeouzxiFtEcxXFzuNCSTJFCdLSTpgGk")
    --katello-pulp-db-ca-path     The ca_certs file contains a set of concatenated "certification authority" certificates,
                                  which are used to validate certificates passed from the other end of the connection. (current: "/etc/pki/tls/certs/ca-bundle.crt")
    --reset-katello-pulp-db-ca-path Reset pulp_db_ca_path to the default value ("/etc/pki/tls/certs/ca-bundle.crt")
    --katello-pulp-db-name        Name of the database to use (current: "pulp_database")
    --reset-katello-pulp-db-name  Reset pulp_db_name to the default value ("pulp_database")
    --katello-pulp-db-password    The password to use for authenticating to the MongoDB server (current: UNDEF)
    --reset-katello-pulp-db-password Reset pulp_db_password to the default value (UNDEF)
    --katello-pulp-db-replica-set  The name of replica set configured in MongoDB, if one is in use (current: UNDEF)
    --reset-katello-pulp-db-replica-set Reset pulp_db_replica_set to the default value (UNDEF)
    --katello-pulp-db-seeds       Comma-separated list of hostname:port of database replica seed hosts (current: "localhost:27017")
    --reset-katello-pulp-db-seeds Reset pulp_db_seeds to the default value ("localhost:27017")
    --katello-pulp-db-ssl         Whether to connect to the database server using SSL. (current: false)
    --reset-katello-pulp-db-ssl   Reset pulp_db_ssl to the default value (false)
    --katello-pulp-db-ssl-certfile  The certificate file used to identify the local connection against mongod. (current: UNDEF)
    --reset-katello-pulp-db-ssl-certfile Reset pulp_db_ssl_certfile to the default value (UNDEF)
    --katello-pulp-db-ssl-keyfile  A path to the private keyfile used to identify the local connection against mongod. If
                                  included with the certfile then only the ssl_certfile is needed. (current: UNDEF)
    --reset-katello-pulp-db-ssl-keyfile Reset pulp_db_ssl_keyfile to the default value (UNDEF)
    --katello-pulp-db-unsafe-autoretry  If true, retry commands to the database if there is a connection error.
                                  Warning: if set to true, this setting can result in duplicate records. (current: false)
    --reset-katello-pulp-db-unsafe-autoretry Reset pulp_db_unsafe_autoretry to the default value (false)
    --katello-pulp-db-username    The user name to use for authenticating to the MongoDB server (current: UNDEF)
    --reset-katello-pulp-db-username Reset pulp_db_username to the default value (UNDEF)
    --katello-pulp-db-verify-ssl  Specifies whether a certificate is required from the other side of the connection, and
                                  whether it will be validated if provided. If it is true, then the ca_certs parameter
                                  must point to a file of CA certificates used to validate the connection. (current: true)
    --reset-katello-pulp-db-verify-ssl Reset pulp_db_verify_ssl to the default value (true)
    --katello-pulp-db-write-concern  Write concern of 'majority' or 'all'. When 'all' is specified, 'w' is set to number of
                                  seeds specified. For version of MongoDB < 2.6, replica_set must also be specified.
                                  Please note that 'all' will cause Pulp to halt if any of the replica set members is not
                                  available. 'majority' is used by default (current: UNDEF)
    --reset-katello-pulp-db-write-concern Reset pulp_db_write_concern to the default value (UNDEF)
    --katello-pulp-manage-db      Boolean to install and configure the mongodb. (current: true)
    --reset-katello-pulp-manage-db Reset pulp_manage_db to the default value (true)
    --katello-pulp-worker-timeout  The amount of time (in seconds) before considering a worker as missing. If Pulp's
                                  mongo database has slow I/O, then setting a higher number may resolve issues where workers are
                                  going missing incorrectly. (current: 60)
    --reset-katello-pulp-worker-timeout Reset pulp_worker_timeout to the default value (60)
    --katello-qpid-hostname       Hostname used to connect to qpidd. (current: "localhost")
    --reset-katello-qpid-hostname Reset qpid_hostname to the default value ("localhost")
    --katello-qpid-interface      The interface qpidd listens to. (current: "lo")
    --reset-katello-qpid-interface Reset qpid_interface to the default value ("lo")
    --katello-qpid-wcache-page-size  The size (in KB) of the pages in the write page cache (current: 4)
    --reset-katello-qpid-wcache-page-size Reset qpid_wcache_page_size to the default value (4)
    --katello-repo-gpgcheck       Whether to check the GPG signatures (current: false)
    --reset-katello-repo-gpgcheck Reset repo_gpgcheck to the default value (false)
    --katello-repo-gpgkey         The GPG key to use (current: UNDEF)
    --reset-katello-repo-gpgkey   Reset repo_gpgkey to the default value (UNDEF)
    --katello-repo-version        Which yum repository to install. For example
                                  latest or 3.3. (current: "latest")
    --reset-katello-repo-version  Reset repo_version to the default value ("latest")
    --katello-rest-client-timeout  Timeout for Katello rest API (current: 3600)
    --reset-katello-rest-client-timeout Reset rest_client_timeout to the default value (3600)
    --katello-user                The Katello system user name (current: "foreman")
    --reset-katello-user          Reset user to the default value ("foreman")
    --katello-user-groups         Extra user groups the Katello user is a part of (current: ["foreman"])
    --reset-katello-user-groups   Reset user_groups to the default value (["foreman"])

== Basic:
    --katello-enable-deb          Enable debian content plugin (current: false)
    --reset-katello-enable-deb    Reset enable_deb to the default value (true)
    --katello-enable-docker       Enable docker content plugin (current: true)
    --reset-katello-enable-docker Reset enable_docker to the default value (true)
    --katello-enable-file         Enable generic file content management (current: true)
    --reset-katello-enable-file   Reset enable_file to the default value (true)
    --katello-enable-ostree       Enable ostree content plugin, this requires an ostree install (current: true)
    --reset-katello-enable-ostree Reset enable_ostree to the default value (false)
    --katello-enable-puppet       Enable puppet content plugin (current: true)
    --reset-katello-enable-puppet Reset enable_puppet to the default value (true)
    --katello-enable-yum          Enable rpm content plugin, including syncing of yum content (current: true)
    --reset-katello-enable-yum    Reset enable_yum to the default value (true)
    --katello-proxy-password      Proxy password for authentication (current: UNDEF)
    --reset-katello-proxy-password Reset proxy_password to the default value (UNDEF)
    --katello-proxy-port          Port the proxy is running on (current: UNDEF)
    --reset-katello-proxy-port    Reset proxy_port to the default value (UNDEF)
    --katello-proxy-url           URL of the proxy server (current: UNDEF)
    --reset-katello-proxy-url     Reset proxy_url to the default value (UNDEF)
    --katello-proxy-username      Proxy username for authentication (current: UNDEF)
    --reset-katello-proxy-username Reset proxy_username to the default value (UNDEF)
    --katello-pulp-max-speed      The maximum download speed per second for a Pulp task, such as a sync. (e.g. "4 Kb" (Uses SI KB), 4MB, or 1GB" ) (current: UNDEF)
    --reset-katello-pulp-max-speed Reset pulp_max_speed to the default value (UNDEF)
    --katello-repo-export-dir     Directory to create for repository exports (current: "/var/lib/pulp/katello-export")
    --reset-katello-repo-export-dir Reset repo_export_dir to the default value ("/var/lib/pulp/katello-export")

= Module puppet:

== Basic:
    --puppet-additional-settings  A hash of additional main settings. (current: {})
    --reset-puppet-additional-settings Reset additional_settings to the default value ({})
    --puppet-autosign             If set to a boolean, autosign is enabled or disabled
                                  for all incoming requests. Otherwise this has to be
                                  set to the full file path of an autosign.conf file or
                                  an autosign script. If this is set to a script, make
                                  sure that script considers the content of autosign.conf
                                  as otherwise Foreman functionality might be broken. (current: "/etc/puppetlabs/puppet/autosign.conf")
    --reset-puppet-autosign       Reset autosign to the default value ("/etc/puppetlabs/puppet/autosign.conf")
    --puppet-autosign-content     If set, write the autosign file content
                                  using the value of this parameter.
                                  Cannot be used at the same time as autosign_entries
                                  For example, could be a string, or
                                  file('another_module/autosign.sh') or
                                  template('another_module/autosign.sh.erb') (current: UNDEF)
    --reset-puppet-autosign-content Reset autosign_content to the default value (UNDEF)
    --puppet-autosign-entries     A list of certnames or domain name globs
                                  whose certificate requests will automatically be signed.
                                  Defaults to an empty Array. (current: [])
    --reset-puppet-autosign-entries Reset autosign_entries to the default value ([])
    --puppet-autosign-mode        mode of the autosign file/script (current: "0664")
    --reset-puppet-autosign-mode  Reset autosign_mode to the default value ("0664")
    --puppet-autosign-source      If set, use this as the source for the autosign file,
                                  instead of autosign_content. (current: UNDEF)
    --reset-puppet-autosign-source Reset autosign_source to the default value (UNDEF)
    --puppet-ca-crl-filepath      Path to CA CRL file, dynamically resolves based on
                                  $::server_ca status. (current: UNDEF)
    --reset-puppet-ca-crl-filepath Reset ca_crl_filepath to the default value (UNDEF)
    --puppet-ca-port              Puppet CA port (current: UNDEF)
    --reset-puppet-ca-port        Reset ca_port to the default value (UNDEF)
    --puppet-ca-server            Use a different ca server. Should be either
                                  a string with the location of the ca_server
                                  or 'false'. (current: UNDEF)
    --reset-puppet-ca-server      Reset ca_server to the default value (UNDEF)
    --puppet-cron-cmd             Specify command to launch when runmode is
                                  set 'cron'. (current: UNDEF)
    --reset-puppet-cron-cmd       Reset cron_cmd to the default value (UNDEF)
    --puppet-dns-alt-names        Use additional DNS names when generating a
                                  certificate.  Defaults to an empty Array. (current: [])
    --reset-puppet-dns-alt-names  Reset dns_alt_names to the default value ([])
    --puppet-hiera-config         The hiera configuration file. (current: "$confdir/hiera.yaml")
    --reset-puppet-hiera-config   Reset hiera_config to the default value ("$confdir/hiera.yaml")
    --puppet-http-connect-timeout  The maximum amount of time an agent waits
                                  when establishing an HTTP connection. (current: UNDEF)
    --reset-puppet-http-connect-timeout Reset http_connect_timeout to the default value (UNDEF)
    --puppet-http-read-timeout    The time an agent waits for one block to be
                                  read from an HTTP connection. If nothing is
                                  read after the elapsed interval then the
                                  connection will be closed. (current: UNDEF)
    --reset-puppet-http-read-timeout Reset http_read_timeout to the default value (UNDEF)
    --puppet-listen               Should the puppet agent listen for connections. (current: false)
    --reset-puppet-listen         Reset listen to the default value (false)
    --puppet-listen-to            An array of servers allowed to initiate a puppet run.
                                  If $listen = true one of three things will happen:
                                  1) if $listen_to is not empty then this array
                                  will be used.
                                  2) if $listen_to is empty and $puppetmaster is
                                  defined then only $puppetmaster will be
                                  allowed.
                                  3) if $puppetmaster is not defined or empty,
                                  $fqdn will be used. (current: [])
    --reset-puppet-listen-to      Reset listen_to to the default value ([])
    --puppet-manage-packages      Should this module install packages or not.
                                  Can also install only server packages with value
                                  of 'server' or only agent packages with 'agent'. (current: true)
    --reset-puppet-manage-packages Reset manage_packages to the default value (true)
    --puppet-module-repository    Use a different puppet module repository (current: UNDEF)
    --reset-puppet-module-repository Reset module_repository to the default value (UNDEF)
    --puppet-pluginsync           Enable pluginsync. (current: true)
    --reset-puppet-pluginsync     Reset pluginsync to the default value (true)
    --puppet-port                 Override the port of the master we connect to. (current: 8140)
    --reset-puppet-port           Reset port to the default value (8140)
    --puppet-run-hour             The hour at which to run the puppet agent
                                  when runmode is cron or systemd.timer. (current: UNDEF)
    --reset-puppet-run-hour       Reset run_hour to the default value (UNDEF)
    --puppet-run-minute           The minute at which to run the puppet agent
                                  when runmode is cron or systemd.timer. (current: UNDEF)
    --reset-puppet-run-minute     Reset run_minute to the default value (UNDEF)
    --puppet-runinterval          Set up the interval (in seconds) to run
                                  the puppet agent. (current: 1800)
    --reset-puppet-runinterval    Reset runinterval to the default value (1800)
    --puppet-runmode              Select the mode to setup the puppet agent. (current: "service")
    --reset-puppet-runmode        Reset runmode to the default value ("service")
    --puppet-show-diff            Show and report changed files with diff output (current: false)
    --reset-puppet-show-diff      Reset show_diff to the default value (false)
    --puppet-splay                Switch to enable a random amount of time
                                  to sleep before each run. (current: false)
    --reset-puppet-splay          Reset splay to the default value (false)
    --puppet-splaylimit           The maximum time to delay before runs.
                                  Defaults to being the same as the run interval.
                                  This setting can be a time interval in seconds
                                  (30 or 30s), minutes (30m), hours (6h), days (2d),
                                  or years (5y). (current: 1800)
    --reset-puppet-splaylimit     Reset splaylimit to the default value (1800)
    --puppet-syslogfacility       Facility name to use when logging to syslog (current: UNDEF)
    --reset-puppet-syslogfacility Reset syslogfacility to the default value (UNDEF)
    --puppet-systemd-cmd          Specify command to launch when runmode is
                                  set 'systemd.timer'. (current: UNDEF)
    --reset-puppet-systemd-cmd    Reset systemd_cmd to the default value (UNDEF)
    --puppet-systemd-randomizeddelaysec  Adds a random delay between 0 and this value
                                  (in seconds) to the timer. Only relevant when
                                  runmode is 'systemd.timer'. (current: 0)
    --reset-puppet-systemd-randomizeddelaysec Reset systemd_randomizeddelaysec to the default value (0)
    --puppet-usecacheonfailure    Switch to enable use of cached catalog on
                                  failure of run. (current: true)
    --reset-puppet-usecacheonfailure Reset usecacheonfailure to the default value (true)
    --puppet-version              Specify a specific version of a package to
                                  install. The version should be the exact
                                  match for your distro.
                                  You can also use certain values like 'latest'.
                                  Note that when you specify exact versions you
                                  should also override $server_version since
                                  that defaults to $version. (current: "present")
    --reset-puppet-version        Reset version to the default value ("present")

== puppet::agent:
    --puppet-agent                Should a puppet agent be installed (current: true)
    --reset-puppet-agent          Reset agent to the default value (true)
    --puppet-agent-additional-settings  A hash of additional agent settings.
                                  Example: {stringify_facts => true} (current: {})
    --reset-puppet-agent-additional-settings Reset agent_additional_settings to the default value ({})
    --puppet-agent-noop           Run the agent in noop mode. (current: false)
    --reset-puppet-agent-noop     Reset agent_noop to the default value (false)
    --puppet-client-certname      The node's certificate name, and the unique
                                  identifier it uses when requesting catalogs. (current: "sat-reporting.p1.lab")
    --reset-puppet-client-certname Reset client_certname to the default value ("sat-reporting.p1.lab")
    --puppet-environment          Default environment of the Puppet agent (current: "production")
    --reset-puppet-environment    Reset environment to the default value ("production")
    --puppet-postrun-command      A command which gets excuted after each Puppet run (current: UNDEF)
    --reset-puppet-postrun-command Reset postrun_command to the default value (UNDEF)
    --puppet-prerun-command       A command which gets excuted before each Puppet run (current: UNDEF)
    --reset-puppet-prerun-command Reset prerun_command to the default value (UNDEF)
    --puppet-puppetmaster         Hostname of your puppetmaster (server
                                  directive in puppet.conf) (current: UNDEF)
    --reset-puppet-puppetmaster   Reset puppetmaster to the default value (UNDEF)
    --puppet-report               Send reports to the Puppet Master (current: true)
    --reset-puppet-report         Reset report to the default value (true)

== advanced agent:
    --puppet-agent-restart-command  The command which gets excuted on puppet service restart (current: "/usr/bin/systemctl reload-or-restart puppet")
    --reset-puppet-agent-restart-command Reset agent_restart_command to the default value ("/usr/bin/systemctl reload-or-restart puppet")
    --puppet-client-package       Install a custom package to provide
                                  the puppet client (current: ["puppet-agent"])
    --reset-puppet-client-package Reset client_package to the default value (["puppet-agent"])
    --puppet-dir-group            Group of the base puppet directory, used when
                                  puppet::server is false. (current: UNDEF)
    --reset-puppet-dir-group      Reset dir_group to the default value (UNDEF)
    --puppet-dir-owner            Owner of the base puppet directory, used when
                                  puppet::server is false. (current: "root")
    --reset-puppet-dir-owner      Reset dir_owner to the default value ("root")
    --puppet-remove-lock          Remove the agent lock when running. (current: true)
    --reset-puppet-remove-lock    Reset remove_lock to the default value (true)
    --puppet-service-name         The name of the puppet agent service. (current: "puppet")
    --reset-puppet-service-name   Reset service_name to the default value ("puppet")
    --puppet-systemd-unit-name    The name of the puppet systemd units. (current: "puppet-run")
    --reset-puppet-systemd-unit-name Reset systemd_unit_name to the default value ("puppet-run")

== Advanced server:
    --puppet-allow-any-crl-auth   Allow any authentication for the CRL. This
                                  is needed on the puppet CA to accept clients
                                  from a the puppet CA proxy. (current: false)
    --reset-puppet-allow-any-crl-auth Reset allow_any_crl_auth to the default value (false)
    --puppet-auth-allowed         An array of authenticated nodes allowed to
                                  access all catalog and node endpoints.
                                  default to ['$1'] (current: ["$1"])
    --reset-puppet-auth-allowed   Reset auth_allowed to the default value (["$1"])
    --puppet-server-acceptor-threads  This sets the number of threads that the webserver will dedicate to accepting
                                  socket connections for unencrypted HTTP traffic. If not provided, the webserver
                                  defaults to the number of virtual cores on the host divided by 8, with a minimum
                                  of 1 and maximum of 4. (current: UNDEF)
    --reset-puppet-server-acceptor-threads Reset server_acceptor_threads to the default value (UNDEF)
    --puppet-server-admin-api-whitelist  The whitelist of clients that
                                  can query the puppet-admin-api endpoint
                                  Defaults to [ '127.0.0.1', '::1', $::ipaddress ] (current: ["localhost", "sat-reporting.p1.lab"])
    --reset-puppet-server-admin-api-whitelist Reset server_admin_api_whitelist to the default value (["localhost", "sat-reporting.p1.lab"])
    --puppet-server-allow-header-cert-info  Enable client authentication over HTTP Headers
                                  Defaults to false, is also activated by the $server_http setting (current: false)
    --reset-puppet-server-allow-header-cert-info Reset server_allow_header_cert_info to the default value (false)
    --puppet-server-ca-allow-auth-extensions  Allow CA to sign certificate requests that have authorization extensions
                                  Defaults to false (current: false)
    --reset-puppet-server-ca-allow-auth-extensions Reset server_ca_allow_auth_extensions to the default value (false)
    --puppet-server-ca-allow-sans  Allow CA to sign certificate requests that have Subject Alternative Names
                                  Defaults to false (current: false)
    --reset-puppet-server-ca-allow-sans Reset server_ca_allow_sans to the default value (false)
    --puppet-server-ca-auth-required  Whether client certificates are needed to access the puppet-admin api
                                  Defaults to true (current: true)
    --reset-puppet-server-ca-auth-required Reset server_ca_auth_required to the default value (true)
    --puppet-server-ca-client-whitelist  The whitelist of client certificates that
                                  can query the certificate-status endpoint
                                  Defaults to [ '127.0.0.1', '::1', $::ipaddress ] (current: ["localhost", "sat-reporting.p1.lab"])
    --reset-puppet-server-ca-client-whitelist Reset server_ca_client_whitelist to the default value (["localhost", "sat-reporting.p1.lab"])
    --puppet-server-ca-enable-infra-crl  Enable the separate CRL for Puppet infrastructure nodes
                                  Defaults to false (current: false)
    --reset-puppet-server-ca-enable-infra-crl Reset server_ca_enable_infra_crl to the default value (false)
    --puppet-server-check-for-updates  Should the puppetserver phone home to check for available updates?
                                  Defaults to true (current: true)
    --reset-puppet-server-check-for-updates Reset server_check_for_updates to the default value (true)
    --puppet-server-cipher-suites  List of SSL ciphers to use in negotiation
                                  Defaults to [ 'TLS_RSA_WITH_AES_256_CBC_SHA256', 'TLS_RSA_WITH_AES_256_CBC_SHA',
                                  'TLS_RSA_WITH_AES_128_CBC_SHA256', 'TLS_RSA_WITH_AES_128_CBC_SHA', ] (current: ["TLS_RSA_WITH_AES_256_CBC_SHA256", "TLS_RSA_WITH_AES_256_CBC_SHA", "TLS_RSA_WITH_AES_128_CBC_SHA256", "TLS_RSA_WITH_AES_128_CBC_SHA"])
    --reset-puppet-server-cipher-suites Reset server_cipher_suites to the default value (["TLS_RSA_WITH_AES_256_CBC_SHA256", "TLS_RSA_WITH_AES_256_CBC_SHA", "TLS_RSA_WITH_AES_128_CBC_SHA256", "TLS_RSA_WITH_AES_128_CBC_SHA"])
    --puppet-server-compile-mode  Used to control JRuby's "CompileMode", which may improve performance.
                                  Defaults to undef (off). (current: UNDEF)
    --reset-puppet-server-compile-mode Reset server_compile_mode to the default value (UNDEF)
    --puppet-server-config-version  How to determine the configuration version. When
                                  using git_repo, by default a git describe
                                  approach will be installed. (current: UNDEF)
    --reset-puppet-server-config-version Reset server_config_version to the default value (UNDEF)
    --puppet-server-connect-timeout  How long the server will wait for a response to a connection attempt (current: 120000)
    --reset-puppet-server-connect-timeout Reset server_connect_timeout to the default value (120000)
    --puppet-server-custom-trusted-oid-mapping  A hash of custom trusted oid mappings. Defaults to undef
                                  Example: { 1.3.6.1.4.1.34380.1.2.1.1 => { shortname => 'myshortname' } } (current: UNDEF)
    --reset-puppet-server-custom-trusted-oid-mapping Reset server_custom_trusted_oid_mapping to the default value (UNDEF)
    --puppet-server-default-manifest  Toggle if default_manifest setting should
                                  be added to the [main] section (current: false)
    --reset-puppet-server-default-manifest Reset server_default_manifest to the default value (false)
    --puppet-server-default-manifest-content  A string to set the content of the default_manifest
                                  If set to '' it will not manage the file (current: "")
    --reset-puppet-server-default-manifest-content Reset server_default_manifest_content to the default value ("")
    --puppet-server-default-manifest-path  A string setting the path to the default_manifest (current: "/etc/puppet/manifests/default_manifest.pp")
    --reset-puppet-server-default-manifest-path Reset server_default_manifest_path to the default value ("/etc/puppet/manifests/default_manifest.pp")
    --puppet-server-dir           Puppet configuration directory (current: "/etc/puppetlabs/puppet")
    --reset-puppet-server-dir     Reset server_dir to the default value ("/etc/puppetlabs/puppet")
    --puppet-server-enc-api       What version of enc script to deploy. (current: "v2")
    --reset-puppet-server-enc-api Reset server_enc_api to the default value ("v2")
    --puppet-server-environment-class-cache-enabled  Enable environment class cache in conjunction with the use of the
                                  environment_classes API.
                                  Defaults to false (current: false)
    --reset-puppet-server-environment-class-cache-enabled Reset server_environment_class_cache_enabled to the default value (false)
    --puppet-server-environment-timeout  Timeout for cached compiled catalogs (10s, 5m, ...) (current: UNDEF)
    --reset-puppet-server-environment-timeout Reset server_environment_timeout to the default value (UNDEF)
    --puppet-server-envs-dir      Directory that holds puppet environments (current: "/etc/puppetlabs/code/environments")
    --reset-puppet-server-envs-dir Reset server_envs_dir to the default value ("/etc/puppetlabs/code/environments")
    --puppet-server-envs-target   Indicates that $envs_dir should be
                                  a symbolic link to this target (current: UNDEF)
    --reset-puppet-server-envs-target Reset server_envs_target to the default value (UNDEF)
    --puppet-server-foreman       Should foreman integration be installed (current: true)
    --reset-puppet-server-foreman Reset server_foreman to the default value (true)
    --puppet-server-foreman-facts  Should foreman receive facts from puppet (current: true)
    --reset-puppet-server-foreman-facts Reset server_foreman_facts to the default value (true)
    --puppet-server-foreman-ssl-ca  SSL CA of the Foreman server (current: "/etc/pki/katello/puppet/puppet_client_ca.crt")
    --reset-puppet-server-foreman-ssl-ca Reset server_foreman_ssl_ca to the default value (UNDEF)
    --puppet-server-foreman-ssl-cert  Client certificate for authenticating against Foreman server (current: "/etc/pki/katello/puppet/puppet_client.crt")
    --reset-puppet-server-foreman-ssl-cert Reset server_foreman_ssl_cert to the default value (UNDEF)
    --puppet-server-foreman-ssl-key  Key for authenticating against Foreman server (current: "/etc/pki/katello/puppet/puppet_client.key")
    --reset-puppet-server-foreman-ssl-key Reset server_foreman_ssl_key to the default value (UNDEF)
    --puppet-server-foreman-url   Foreman URL (current: "https://sat-reporting.p1.lab")
    --reset-puppet-server-foreman-url Reset server_foreman_url to the default value ("https://sat-reporting.p1.lab")
    --puppet-server-group         Name of the puppetmaster group. (current: "puppet")
    --reset-puppet-server-group   Reset server_group to the default value ("puppet")
    --puppet-server-http          Should the puppet master listen on HTTP as well as HTTPS.
                                  Useful for load balancer or reverse proxy scenarios. (current: false)
    --reset-puppet-server-http    Reset server_http to the default value (false)
    --puppet-server-http-port     Puppet master HTTP port; defaults to 8139. (current: 8139)
    --reset-puppet-server-http-port Reset server_http_port to the default value (8139)
    --puppet-server-idle-timeout  How long the server will wait for a response on an existing connection (current: 1200000)
    --reset-puppet-server-idle-timeout Reset server_idle_timeout to the default value (1200000)
    --puppet-server-jruby-gem-home  Where jruby gems are located for puppetserver (current: "/opt/puppetlabs/server/data/puppetserver/jruby-gems")
    --reset-puppet-server-jruby-gem-home Reset server_jruby_gem_home to the default value ("/opt/puppetlabs/server/data/puppetserver/jruby-gems")
    --puppet-server-jvm-cli-args  Java options to use when using puppetserver
                                  subcommands (eg puppetserver gem). (current: UNDEF)
    --reset-puppet-server-jvm-cli-args Reset server_jvm_cli_args to the default value (UNDEF)
    --puppet-server-jvm-config    Specify the puppetserver jvm configuration file. (current: "/etc/sysconfig/puppetserver")
    --reset-puppet-server-jvm-config Reset server_jvm_config to the default value ("/etc/sysconfig/puppetserver")
    --puppet-server-jvm-extra-args  Additional java options to pass through.
                                  This can be used for Java versions prior to
                                  Java 8 to specify the max perm space to use:
                                  For example: '-XX:MaxPermSize=128m'. (current: UNDEF)
    --reset-puppet-server-jvm-extra-args Reset server_jvm_extra_args to the default value (UNDEF)
    --puppet-server-jvm-java-bin  Set the default java to use. (current: "/usr/bin/java")
    --reset-puppet-server-jvm-java-bin Reset server_jvm_java_bin to the default value ("/usr/bin/java")
    --puppet-server-jvm-max-heap-size  Specify the maximum jvm heap space. (current: "2G")
    --reset-puppet-server-jvm-max-heap-size Reset server_jvm_max_heap_size to the default value ("2G")
    --puppet-server-jvm-min-heap-size  Specify the minimum jvm heap space. (current: "2G")
    --reset-puppet-server-jvm-min-heap-size Reset server_jvm_min_heap_size to the default value ("2G")
    --puppet-server-manage-user   Whether to manage the server user resource (current: true)
    --reset-puppet-server-manage-user Reset server_manage_user to the default value (true)
    --puppet-server-max-active-instances  Max number of active jruby instances. Defaults to
                                  processor count (current: 4)
    --reset-puppet-server-max-active-instances Reset server_max_active_instances to the default value (4)
    --puppet-server-max-open-files  Increase the max open files limit for Puppetserver.
                                  Defaults to undef (current: UNDEF)
    --reset-puppet-server-max-open-files Reset server_max_open_files to the default value (UNDEF)
    --puppet-server-max-queued-requests  The maximum number of requests that may be queued waiting to borrow a
                                  JRuby from the pool. (Puppetserver 5.x only)
                                  Defaults to 0 (disabled) for Puppetserver >= 5.0 (current: 0)
    --reset-puppet-server-max-queued-requests Reset server_max_queued_requests to the default value (0)
    --puppet-server-max-requests-per-instance  Max number of requests a jruby instances will handle. Defaults to 0 (disabled) (current: 0)
    --reset-puppet-server-max-requests-per-instance Reset server_max_requests_per_instance to the default value (0)
    --puppet-server-max-retry-delay  Sets the upper limit for the random sleep set as a Retry-After header on
                                  503 responses returned when max-queued-requests is enabled. (Puppetserver 5.x only)
                                  Defaults to 1800 for Puppetserver >= 5.0 (current: 1800)
    --reset-puppet-server-max-retry-delay Reset server_max_retry_delay to the default value (1800)
    --puppet-server-max-threads   This sets the maximum number of threads assigned to responding to HTTP and/or
                                  HTTPS requests for a single webserver, effectively changing how many
                                  concurrent requests can be made at one time. If not provided, the
                                  webserver defaults to 200. (current: UNDEF)
    --reset-puppet-server-max-threads Reset server_max_threads to the default value (UNDEF)
    --puppet-server-metrics-allowed  Specify metrics to allow in addition to those in the default list
                                  Defaults to undef (current: UNDEF)
    --reset-puppet-server-metrics-allowed Reset server_metrics_allowed to the default value (UNDEF)
    --puppet-server-metrics-graphite-enable  Enable or disable Graphite metrics reporter. Defaults to false (current: false)
    --reset-puppet-server-metrics-graphite-enable Reset server_metrics_graphite_enable to the default value (false)
    --puppet-server-metrics-graphite-host  Graphite server host. Defaults to "127.0.0.1" (current: "127.0.0.1")
    --reset-puppet-server-metrics-graphite-host Reset server_metrics_graphite_host to the default value ("127.0.0.1")
    --puppet-server-metrics-graphite-interval  How often to send metrics to graphite (in seconds)
                                  Defaults to 5 (current: 5)
    --reset-puppet-server-metrics-graphite-interval Reset server_metrics_graphite_interval to the default value (5)
    --puppet-server-metrics-graphite-port  Graphite server port. Defaults to 2003 (current: 2003)
    --reset-puppet-server-metrics-graphite-port Reset server_metrics_graphite_port to the default value (2003)
    --puppet-server-metrics-jmx-enable  Enable or disable JMX metrics reporter. Defaults to true (current: true)
    --reset-puppet-server-metrics-jmx-enable Reset server_metrics_jmx_enable to the default value (true)
    --puppet-server-metrics-server-id  A server id that will be used as part of the namespace for metrics produced
                                  Defaults to $fqdn (current: "sat-reporting.p1.lab")
    --reset-puppet-server-metrics-server-id Reset server_metrics_server_id to the default value ("sat-reporting.p1.lab")
    --puppet-server-package       Custom package name for puppet master (current: UNDEF)
    --reset-puppet-server-package Reset server_package to the default value (UNDEF)
    --puppet-server-parser        Sets the parser to use. Valid options are 'current' or 'future'.
                                  Defaults to 'current'. (current: "current")
    --reset-puppet-server-parser  Reset server_parser to the default value ("current")
    --puppet-server-post-hook-content  Which template to use for git post hook (current: "puppet/server/post-receive.erb")
    --reset-puppet-server-post-hook-content Reset server_post_hook_content to the default value ("puppet/server/post-receive.erb")
    --puppet-server-post-hook-name  Name of a git hook (current: "post-receive")
    --reset-puppet-server-post-hook-name Reset server_post_hook_name to the default value ("post-receive")
    --puppet-server-puppet-basedir  Where is the puppet code base located (current: "/opt/puppetlabs/puppet/lib/ruby/vendor_ruby/puppet")
    --reset-puppet-server-puppet-basedir Reset server_puppet_basedir to the default value ("/opt/puppetlabs/puppet/lib/ruby/vendor_ruby/puppet")
    --puppet-server-puppetserver-dir  The path of the puppetserver config dir (current: "/etc/puppetlabs/puppetserver")
    --reset-puppet-server-puppetserver-dir Reset server_puppetserver_dir to the default value ("/etc/puppetlabs/puppetserver")
    --puppet-server-puppetserver-experimental  For Puppetserver 5, enable the /puppet/experimental route? Defaults to true (current: true)
    --reset-puppet-server-puppetserver-experimental Reset server_puppetserver_experimental to the default value (true)
    --puppet-server-puppetserver-jruby9k  For Puppetserver 5, use JRuby 9k? Defaults to false (current: false)
    --reset-puppet-server-puppetserver-jruby9k Reset server_puppetserver_jruby9k to the default value (false)
    --puppet-server-puppetserver-logdir  The path of the puppetserver log dir (current: "/var/log/puppetlabs/puppetserver")
    --reset-puppet-server-puppetserver-logdir Reset server_puppetserver_logdir to the default value ("/var/log/puppetlabs/puppetserver")
    --puppet-server-puppetserver-metrics  Enable metrics (Puppetserver 5.x only) and JRuby profiling?
                                  Defaults to true on Puppetserver 5.x and to false on Puppetserver 2.x (current: UNDEF)
    --reset-puppet-server-puppetserver-metrics Reset server_puppetserver_metrics to the default value (UNDEF)
    --puppet-server-puppetserver-rundir  The path of the puppetserver run dir (current: "/var/run/puppetlabs/puppetserver")
    --reset-puppet-server-puppetserver-rundir Reset server_puppetserver_rundir to the default value ("/var/run/puppetlabs/puppetserver")
    --puppet-server-puppetserver-trusted-agents  Certificate names of puppet agents that are allowed to fetch *all* catalogs
                                  Defaults to [] and all agents are only allowed to fetch their own catalogs. (current: [])
    --reset-puppet-server-puppetserver-trusted-agents Reset server_puppetserver_trusted_agents to the default value ([])
    --puppet-server-puppetserver-vardir  The path of the puppetserver var dir (current: "/opt/puppetlabs/server/data/puppetserver")
    --reset-puppet-server-puppetserver-vardir Reset server_puppetserver_vardir to the default value ("/opt/puppetlabs/server/data/puppetserver")
    --puppet-server-puppetserver-version  The version of puppetserver installed (or being installed)
                                  Unfortunately, different versions of puppetserver need
                                  configuring differently. The default is derived from the
                                  installed puppet version. Generally it's not needed to
                                  override this but when upgrading it might be. (current: UNDEF)
    --reset-puppet-server-puppetserver-version Reset server_puppetserver_version to the default value (UNDEF)
    --puppet-server-report-api    What version of report processor to deploy. (current: "v2")
    --reset-puppet-server-report-api Reset server_report_api to the default value ("v2")
    --puppet-server-request-timeout  Timeout in node.rb script for fetching
                                  catalog from Foreman (in seconds). (current: 60)
    --reset-puppet-server-request-timeout Reset server_request_timeout to the default value (60)
    --puppet-server-ruby-load-paths  List of ruby paths
                                  Defaults based on $::puppetversion (current: ["/opt/puppetlabs/puppet/lib/ruby/vendor_ruby"])
    --reset-puppet-server-ruby-load-paths Reset server_ruby_load_paths to the default value (["/opt/puppetlabs/puppet/lib/ruby/vendor_ruby"])
    --puppet-server-selector-threads  This sets the number of selectors that the webserver will dedicate to processing
                                  events on connected sockets for unencrypted HTTPS traffic. If not provided,
                                  the webserver defaults to the minimum of: virtual cores on the host divided by 2
                                  or max-threads divided by 16, with a minimum of 1. (current: UNDEF)
    --reset-puppet-server-selector-threads Reset server_selector_threads to the default value (UNDEF)
    --puppet-server-ssl-acceptor-threads  This sets the number of threads that the webserver will dedicate to accepting
                                  socket connections for encrypted HTTPS traffic. If not provided, defaults to
                                  the number of virtual cores on the host divided by 8, with a minimum of 1 and maximum of 4. (current: UNDEF)
    --reset-puppet-server-ssl-acceptor-threads Reset server_ssl_acceptor_threads to the default value (UNDEF)
    --puppet-server-ssl-chain-filepath  Path to certificate chain for puppetserver
                                  Only used when $ca is true
                                  Defaults to "${ssl_dir}/ca/ca_crt.pem" (current: "/etc/puppetlabs/puppet/ssl/ca/ca_crt.pem")
    --reset-puppet-server-ssl-chain-filepath Reset server_ssl_chain_filepath to the default value ("/etc/puppetlabs/puppet/ssl/ca/ca_crt.pem")
    --puppet-server-ssl-dir       SSL directory (current: "/etc/puppetlabs/puppet/ssl")
    --reset-puppet-server-ssl-dir Reset server_ssl_dir to the default value ("/etc/puppetlabs/puppet/ssl")
    --puppet-server-ssl-dir-manage  Toggle if ssl_dir should be added to the [master]
                                  configuration section. This is necessary to
                                  disable in case CA is delegated to a separate instance (current: true)
    --reset-puppet-server-ssl-dir-manage Reset server_ssl_dir_manage to the default value (true)
    --puppet-server-ssl-key-manage  Toggle if "private_keys/${::puppet::server::certname}.pem"
                                  should be created with default user and group. This is used in
                                  the default Forman setup to reuse the key for TLS communication. (current: true)
    --reset-puppet-server-ssl-key-manage Reset server_ssl_key_manage to the default value (true)
    --puppet-server-ssl-protocols  Array of SSL protocols to use.
                                  Defaults to [ 'TLSv1.2' ] (current: ["TLSv1.2"])
    --reset-puppet-server-ssl-protocols Reset server_ssl_protocols to the default value (["TLSv1.2"])
    --puppet-server-ssl-selector-threads  This sets the number of selectors that the webserver will dedicate to processing
                                  events on connected sockets for encrypted HTTPS traffic. Defaults to the number of
                                  virtual cores on the host divided by 2, with a minimum of 1 and maximum of 4.
                                  The number of selector threads actually used by Jetty is twice the number of selectors
                                  requested. For example, if a value of 3 is specified for the ssl-selector-threads setting,
                                  Jetty will actually use 6 selector threads. (current: UNDEF)
    --reset-puppet-server-ssl-selector-threads Reset server_ssl_selector_threads to the default value (UNDEF)
    --puppet-server-use-legacy-auth-conf  Should the puppetserver use the legacy puppet auth.conf?
                                  Defaults to false (the puppetserver will use its own conf.d/auth.conf) (current: false)
    --reset-puppet-server-use-legacy-auth-conf Reset server_use_legacy_auth_conf to the default value (false)
    --puppet-server-user          Name of the puppetmaster user. (current: "puppet")
    --reset-puppet-server-user    Reset server_user to the default value ("puppet")
    --puppet-server-version       Custom package version for puppet master (current: UNDEF)
    --reset-puppet-server-version Reset server_version to the default value (UNDEF)
    --puppet-server-web-idle-timeout  Time in ms that Jetty allows a socket to be idle, after processing has
                                  completed.
                                  Defaults to 30000, using the Jetty default of 30s (current: 30000)
    --reset-puppet-server-web-idle-timeout Reset server_web_idle_timeout to the default value (30000)

== Advanced puppet:
    --puppet-auth-template        Use a custom template for the auth
                                  configuration. (current: "puppet/auth.conf.erb")
    --reset-puppet-auth-template  Reset auth_template to the default value ("puppet/auth.conf.erb")
    --puppet-classfile            The file in which puppet agent stores a list
                                  of the classes associated with the retrieved
                                  configuration. (current: "$statedir/classes.txt")
    --reset-puppet-classfile      Reset classfile to the default value ("$statedir/classes.txt")
    --puppet-codedir              Override the puppet code directory. (current: "/etc/puppetlabs/code")
    --reset-puppet-codedir        Reset codedir to the default value ("/etc/puppetlabs/code")
    --puppet-dir                  Override the puppet directory. (current: "/etc/puppetlabs/puppet")
    --reset-puppet-dir            Reset dir to the default value ("/etc/puppetlabs/puppet")
    --puppet-group                Override the name of the puppet group. (current: "puppet")
    --reset-puppet-group          Reset group to the default value ("puppet")
    --puppet-logdir               Override the log directory. (current: "/var/log/puppetlabs/puppet")
    --reset-puppet-logdir         Reset logdir to the default value ("/var/log/puppetlabs/puppet")
    --puppet-package-provider     The provider used to install the agent.
                                  Defaults to chocolatey on Windows
                                  Defaults to undef elsewhere (current: UNDEF)
    --reset-puppet-package-provider Reset package_provider to the default value (UNDEF)
    --puppet-package-source       The location of the file to be used by the
                                  agent's package resource.
                                  Defaults to undef. If 'windows' or 'msi' are
                                  used as the provider then this setting is
                                  required. (current: UNDEF)
    --reset-puppet-package-source Reset package_source to the default value (UNDEF)
    --puppet-pluginfactsource     URL to retrieve Puppet facts from during pluginsync (current: "puppet:///pluginfacts")
    --reset-puppet-pluginfactsource Reset pluginfactsource to the default value ("puppet:///pluginfacts")
    --puppet-pluginsource         URL to retrieve Puppet plugins from during pluginsync (current: "puppet:///plugins")
    --reset-puppet-pluginsource   Reset pluginsource to the default value ("puppet:///plugins")
    --puppet-rundir               Override the PID directory. (current: "/var/run/puppetlabs")
    --reset-puppet-rundir         Reset rundir to the default value ("/var/run/puppetlabs")
    --puppet-sharedir             Override the system data directory. (current: "/opt/puppetlabs/puppet")
    --reset-puppet-sharedir       Reset sharedir to the default value ("/opt/puppetlabs/puppet")
    --puppet-srv-domain           Search domain for SRV records (current: "p1.lab")
    --reset-puppet-srv-domain     Reset srv_domain to the default value ("p1.lab")
    --puppet-ssldir               Override where SSL certificates are kept. (current: "/etc/puppetlabs/puppet/ssl")
    --reset-puppet-ssldir         Reset ssldir to the default value ("/etc/puppetlabs/puppet/ssl")
    --puppet-unavailable-runmodes  Runmodes that are not available for the
                                  current system. This module will not try
                                  to disable these modes. Default is []
                                  on Linux, ['cron', 'systemd.timer'] on
                                  Windows and ['systemd.timer'] on other
                                  systems. (current: [])
    --reset-puppet-unavailable-runmodes Reset unavailable_runmodes to the default value ([])
    --puppet-use-srv-records      Whether DNS SRV records will be used to resolve
                                  the Puppet master (current: false)
    --reset-puppet-use-srv-records Reset use_srv_records to the default value (false)
    --puppet-user                 Override the name of the puppet user. (current: "puppet")
    --reset-puppet-user           Reset user to the default value ("puppet")
    --puppet-vardir               Override the puppet var directory. (current: "/opt/puppetlabs/puppet/cache")
    --reset-puppet-vardir         Reset vardir to the default value ("/opt/puppetlabs/puppet/cache")

== puppet::server:
    --puppet-server               Should a puppet master be installed as well as the client (current: true)
    --reset-puppet-server         Reset server to the default value (false)
    --puppet-server-additional-settings  A hash of additional settings.
                                  Example: {trusted_node_data => true, ordering => 'manifest'} (current: {})
    --reset-puppet-server-additional-settings Reset server_additional_settings to the default value ({})
    --puppet-server-ca            Provide puppet CA (current: true)
    --reset-puppet-server-ca      Reset server_ca to the default value (true)
    --puppet-server-ca-crl-sync   Sync puppet CA crl file to compile masters, Puppet CA Must be the Puppetserver
                                  for the compile masters. Defaults to false. (current: false)
    --reset-puppet-server-ca-crl-sync Reset server_ca_crl_sync to the default value (false)
    --puppet-server-certname      The name to use when handling certificates. (current: "sat-reporting.p1.lab")
    --reset-puppet-server-certname Reset server_certname to the default value ("sat-reporting.p1.lab")
    --puppet-server-common-modules-path  Common modules paths (current: ["/etc/puppetlabs/code/environments/common", "/etc/puppetlabs/code/modules", "/opt/puppetlabs/puppet/modules", "/usr/share/puppet/modules"])
    --reset-puppet-server-common-modules-path Reset server_common_modules_path to the default value (["/etc/puppetlabs/code/environments/common", "/etc/puppetlabs/code/modules", "/opt/puppetlabs/puppet/modules", "/usr/share/puppet/modules"])
    --puppet-server-crl-enable    Turn on crl checking. Defaults to true when server_ca is true. Otherwise
                                  Defaults to false. Note unless you are using an external CA. It is recommended
                                  to set this to true. See $server_ca_crl_sync to enable syncing from CA Puppet Master (current: UNDEF)
    --reset-puppet-server-crl-enable Reset server_crl_enable to the default value (UNDEF)
    --puppet-server-environments-group  The group owning the environments directory (current: UNDEF)
    --reset-puppet-server-environments-group Reset server_environments_group to the default value (UNDEF)
    --puppet-server-environments-mode  Environments directory mode. (current: "0755")
    --reset-puppet-server-environments-mode Reset server_environments_mode to the default value ("0755")
    --puppet-server-environments-owner  The owner of the environments directory (current: "apache")
    --reset-puppet-server-environments-owner Reset server_environments_owner to the default value ("puppet")
    --puppet-server-external-nodes  External nodes classifier executable (current: "/etc/puppetlabs/puppet/node.rb")
    --reset-puppet-server-external-nodes Reset server_external_nodes to the default value ("/etc/puppetlabs/puppet/node.rb")
    --puppet-server-git-branch-map  Git branch to puppet env mapping for the
                                  default post receive hook (current: {})
    --reset-puppet-server-git-branch-map Reset server_git_branch_map to the default value ({})
    --puppet-server-git-repo      Use git repository as a source of modules (current: false)
    --reset-puppet-server-git-repo Reset server_git_repo to the default value (false)
    --puppet-server-git-repo-group  Git repository group (current: "puppet")
    --reset-puppet-server-git-repo-group Reset server_git_repo_group to the default value ("puppet")
    --puppet-server-git-repo-mode  Git repository mode (current: "0755")
    --reset-puppet-server-git-repo-mode Reset server_git_repo_mode to the default value ("0755")
    --puppet-server-git-repo-path  Git repository path (current: "/opt/puppetlabs/puppet/cache/puppet.git")
    --reset-puppet-server-git-repo-path Reset server_git_repo_path to the default value ("/opt/puppetlabs/puppet/cache/puppet.git")
    --puppet-server-git-repo-user  Git repository user (current: "puppet")
    --reset-puppet-server-git-repo-user Reset server_git_repo_user to the default value ("puppet")
    --puppet-server-ip            Bind ip address of the puppetmaster (current: "0.0.0.0")
    --reset-puppet-server-ip      Reset server_ip to the default value ("0.0.0.0")
    --puppet-server-port          Puppet master port (current: 8140)
    --reset-puppet-server-port    Reset server_port to the default value (8140)
    --puppet-server-puppetdb-host  PuppetDB host (current: UNDEF)
    --reset-puppet-server-puppetdb-host Reset server_puppetdb_host to the default value (UNDEF)
    --puppet-server-puppetdb-port  PuppetDB port (current: 8081)
    --reset-puppet-server-puppetdb-port Reset server_puppetdb_port to the default value (8081)
    --puppet-server-puppetdb-swf  PuppetDB soft_write_failure (current: false)
    --reset-puppet-server-puppetdb-swf Reset server_puppetdb_swf to the default value (false)
    --puppet-server-reports       List of report types to include on the puppetmaster (current: "foreman")
    --reset-puppet-server-reports Reset server_reports to the default value ("foreman")
    --puppet-server-storeconfigs-backend  Do you use storeconfigs? (note: not required)
                                  false if you don't, "active_record" for 2.X
                                  style db, "puppetdb" for puppetdb (current: UNDEF)
    --reset-puppet-server-storeconfigs-backend Reset server_storeconfigs_backend to the default value (UNDEF)
    --puppet-server-strict-variables  if set to true, it will throw parse errors
                                  when accessing undeclared variables. (current: false)
    --reset-puppet-server-strict-variables Reset server_strict_variables to the default value (false)
~~~

## General configuration settings

### alternate-content-source 

```
Error: No such sub-command 'alternate-content-source'.

See: 'hammer --help'.

```


### ansible roles 

```
---|------------------------------------|--------------------
ID | NAME                               | IMPORTED AT        
---|------------------------------------|--------------------
1  | RedHatInsights.insights-client     | 2023/04/29 16:49:55
2  | theforeman.foreman_scap_client     | 2023/04/29 16:49:55
3  | linux-system-roles.certificate     | 2023/04/29 16:49:55
4  | linux-system-roles.cockpit         | 2023/04/29 16:49:55
5  | linux-system-roles.crypto_policies | 2023/04/29 16:49:55
6  | linux-system-roles.firewall        | 2023/04/29 16:49:55
7  | linux-system-roles.ha_cluster      | 2023/04/29 16:49:55
8  | linux-system-roles.kdump           | 2023/04/29 16:49:55
9  | linux-system-roles.kernel_settings | 2023/04/29 16:49:55
10 | linux-system-roles.logging         | 2023/04/29 16:49:55
11 | linux-system-roles.metrics         | 2023/04/29 16:49:55
12 | linux-system-roles.nbde_client     | 2023/04/29 16:49:55
13 | linux-system-roles.nbde_server     | 2023/04/29 16:49:55
14 | linux-system-roles.network         | 2023/04/29 16:49:55
15 | linux-system-roles.postfix         | 2023/04/29 16:49:55
16 | linux-system-roles.selinux         | 2023/04/29 16:49:55
17 | linux-system-roles.ssh             | 2023/04/29 16:49:55
18 | linux-system-roles.sshd            | 2023/04/29 16:49:55
19 | linux-system-roles.storage         | 2023/04/29 16:49:55
20 | linux-system-roles.timesync        | 2023/04/29 16:49:55
21 | linux-system-roles.tlog            | 2023/04/29 16:49:55
22 | linux-system-roles.vpn             | 2023/04/29 16:49:55
23 | rhel-system-roles.certificate      | 2023/04/29 16:49:55
24 | rhel-system-roles.cockpit          | 2023/04/29 16:49:55
25 | rhel-system-roles.crypto_policies  | 2023/04/29 16:49:55
26 | rhel-system-roles.firewall         | 2023/04/29 16:49:55
27 | rhel-system-roles.ha_cluster       | 2023/04/29 16:49:55
28 | rhel-system-roles.kdump            | 2023/04/29 16:49:55
29 | rhel-system-roles.kernel_settings  | 2023/04/29 16:49:55
30 | rhel-system-roles.logging          | 2023/04/29 16:49:55
31 | rhel-system-roles.metrics          | 2023/04/29 16:49:55
32 | rhel-system-roles.nbde_client      | 2023/04/29 16:49:55
33 | rhel-system-roles.nbde_server      | 2023/04/29 16:49:55
34 | rhel-system-roles.network          | 2023/04/29 16:49:55
35 | rhel-system-roles.postfix          | 2023/04/29 16:49:55
36 | rhel-system-roles.selinux          | 2023/04/29 16:49:55
37 | rhel-system-roles.ssh              | 2023/04/29 16:49:55
38 | rhel-system-roles.sshd             | 2023/04/29 16:49:55
39 | rhel-system-roles.storage          | 2023/04/29 16:49:55
40 | rhel-system-roles.timesync         | 2023/04/29 16:49:55
41 | rhel-system-roles.tlog             | 2023/04/29 16:49:55
42 | rhel-system-roles.vpn              | 2023/04/29 16:49:55
---|------------------------------------|--------------------

```



```
Id:          1
Name:        RedHatInsights.insights-client
Imported at: 2023/04/29 16:49:55


```



```
Id:          2
Name:        theforeman.foreman_scap_client
Imported at: 2023/04/29 16:49:55


```



```
Id:          3
Name:        linux-system-roles.certificate
Imported at: 2023/04/29 16:49:55


```



```
Id:          4
Name:        linux-system-roles.cockpit
Imported at: 2023/04/29 16:49:55


```



```
Id:          5
Name:        linux-system-roles.crypto_policies
Imported at: 2023/04/29 16:49:55


```



```
Id:          6
Name:        linux-system-roles.firewall
Imported at: 2023/04/29 16:49:55


```



```
Id:          7
Name:        linux-system-roles.ha_cluster
Imported at: 2023/04/29 16:49:55


```



```
Id:          8
Name:        linux-system-roles.kdump
Imported at: 2023/04/29 16:49:55


```



```
Id:          9
Name:        linux-system-roles.kernel_settings
Imported at: 2023/04/29 16:49:55


```



```
Id:          10
Name:        linux-system-roles.logging
Imported at: 2023/04/29 16:49:55


```



```
Id:          11
Name:        linux-system-roles.metrics
Imported at: 2023/04/29 16:49:55


```



```
Id:          12
Name:        linux-system-roles.nbde_client
Imported at: 2023/04/29 16:49:55


```



```
Id:          13
Name:        linux-system-roles.nbde_server
Imported at: 2023/04/29 16:49:55


```



```
Id:          14
Name:        linux-system-roles.network
Imported at: 2023/04/29 16:49:55


```



```
Id:          15
Name:        linux-system-roles.postfix
Imported at: 2023/04/29 16:49:55


```



```
Id:          16
Name:        linux-system-roles.selinux
Imported at: 2023/04/29 16:49:55


```



```
Id:          17
Name:        linux-system-roles.ssh
Imported at: 2023/04/29 16:49:55


```



```
Id:          18
Name:        linux-system-roles.sshd
Imported at: 2023/04/29 16:49:55


```



```
Id:          19
Name:        linux-system-roles.storage
Imported at: 2023/04/29 16:49:55


```



```
Id:          20
Name:        linux-system-roles.timesync
Imported at: 2023/04/29 16:49:55


```



```
Id:          21
Name:        linux-system-roles.tlog
Imported at: 2023/04/29 16:49:55


```



```
Id:          22
Name:        linux-system-roles.vpn
Imported at: 2023/04/29 16:49:55


```



```
Id:          23
Name:        rhel-system-roles.certificate
Imported at: 2023/04/29 16:49:55


```



```
Id:          24
Name:        rhel-system-roles.cockpit
Imported at: 2023/04/29 16:49:55


```



```
Id:          25
Name:        rhel-system-roles.crypto_policies
Imported at: 2023/04/29 16:49:55


```



```
Id:          26
Name:        rhel-system-roles.firewall
Imported at: 2023/04/29 16:49:55


```



```
Id:          27
Name:        rhel-system-roles.ha_cluster
Imported at: 2023/04/29 16:49:55


```



```
Id:          28
Name:        rhel-system-roles.kdump
Imported at: 2023/04/29 16:49:55


```



```
Id:          29
Name:        rhel-system-roles.kernel_settings
Imported at: 2023/04/29 16:49:55


```



```
Id:          30
Name:        rhel-system-roles.logging
Imported at: 2023/04/29 16:49:55


```



```
Id:          31
Name:        rhel-system-roles.metrics
Imported at: 2023/04/29 16:49:55


```



```
Id:          32
Name:        rhel-system-roles.nbde_client
Imported at: 2023/04/29 16:49:55


```



```
Id:          33
Name:        rhel-system-roles.nbde_server
Imported at: 2023/04/29 16:49:55


```



```
Id:          34
Name:        rhel-system-roles.network
Imported at: 2023/04/29 16:49:55


```



```
Id:          35
Name:        rhel-system-roles.postfix
Imported at: 2023/04/29 16:49:55


```



```
Id:          36
Name:        rhel-system-roles.selinux
Imported at: 2023/04/29 16:49:55


```



```
Id:          37
Name:        rhel-system-roles.ssh
Imported at: 2023/04/29 16:49:55


```



```
Id:          38
Name:        rhel-system-roles.sshd
Imported at: 2023/04/29 16:49:55


```



```
Id:          39
Name:        rhel-system-roles.storage
Imported at: 2023/04/29 16:49:55


```



```
Id:          40
Name:        rhel-system-roles.timesync
Imported at: 2023/04/29 16:49:55


```



```
Id:          41
Name:        rhel-system-roles.tlog
Imported at: 2023/04/29 16:49:55


```



```
Id:          42
Name:        rhel-system-roles.vpn
Imported at: 2023/04/29 16:49:55


```


### ansible variables 

```
----|--------------------------------------------------------|----------------------------------------------------------------------------------|---------|-----------------------------------
ID  | VARIABLE                                               | DEFAULT VALUE                                                                    | TYPE    | ROLE                              
----|--------------------------------------------------------|----------------------------------------------------------------------------------|---------|-----------------------------------
75  | certificate_requests                                   | []                                                                               | array   | linux-system-roles.certificate    
268 | certificate_requests                                   | []                                                                               | array   | rhel-system-roles.certificate     
269 | certificate_wait                                       | true                                                                             | boolean | rhel-system-roles.certificate     
76  | certificate_wait                                       | true                                                                             | boolean | linux-system-roles.certificate    
273 | __cockpit_daemon                                       | cockpit.socket                                                                   | string  | rhel-system-roles.cockpit         
80  | __cockpit_daemon                                       | cockpit.socket                                                                   | string  | linux-system-roles.cockpit        
271 | cockpit_enabled                                        | true                                                                             | boolean | rhel-system-roles.cockpit         
78  | cockpit_enabled                                        | true                                                                             | boolean | linux-system-roles.cockpit        
77  | cockpit_packages                                       | default                                                                          | string  | linux-system-roles.cockpit        
270 | cockpit_packages                                       | default                                                                          | string  | rhel-system-roles.cockpit         
272 | cockpit_started                                        | true                                                                             | boolean | rhel-system-roles.cockpit         
79  | cockpit_started                                        | true                                                                             | boolean | linux-system-roles.cockpit        
81  | crypto_policies_policy                                 |                                                                                  | string  | linux-system-roles.crypto_policies
274 | crypto_policies_policy                                 |                                                                                  | string  | rhel-system-roles.crypto_policies 
276 | crypto_policies_reboot_ok                              |                                                                                  | boolean | rhel-system-roles.crypto_policies 
83  | crypto_policies_reboot_ok                              |                                                                                  | boolean | linux-system-roles.crypto_policies
82  | crypto_policies_reload                                 | true                                                                             | boolean | linux-system-roles.crypto_policies
275 | crypto_policies_reload                                 | true                                                                             | boolean | rhel-system-roles.crypto_policies 
277 | firewall                                               | []                                                                               | array   | rhel-system-roles.firewall        
84  | firewall                                               | []                                                                               | array   | linux-system-roles.firewall       
85  | firewall_setup_default_solution                        | true                                                                             | boolean | linux-system-roles.firewall       
278 | firewall_setup_default_solution                        | true                                                                             | boolean | rhel-system-roles.firewall        
61  | foreman_scap_client_ca_cert_path                       |                                                                                  | string  | theforeman.foreman_scap_client    
71  | foreman_scap_client_cron_splay                         | 600                                                                              | integer | theforeman.foreman_scap_client    
70  | foreman_scap_client_cron_splay_seed                    |                                                                                  | string  | theforeman.foreman_scap_client    
69  | foreman_scap_client_cron_template                      | templates/cron.j2                                                                | string  | theforeman.foreman_scap_client    
72  | foreman_scap_client_fetch_remote_resources             |                                                                                  | boolean | theforeman.foreman_scap_client    
62  | foreman_scap_client_host_cert_path                     |                                                                                  | string  | theforeman.foreman_scap_client    
63  | foreman_scap_client_host_private_key_path              |                                                                                  | string  | theforeman.foreman_scap_client    
74  | foreman_scap_client_http_proxy_port                    |                                                                                  | string  | theforeman.foreman_scap_client    
73  | foreman_scap_client_http_proxy_server                  |                                                                                  | string  | theforeman.foreman_scap_client    
60  | foreman_scap_client_policies                           | []                                                                               | array   | theforeman.foreman_scap_client    
59  | foreman_scap_client_port                               |                                                                                  | string  | theforeman.foreman_scap_client    
64  | foreman_scap_client_release                            | latest                                                                           | string  | theforeman.foreman_scap_client    
68  | foreman_scap_client_repo_gpg                           |                                                                                  | boolean | theforeman.foreman_scap_client    
67  | foreman_scap_client_repo_key                           | https://yum.theforeman.org/RPM-GPG-KEY-foreman                                   | string  | theforeman.foreman_scap_client    
66  | foreman_scap_client_repo_state                         | absent                                                                           | string  | theforeman.foreman_scap_client    
65  | foreman_scap_client_repo_url                           | https://yum.theforeman.org/client/{{ foreman_scap_client_release }}/el7/x86_64   | string  | theforeman.foreman_scap_client    
58  | foreman_scap_client_server                             |                                                                                  | string  | theforeman.foreman_scap_client    
57  | foreman_scap_client_state                              | present                                                                          | string  | theforeman.foreman_scap_client    
291 | ha_cluster_cluster_name                                | my-cluster                                                                       | string  | rhel-system-roles.ha_cluster      
98  | ha_cluster_cluster_name                                | my-cluster                                                                       | string  | linux-system-roles.ha_cluster     
280 | ha_cluster_cluster_present                             | true                                                                             | boolean | rhel-system-roles.ha_cluster      
87  | ha_cluster_cluster_present                             | true                                                                             | boolean | linux-system-roles.ha_cluster     
293 | ha_cluster_cluster_properties                          | []                                                                               | array   | rhel-system-roles.ha_cluster      
100 | ha_cluster_cluster_properties                          | []                                                                               | array   | linux-system-roles.ha_cluster     
105 | ha_cluster_constraints_colocation                      | []                                                                               | array   | linux-system-roles.ha_cluster     
298 | ha_cluster_constraints_colocation                      | []                                                                               | array   | rhel-system-roles.ha_cluster      
104 | ha_cluster_constraints_location                        | []                                                                               | array   | linux-system-roles.ha_cluster     
297 | ha_cluster_constraints_location                        | []                                                                               | array   | rhel-system-roles.ha_cluster      
299 | ha_cluster_constraints_order                           | []                                                                               | array   | rhel-system-roles.ha_cluster      
106 | ha_cluster_constraints_order                           | []                                                                               | array   | linux-system-roles.ha_cluster     
300 | ha_cluster_constraints_ticket                          | []                                                                               | array   | rhel-system-roles.ha_cluster      
107 | ha_cluster_constraints_ticket                          | []                                                                               | array   | linux-system-roles.ha_cluster     
93  | ha_cluster_corosync_key_src                            |                                                                                  | string  | linux-system-roles.ha_cluster     
286 | ha_cluster_corosync_key_src                            |                                                                                  | string  | rhel-system-roles.ha_cluster      
279 | ha_cluster_enable_repos                                | true                                                                             | boolean | rhel-system-roles.ha_cluster      
86  | ha_cluster_enable_repos                                | true                                                                             | boolean | linux-system-roles.ha_cluster     
282 | ha_cluster_extra_packages                              | []                                                                               | array   | rhel-system-roles.ha_cluster      
89  | ha_cluster_extra_packages                              | []                                                                               | array   | linux-system-roles.ha_cluster     
90  | ha_cluster_fence_agent_packages                        | ["fence-agents-all", "fence-virt"]                                               | array   | linux-system-roles.ha_cluster     
283 | ha_cluster_fence_agent_packages                        | ["fence-agents-all", "fence-virt"]                                               | array   | rhel-system-roles.ha_cluster      
95  | ha_cluster_fence_virt_key_src                          |                                                                                  | string  | linux-system-roles.ha_cluster     
288 | ha_cluster_fence_virt_key_src                          |                                                                                  | string  | rhel-system-roles.ha_cluster      
91  | ha_cluster_hacluster_password                          |                                                                                  | string  | linux-system-roles.ha_cluster     
284 | ha_cluster_hacluster_password                          |                                                                                  | string  | rhel-system-roles.ha_cluster      
94  | ha_cluster_pacemaker_key_src                           |                                                                                  | string  | linux-system-roles.ha_cluster     
287 | ha_cluster_pacemaker_key_src                           |                                                                                  | string  | rhel-system-roles.ha_cluster      
290 | ha_cluster_pcsd_private_key_src                        |                                                                                  | string  | rhel-system-roles.ha_cluster      
97  | ha_cluster_pcsd_private_key_src                        |                                                                                  | string  | linux-system-roles.ha_cluster     
96  | ha_cluster_pcsd_public_key_src                         |                                                                                  | string  | linux-system-roles.ha_cluster     
289 | ha_cluster_pcsd_public_key_src                         |                                                                                  | string  | rhel-system-roles.ha_cluster      
292 | ha_cluster_pcs_permission_list                         | [{"type"=>"group", "name"=>"haclient", "allow_list"=>["grant", "read", "write... | array   | rhel-system-roles.ha_cluster      
99  | ha_cluster_pcs_permission_list                         | [{"type"=>"group", "name"=>"haclient", "allow_list"=>["grant", "read", "write... | array   | linux-system-roles.ha_cluster     
285 | ha_cluster_regenerate_keys                             |                                                                                  | boolean | rhel-system-roles.ha_cluster      
92  | ha_cluster_regenerate_keys                             |                                                                                  | boolean | linux-system-roles.ha_cluster     
103 | ha_cluster_resource_clones                             | []                                                                               | array   | linux-system-roles.ha_cluster     
296 | ha_cluster_resource_clones                             | []                                                                               | array   | rhel-system-roles.ha_cluster      
102 | ha_cluster_resource_groups                             | []                                                                               | array   | linux-system-roles.ha_cluster     
295 | ha_cluster_resource_groups                             | []                                                                               | array   | rhel-system-roles.ha_cluster      
101 | ha_cluster_resource_primitives                         | []                                                                               | array   | linux-system-roles.ha_cluster     
294 | ha_cluster_resource_primitives                         | []                                                                               | array   | rhel-system-roles.ha_cluster      
281 | ha_cluster_start_on_boot                               | true                                                                             | boolean | rhel-system-roles.ha_cluster      
88  | ha_cluster_start_on_boot                               | true                                                                             | boolean | linux-system-roles.ha_cluster     
303 | kdump_core_collector                                   |                                                                                  | string  | rhel-system-roles.kdump           
110 | kdump_core_collector                                   |                                                                                  | string  | linux-system-roles.kdump          
109 | kdump_path                                             | /var/crash                                                                       | string  | linux-system-roles.kdump          
302 | kdump_path                                             | /var/crash                                                                       | string  | rhel-system-roles.kdump           
115 | kdump_reboot_ok                                        |                                                                                  | boolean | linux-system-roles.kdump          
308 | kdump_reboot_ok                                        |                                                                                  | boolean | rhel-system-roles.kdump           
307 | kdump_sshkey                                           | /root/.ssh/kdump_id_rsa                                                          | string  | rhel-system-roles.kdump           
114 | kdump_sshkey                                           | /root/.ssh/kdump_id_rsa                                                          | string  | linux-system-roles.kdump          
113 | kdump_ssh_server                                       |                                                                                  | string  | linux-system-roles.kdump          
306 | kdump_ssh_server                                       |                                                                                  | string  | rhel-system-roles.kdump           
112 | kdump_ssh_user                                         |                                                                                  | string  | linux-system-roles.kdump          
305 | kdump_ssh_user                                         |                                                                                  | string  | rhel-system-roles.kdump           
111 | kdump_system_action                                    | reboot                                                                           | string  | linux-system-roles.kdump          
304 | kdump_system_action                                    | reboot                                                                           | string  | rhel-system-roles.kdump           
108 | kdump_target                                           |                                                                                  | string  | linux-system-roles.kdump          
301 | kdump_target                                           |                                                                                  | string  | rhel-system-roles.kdump           
314 | kernel_settings_purge                                  |                                                                                  | boolean | rhel-system-roles.kernel_settings 
121 | kernel_settings_purge                                  |                                                                                  | boolean | linux-system-roles.kernel_settings
122 | kernel_settings_reboot_ok                              |                                                                                  | boolean | linux-system-roles.kernel_settings
315 | kernel_settings_reboot_ok                              |                                                                                  | boolean | rhel-system-roles.kernel_settings 
116 | kernel_settings_sysctl                                 | []                                                                               | array   | linux-system-roles.kernel_settings
309 | kernel_settings_sysctl                                 | []                                                                               | array   | rhel-system-roles.kernel_settings 
310 | kernel_settings_sysfs                                  | []                                                                               | array   | rhel-system-roles.kernel_settings 
117 | kernel_settings_sysfs                                  | []                                                                               | array   | linux-system-roles.kernel_settings
118 | kernel_settings_systemd_cpu_affinity                   |                                                                                  | string  | linux-system-roles.kernel_settings
311 | kernel_settings_systemd_cpu_affinity                   |                                                                                  | string  | rhel-system-roles.kernel_settings 
312 | kernel_settings_transparent_hugepages                  |                                                                                  | string  | rhel-system-roles.kernel_settings 
119 | kernel_settings_transparent_hugepages                  |                                                                                  | string  | linux-system-roles.kernel_settings
313 | kernel_settings_transparent_hugepages_defrag           |                                                                                  | string  | rhel-system-roles.kernel_settings 
120 | kernel_settings_transparent_hugepages_defrag           |                                                                                  | string  | linux-system-roles.kernel_settings
141 | logging_domain                                         | {{ ansible_domain if ansible_domain else ansible_hostname }}                     | string  | linux-system-roles.logging        
334 | logging_domain                                         | {{ ansible_domain if ansible_domain else ansible_hostname }}                     | string  | rhel-system-roles.logging         
335 | logging_elasticsearch_password                         |                                                                                  | string  | rhel-system-roles.logging         
142 | logging_elasticsearch_password                         |                                                                                  | string  | linux-system-roles.logging        
124 | logging_enabled                                        | true                                                                             | boolean | linux-system-roles.logging        
317 | logging_enabled                                        | true                                                                             | boolean | rhel-system-roles.logging         
127 | logging_flows                                          | []                                                                               | array   | linux-system-roles.logging        
320 | logging_flows                                          | []                                                                               | array   | rhel-system-roles.logging         
319 | logging_inputs                                         | []                                                                               | array   | rhel-system-roles.logging         
126 | logging_inputs                                         | []                                                                               | array   | linux-system-roles.logging        
137 | logging_mark                                           |                                                                                  | boolean | linux-system-roles.logging        
330 | logging_mark                                           |                                                                                  | boolean | rhel-system-roles.logging         
331 | logging_mark_interval                                  | 3600                                                                             | integer | rhel-system-roles.logging         
138 | logging_mark_interval                                  | 3600                                                                             | integer | linux-system-roles.logging        
332 | logging_max_message_size                               | 8192                                                                             | integer | rhel-system-roles.logging         
139 | logging_max_message_size                               | 8192                                                                             | integer | linux-system-roles.logging        
318 | logging_outputs                                        | []                                                                               | array   | rhel-system-roles.logging         
125 | logging_outputs                                        | []                                                                               | array   | linux-system-roles.logging        
140 | logging_pki_files                                      | []                                                                               | array   | linux-system-roles.logging        
333 | logging_pki_files                                      | []                                                                               | array   | rhel-system-roles.logging         
123 | logging_provider                                       | rsyslog                                                                          | string  | linux-system-roles.logging        
316 | logging_provider                                       | rsyslog                                                                          | string  | rhel-system-roles.logging         
321 | logging_purge_confs                                    |                                                                                  | boolean | rhel-system-roles.logging         
128 | logging_purge_confs                                    |                                                                                  | boolean | linux-system-roles.logging        
328 | logging_server_queue_size                              | 50000                                                                            | integer | rhel-system-roles.logging         
135 | logging_server_queue_size                              | 50000                                                                            | integer | linux-system-roles.logging        
327 | logging_server_queue_type                              | LinkedList                                                                       | string  | rhel-system-roles.logging         
134 | logging_server_queue_type                              | LinkedList                                                                       | string  | linux-system-roles.logging        
136 | logging_server_threads                                 | {{ logging_udp_threads | int + logging_tcp_threads | int }}                      | string  | linux-system-roles.logging        
329 | logging_server_threads                                 | {{ logging_udp_threads | int + logging_tcp_threads | int }}                      | string  | rhel-system-roles.logging         
322 | logging_system_log_dir                                 | /var/log                                                                         | string  | rhel-system-roles.logging         
129 | logging_system_log_dir                                 | /var/log                                                                         | string  | linux-system-roles.logging        
131 | logging_tcp_threads                                    | 1                                                                                | integer | linux-system-roles.logging        
324 | logging_tcp_threads                                    | 1                                                                                | integer | rhel-system-roles.logging         
326 | logging_udp_batch_size                                 | 32                                                                               | integer | rhel-system-roles.logging         
133 | logging_udp_batch_size                                 | 32                                                                               | integer | linux-system-roles.logging        
325 | logging_udp_system_time_requery                        | 2                                                                                | integer | rhel-system-roles.logging         
132 | logging_udp_system_time_requery                        | 2                                                                                | integer | linux-system-roles.logging        
130 | logging_udp_threads                                    | 1                                                                                | integer | linux-system-roles.logging        
323 | logging_udp_threads                                    | 1                                                                                | integer | rhel-system-roles.logging         
150 | metrics_from_bpftrace                                  |                                                                                  | boolean | linux-system-roles.metrics        
343 | metrics_from_bpftrace                                  |                                                                                  | boolean | rhel-system-roles.metrics         
341 | metrics_from_elasticsearch                             |                                                                                  | boolean | rhel-system-roles.metrics         
148 | metrics_from_elasticsearch                             |                                                                                  | boolean | linux-system-roles.metrics        
342 | metrics_from_mssql                                     |                                                                                  | boolean | rhel-system-roles.metrics         
149 | metrics_from_mssql                                     |                                                                                  | boolean | linux-system-roles.metrics        
339 | metrics_graph_service                                  |                                                                                  | boolean | rhel-system-roles.metrics         
146 | metrics_graph_service                                  |                                                                                  | boolean | linux-system-roles.metrics        
147 | metrics_into_elasticsearch                             |                                                                                  | boolean | linux-system-roles.metrics        
340 | metrics_into_elasticsearch                             |                                                                                  | boolean | rhel-system-roles.metrics         
337 | metrics_monitored_hosts                                | []                                                                               | array   | rhel-system-roles.metrics         
144 | metrics_monitored_hosts                                | []                                                                               | array   | linux-system-roles.metrics        
152 | metrics_password                                       | metrics                                                                          | string  | linux-system-roles.metrics        
345 | metrics_password                                       | metrics                                                                          | string  | rhel-system-roles.metrics         
346 | metrics_provider                                       | pcp                                                                              | string  | rhel-system-roles.metrics         
153 | metrics_provider                                       | pcp                                                                              | string  | linux-system-roles.metrics        
145 | metrics_query_service                                  |                                                                                  | boolean | linux-system-roles.metrics        
338 | metrics_query_service                                  |                                                                                  | boolean | rhel-system-roles.metrics         
143 | metrics_retention_days                                 | 7                                                                                | integer | linux-system-roles.metrics        
336 | metrics_retention_days                                 | 7                                                                                | integer | rhel-system-roles.metrics         
151 | metrics_username                                       | metrics                                                                          | string  | linux-system-roles.metrics        
344 | metrics_username                                       | metrics                                                                          | string  | rhel-system-roles.metrics         
155 | nbde_client_bindings                                   | []                                                                               | array   | linux-system-roles.nbde_client    
348 | nbde_client_bindings                                   | []                                                                               | array   | rhel-system-roles.nbde_client     
154 | nbde_client_provider                                   | clevis                                                                           | string  | linux-system-roles.nbde_client    
347 | nbde_client_provider                                   | clevis                                                                           | string  | rhel-system-roles.nbde_client     
160 | nbde_server_deploy_keys                                |                                                                                  | boolean | linux-system-roles.nbde_server    
353 | nbde_server_deploy_keys                                |                                                                                  | boolean | rhel-system-roles.nbde_server     
159 | nbde_server_fetch_keys                                 |                                                                                  | boolean | linux-system-roles.nbde_server    
352 | nbde_server_fetch_keys                                 |                                                                                  | boolean | rhel-system-roles.nbde_server     
161 | nbde_server_keys_dir                                   |                                                                                  | string  | linux-system-roles.nbde_server    
354 | nbde_server_keys_dir                                   |                                                                                  | string  | rhel-system-roles.nbde_server     
349 | nbde_server_provider                                   | tang                                                                             | string  | rhel-system-roles.nbde_server     
156 | nbde_server_provider                                   | tang                                                                             | string  | linux-system-roles.nbde_server    
158 | nbde_server_rotate_keys                                |                                                                                  | boolean | linux-system-roles.nbde_server    
351 | nbde_server_rotate_keys                                |                                                                                  | boolean | rhel-system-roles.nbde_server     
350 | nbde_server_service_state                              | started                                                                          | string  | rhel-system-roles.nbde_server     
157 | nbde_server_service_state                              | started                                                                          | string  | linux-system-roles.nbde_server    
163 | network_allow_restart                                  |                                                                                  | boolean | linux-system-roles.network        
356 | network_allow_restart                                  |                                                                                  | boolean | rhel-system-roles.network         
355 | network_connections                                    | []                                                                               | array   | rhel-system-roles.network         
162 | network_connections                                    | []                                                                               | array   | linux-system-roles.network        
360 | __network_ieee802_1x_connections_defined               | {{ network_connections | selectattr('ieee802_1x', 'defined') | list | count >... | string  | rhel-system-roles.network         
167 | __network_ieee802_1x_connections_defined               | {{ network_connections | selectattr('ieee802_1x', 'defined') | list | count >... | string  | linux-system-roles.network        
182 | network_packages                                       | {{ __network_provider_setup[network_provider]['packages'] }}                     | string  | linux-system-roles.network        
375 | network_packages                                       | {{ __network_provider_setup[network_provider]['packages'] }}                     | string  | rhel-system-roles.network         
174 | __network_packages_default_gobject_packages            | ["python{{ ansible_python['version']['major'] | replace('2', '')}}-gobject-ba... | array   | linux-system-roles.network        
367 | __network_packages_default_gobject_packages            | ["python{{ ansible_python['version']['major'] | replace('2', '')}}-gobject-ba... | array   | rhel-system-roles.network         
180 | __network_packages_default_initscripts                 | {{ __network_packages_default_initscripts_bridge|select()|list() + __network_... | string  | linux-system-roles.network        
373 | __network_packages_default_initscripts                 | {{ __network_packages_default_initscripts_bridge|select()|list() + __network_... | string  | rhel-system-roles.network         
371 | __network_packages_default_initscripts_bridge          | ["{% if network_connections|selectattr('type', 'defined')| selectattr('type',... | array   | rhel-system-roles.network         
178 | __network_packages_default_initscripts_bridge          | ["{% if network_connections|selectattr('type', 'defined')| selectattr('type',... | array   | linux-system-roles.network        
372 | __network_packages_default_initscripts_network_scripts | ["{% if ansible_distribution in ['RedHat', 'CentOS', 'OracleLinux', 'Rocky'] ... | array   | rhel-system-roles.network         
179 | __network_packages_default_initscripts_network_scripts | ["{% if ansible_distribution in ['RedHat', 'CentOS', 'OracleLinux', 'Rocky'] ... | array   | linux-system-roles.network        
176 | __network_packages_default_nm                          | {{['NetworkManager'] + __network_packages_default_gobject_packages|select()|l... | string  | linux-system-roles.network        
369 | __network_packages_default_nm                          | {{['NetworkManager'] + __network_packages_default_gobject_packages|select()|l... | string  | rhel-system-roles.network         
171 | __network_packages_default_team                        | ["{% if __network_team_connections_defined %}NetworkManager-team{% endif %}"]    | array   | linux-system-roles.network        
364 | __network_packages_default_team                        | ["{% if __network_team_connections_defined %}NetworkManager-team{% endif %}"]    | array   | rhel-system-roles.network         
169 | __network_packages_default_wireless                    | ["{% if __network_wireless_connections_defined %}NetworkManager-wifi{% endif ... | array   | linux-system-roles.network        
362 | __network_packages_default_wireless                    | ["{% if __network_wireless_connections_defined %}NetworkManager-wifi{% endif ... | array   | rhel-system-roles.network         
173 | __network_packages_default_wpa_supplicant              | ["{% if __network_wpa_supplicant_required %}wpa_supplicant{% endif %}"]          | array   | linux-system-roles.network        
366 | __network_packages_default_wpa_supplicant              | ["{% if __network_wpa_supplicant_required %}wpa_supplicant{% endif %}"]          | array   | rhel-system-roles.network         
166 | network_provider                                       | {{ __network_provider_current }}                                                 | string  | linux-system-roles.network        
359 | network_provider                                       | {{ __network_provider_current }}                                                 | string  | rhel-system-roles.network         
165 | __network_provider_current                             | {{ 'nm' if 'NetworkManager.service' in ansible_facts.services and ansible_fac... | string  | linux-system-roles.network        
358 | __network_provider_current                             | {{ 'nm' if 'NetworkManager.service' in ansible_facts.services and ansible_fac... | string  | rhel-system-roles.network         
357 | network_provider_os_default                            | {{ 'initscripts' if ansible_distribution in [ 'RedHat', 'CentOS', 'OracleLinu... | string  | rhel-system-roles.network         
164 | network_provider_os_default                            | {{ 'initscripts' if ansible_distribution in [ 'RedHat', 'CentOS', 'OracleLinu... | string  | linux-system-roles.network        
181 | __network_provider_setup                               | {"nm"=>{"service_name"=>"{{ __network_service_name_default_nm }}", "packages"... | hash    | linux-system-roles.network        
374 | __network_provider_setup                               | {"nm"=>{"service_name"=>"{{ __network_service_name_default_nm }}", "packages"... | hash    | rhel-system-roles.network         
376 | network_service_name                                   | {{ __network_provider_setup[network_provider]['service_name'] }}                 | string  | rhel-system-roles.network         
183 | network_service_name                                   | {{ __network_provider_setup[network_provider]['service_name'] }}                 | string  | linux-system-roles.network        
177 | __network_service_name_default_initscripts             | network                                                                          | string  | linux-system-roles.network        
370 | __network_service_name_default_initscripts             | network                                                                          | string  | rhel-system-roles.network         
175 | __network_service_name_default_nm                      | NetworkManager                                                                   | string  | linux-system-roles.network        
368 | __network_service_name_default_nm                      | NetworkManager                                                                   | string  | rhel-system-roles.network         
363 | __network_team_connections_defined                     | {{ network_connections | selectattr('type', 'defined') | selectattr('type', '... | string  | rhel-system-roles.network         
170 | __network_team_connections_defined                     | {{ network_connections | selectattr('type', 'defined') | selectattr('type', '... | string  | linux-system-roles.network        
361 | __network_wireless_connections_defined                 | {{ network_connections | selectattr('type', 'defined') | selectattr('type', '... | string  | rhel-system-roles.network         
168 | __network_wireless_connections_defined                 | {{ network_connections | selectattr('type', 'defined') | selectattr('type', '... | string  | linux-system-roles.network        
365 | __network_wpa_supplicant_required                      | {{ __network_ieee802_1x_connections_defined or __network_wireless_connections... | string  | rhel-system-roles.network         
172 | __network_wpa_supplicant_required                      | {{ __network_ieee802_1x_connections_defined or __network_wireless_connections... | string  | linux-system-roles.network        
186 | postfix_backup                                         |                                                                                  | boolean | linux-system-roles.postfix        
379 | postfix_backup                                         |                                                                                  | boolean | rhel-system-roles.postfix         
380 | postfix_backup_multiple                                | true                                                                             | boolean | rhel-system-roles.postfix         
187 | postfix_backup_multiple                                | true                                                                             | boolean | linux-system-roles.postfix        
378 | postfix_check                                          | true                                                                             | boolean | rhel-system-roles.postfix         
185 | postfix_check                                          | true                                                                             | boolean | linux-system-roles.postfix        
377 | postfix_conf                                           | {}                                                                               | hash    | rhel-system-roles.postfix         
184 | postfix_conf                                           | {}                                                                               | hash    | linux-system-roles.postfix        
388 | selinux_all_purge                                      |                                                                                  | boolean | rhel-system-roles.selinux         
195 | selinux_all_purge                                      |                                                                                  | boolean | linux-system-roles.selinux        
383 | selinux_booleans                                       | []                                                                               | array   | rhel-system-roles.selinux         
190 | selinux_booleans                                       | []                                                                               | array   | linux-system-roles.selinux        
196 | selinux_booleans_purge                                 |                                                                                  | boolean | linux-system-roles.selinux        
389 | selinux_booleans_purge                                 |                                                                                  | boolean | rhel-system-roles.selinux         
384 | selinux_fcontexts                                      | []                                                                               | array   | rhel-system-roles.selinux         
191 | selinux_fcontexts                                      | []                                                                               | array   | linux-system-roles.selinux        
390 | selinux_fcontexts_purge                                |                                                                                  | boolean | rhel-system-roles.selinux         
197 | selinux_fcontexts_purge                                |                                                                                  | boolean | linux-system-roles.selinux        
385 | selinux_logins                                         | []                                                                               | array   | rhel-system-roles.selinux         
192 | selinux_logins                                         | []                                                                               | array   | linux-system-roles.selinux        
199 | selinux_logins_purge                                   |                                                                                  | boolean | linux-system-roles.selinux        
392 | selinux_logins_purge                                   |                                                                                  | boolean | rhel-system-roles.selinux         
382 | selinux_policy                                         |                                                                                  | string  | rhel-system-roles.selinux         
189 | selinux_policy                                         |                                                                                  | string  | linux-system-roles.selinux        
386 | selinux_ports                                          | []                                                                               | array   | rhel-system-roles.selinux         
193 | selinux_ports                                          | []                                                                               | array   | linux-system-roles.selinux        
198 | selinux_ports_purge                                    |                                                                                  | boolean | linux-system-roles.selinux        
391 | selinux_ports_purge                                    |                                                                                  | boolean | rhel-system-roles.selinux         
194 | selinux_restore_dirs                                   | []                                                                               | array   | linux-system-roles.selinux        
387 | selinux_restore_dirs                                   | []                                                                               | array   | rhel-system-roles.selinux         
188 | selinux_state                                          |                                                                                  | string  | linux-system-roles.selinux        
381 | selinux_state                                          |                                                                                  | string  | rhel-system-roles.selinux         
203 | ssh                                                    | []                                                                               | array   | linux-system-roles.ssh            
396 | ssh                                                    | []                                                                               | array   | rhel-system-roles.ssh             
204 | ssh_additional_packages                                | []                                                                               | array   | linux-system-roles.ssh            
397 | ssh_additional_packages                                | []                                                                               | array   | rhel-system-roles.ssh             
208 | ssh_config_file                                        |                                                                                  | string  | linux-system-roles.ssh            
401 | ssh_config_file                                        |                                                                                  | string  | rhel-system-roles.ssh             
399 | ssh_config_group                                       |                                                                                  | string  | rhel-system-roles.ssh             
206 | ssh_config_group                                       |                                                                                  | string  | linux-system-roles.ssh            
400 | ssh_config_mode                                        |                                                                                  | string  | rhel-system-roles.ssh             
207 | ssh_config_mode                                        |                                                                                  | string  | linux-system-roles.ssh            
205 | ssh_config_owner                                       |                                                                                  | string  | linux-system-roles.ssh            
398 | ssh_config_owner                                       |                                                                                  | string  | rhel-system-roles.ssh             
414 | sshd                                                   | {}                                                                               | hash    | rhel-system-roles.sshd            
221 | sshd                                                   | {}                                                                               | hash    | linux-system-roles.sshd           
212 | sshd_allow_reload                                      | true                                                                             | boolean | linux-system-roles.sshd           
405 | sshd_allow_reload                                      | true                                                                             | boolean | rhel-system-roles.sshd            
217 | sshd_backup                                            | true                                                                             | boolean | linux-system-roles.sshd           
410 | sshd_backup                                            | true                                                                             | boolean | rhel-system-roles.sshd            
227 | sshd_binary                                            | /usr/sbin/sshd                                                                   | string  | linux-system-roles.sshd           
420 | sshd_binary                                            | /usr/sbin/sshd                                                                   | string  | rhel-system-roles.sshd            
222 | sshd_config_file                                       | {{ __sshd_config_file }}                                                         | string  | linux-system-roles.sshd           
415 | sshd_config_file                                       | {{ __sshd_config_file }}                                                         | string  | rhel-system-roles.sshd            
418 | sshd_config_group                                      | {{ __sshd_config_group }}                                                        | string  | rhel-system-roles.sshd            
225 | sshd_config_group                                      | {{ __sshd_config_group }}                                                        | string  | linux-system-roles.sshd           
419 | sshd_config_mode                                       | {{ __sshd_config_mode }}                                                         | string  | rhel-system-roles.sshd            
226 | sshd_config_mode                                       | {{ __sshd_config_mode }}                                                         | string  | linux-system-roles.sshd           
235 | sshd_config_namespace                                  |                                                                                  | string  | linux-system-roles.sshd           
428 | sshd_config_namespace                                  |                                                                                  | string  | rhel-system-roles.sshd            
224 | sshd_config_owner                                      | {{ __sshd_config_owner }}                                                        | string  | linux-system-roles.sshd           
417 | sshd_config_owner                                      | {{ __sshd_config_owner }}                                                        | string  | rhel-system-roles.sshd            
236 | __sshd_defaults                                        | {}                                                                               | hash    | linux-system-roles.sshd           
429 | __sshd_defaults                                        | {}                                                                               | hash    | rhel-system-roles.sshd            
209 | sshd_enable                                            | true                                                                             | boolean | linux-system-roles.sshd           
402 | sshd_enable                                            | true                                                                             | boolean | rhel-system-roles.sshd            
233 | sshd_hostkey_group                                     | {{ __sshd_hostkey_group }}                                                       | string  | linux-system-roles.sshd           
426 | sshd_hostkey_group                                     | {{ __sshd_hostkey_group }}                                                       | string  | rhel-system-roles.sshd            
427 | sshd_hostkey_mode                                      | {{ __sshd_hostkey_mode }}                                                        | string  | rhel-system-roles.sshd            
234 | sshd_hostkey_mode                                      | {{ __sshd_hostkey_mode }}                                                        | string  | linux-system-roles.sshd           
232 | sshd_hostkey_owner                                     | {{ __sshd_hostkey_owner }}                                                       | string  | linux-system-roles.sshd           
425 | sshd_hostkey_owner                                     | {{ __sshd_hostkey_owner }}                                                       | string  | rhel-system-roles.sshd            
213 | sshd_install_service                                   |                                                                                  | boolean | linux-system-roles.sshd           
406 | sshd_install_service                                   |                                                                                  | boolean | rhel-system-roles.sshd            
211 | sshd_manage_service                                    | true                                                                             | boolean | linux-system-roles.sshd           
404 | sshd_manage_service                                    | true                                                                             | boolean | rhel-system-roles.sshd            
430 | __sshd_os_supported                                    |                                                                                  | boolean | rhel-system-roles.sshd            
237 | __sshd_os_supported                                    |                                                                                  | boolean | linux-system-roles.sshd           
223 | sshd_packages                                          | []                                                                               | array   | linux-system-roles.sshd           
416 | sshd_packages                                          | []                                                                               | array   | rhel-system-roles.sshd            
202 | ssh_drop_in_name                                       | {{ __ssh_drop_in_name }}                                                         | string  | linux-system-roles.ssh            
395 | ssh_drop_in_name                                       | {{ __ssh_drop_in_name }}                                                         | string  | rhel-system-roles.ssh             
433 | __sshd_runtime_directory                               |                                                                                  | boolean | rhel-system-roles.sshd            
240 | __sshd_runtime_directory                               |                                                                                  | boolean | linux-system-roles.sshd           
241 | __sshd_runtime_directory_mode                          | 0755                                                                             | string  | linux-system-roles.sshd           
434 | __sshd_runtime_directory_mode                          | 0755                                                                             | string  | rhel-system-roles.sshd            
421 | sshd_service                                           | sshd                                                                             | string  | rhel-system-roles.sshd            
228 | sshd_service                                           | sshd                                                                             | string  | linux-system-roles.sshd           
408 | sshd_service_template_at_service                       | sshd@.service.j2                                                                 | string  | rhel-system-roles.sshd            
215 | sshd_service_template_at_service                       | sshd@.service.j2                                                                 | string  | linux-system-roles.sshd           
407 | sshd_service_template_service                          | sshd.service.j2                                                                  | string  | rhel-system-roles.sshd            
214 | sshd_service_template_service                          | sshd.service.j2                                                                  | string  | linux-system-roles.sshd           
216 | sshd_service_template_socket                           | sshd.socket.j2                                                                   | string  | linux-system-roles.sshd           
409 | sshd_service_template_socket                           | sshd.socket.j2                                                                   | string  | rhel-system-roles.sshd            
422 | sshd_sftp_server                                       | /usr/lib/openssh/sftp-server                                                     | string  | rhel-system-roles.sshd            
229 | sshd_sftp_server                                       | /usr/lib/openssh/sftp-server                                                     | string  | linux-system-roles.sshd           
403 | sshd_skip_defaults                                     |                                                                                  | boolean | rhel-system-roles.sshd            
210 | sshd_skip_defaults                                     |                                                                                  | boolean | linux-system-roles.sshd           
218 | sshd_sysconfig                                         |                                                                                  | boolean | linux-system-roles.sshd           
411 | sshd_sysconfig                                         |                                                                                  | boolean | rhel-system-roles.sshd            
412 | sshd_sysconfig_override_crypto_policy                  |                                                                                  | boolean | rhel-system-roles.sshd            
219 | sshd_sysconfig_override_crypto_policy                  |                                                                                  | boolean | linux-system-roles.sshd           
431 | __sshd_sysconfig_supports_crypto_policy                |                                                                                  | boolean | rhel-system-roles.sshd            
238 | __sshd_sysconfig_supports_crypto_policy                |                                                                                  | boolean | linux-system-roles.sshd           
239 | __sshd_sysconfig_supports_use_strong_rng               |                                                                                  | boolean | linux-system-roles.sshd           
432 | __sshd_sysconfig_supports_use_strong_rng               |                                                                                  | boolean | rhel-system-roles.sshd            
413 | sshd_sysconfig_use_strong_rng                          | 0                                                                                | integer | rhel-system-roles.sshd            
220 | sshd_sysconfig_use_strong_rng                          | 0                                                                                | integer | linux-system-roles.sshd           
423 | sshd_verify_hostkeys                                   | auto                                                                             | string  | rhel-system-roles.sshd            
230 | sshd_verify_hostkeys                                   | auto                                                                             | string  | linux-system-roles.sshd           
424 | __sshd_verify_hostkeys_default                         | []                                                                               | array   | rhel-system-roles.sshd            
231 | __sshd_verify_hostkeys_default                         | []                                                                               | array   | linux-system-roles.sshd           
201 | ssh_skip_defaults                                      | auto                                                                             | string  | linux-system-roles.ssh            
394 | ssh_skip_defaults                                      | auto                                                                             | string  | rhel-system-roles.ssh             
200 | ssh_user                                               |                                                                                  | string  | linux-system-roles.ssh            
393 | ssh_user                                               |                                                                                  | string  | rhel-system-roles.ssh             
437 | storage_disklabel_type                                 |                                                                                  | string  | rhel-system-roles.storage         
244 | storage_disklabel_type                                 |                                                                                  | string  | linux-system-roles.storage        
246 | storage_pool_defaults                                  | {"state"=>"present", "type"=>"lvm", "disks"=>[], "volumes"=>[], "encryption"=... | hash    | linux-system-roles.storage        
439 | storage_pool_defaults                                  | {"state"=>"present", "type"=>"lvm", "disks"=>[], "volumes"=>[], "encryption"=... | hash    | rhel-system-roles.storage         
435 | storage_provider                                       | blivet                                                                           | string  | rhel-system-roles.storage         
242 | storage_provider                                       | blivet                                                                           | string  | linux-system-roles.storage        
245 | storage_safe_mode                                      | true                                                                             | boolean | linux-system-roles.storage        
438 | storage_safe_mode                                      | true                                                                             | boolean | rhel-system-roles.storage         
436 | storage_use_partitions                                 |                                                                                  | string  | rhel-system-roles.storage         
243 | storage_use_partitions                                 |                                                                                  | string  | linux-system-roles.storage        
247 | storage_volume_defaults                                | {"state"=>"present", "type"=>"lvm", "size"=>0, "disks"=>[], "fs_type"=>"xfs",... | hash    | linux-system-roles.storage        
440 | storage_volume_defaults                                | {"state"=>"present", "type"=>"lvm", "size"=>0, "disks"=>[], "fs_type"=>"xfs",... | hash    | rhel-system-roles.storage         
250 | timesync_dhcp_ntp_servers                              |                                                                                  | boolean | linux-system-roles.timesync       
443 | timesync_dhcp_ntp_servers                              |                                                                                  | boolean | rhel-system-roles.timesync        
448 | timesync_max_distance                                  | 0                                                                                | integer | rhel-system-roles.timesync        
255 | timesync_max_distance                                  | 0                                                                                | integer | linux-system-roles.timesync       
252 | timesync_min_sources                                   | 1                                                                                | integer | linux-system-roles.timesync       
445 | timesync_min_sources                                   | 1                                                                                | integer | rhel-system-roles.timesync        
253 | timesync_ntp_hwts_interfaces                           | []                                                                               | array   | linux-system-roles.timesync       
446 | timesync_ntp_hwts_interfaces                           | []                                                                               | array   | rhel-system-roles.timesync        
254 | timesync_ntp_provider                                  |                                                                                  | string  | linux-system-roles.timesync       
447 | timesync_ntp_provider                                  |                                                                                  | string  | rhel-system-roles.timesync        
441 | timesync_ntp_servers                                   | []                                                                               | array   | rhel-system-roles.timesync        
248 | timesync_ntp_servers                                   | []                                                                               | array   | linux-system-roles.timesync       
442 | timesync_ptp_domains                                   | []                                                                               | array   | rhel-system-roles.timesync        
249 | timesync_ptp_domains                                   | []                                                                               | array   | linux-system-roles.timesync       
444 | timesync_step_threshold                                | -1.0                                                                             | real    | rhel-system-roles.timesync        
251 | timesync_step_threshold                                | -1.0                                                                             | real    | linux-system-roles.timesync       
454 | tlog_exclude_groups_sssd                               | []                                                                               | array   | rhel-system-roles.tlog            
261 | tlog_exclude_groups_sssd                               | []                                                                               | array   | linux-system-roles.tlog           
453 | tlog_exclude_users_sssd                                | []                                                                               | array   | rhel-system-roles.tlog            
260 | tlog_exclude_users_sssd                                | []                                                                               | array   | linux-system-roles.tlog           
452 | tlog_groups_sssd                                       | []                                                                               | array   | rhel-system-roles.tlog            
259 | tlog_groups_sssd                                       | []                                                                               | array   | linux-system-roles.tlog           
450 | tlog_scope_sssd                                        | none                                                                             | string  | rhel-system-roles.tlog            
257 | tlog_scope_sssd                                        | none                                                                             | string  | linux-system-roles.tlog           
451 | tlog_users_sssd                                        | []                                                                               | array   | rhel-system-roles.tlog            
258 | tlog_users_sssd                                        | []                                                                               | array   | linux-system-roles.tlog           
256 | tlog_use_sssd                                          | true                                                                             | boolean | linux-system-roles.tlog           
449 | tlog_use_sssd                                          | true                                                                             | boolean | rhel-system-roles.tlog            
263 | vpn_auth_method                                        | psk                                                                              | string  | linux-system-roles.vpn            
456 | vpn_auth_method                                        | psk                                                                              | string  | rhel-system-roles.vpn             
266 | vpn_connections                                        | []                                                                               | array   | linux-system-roles.vpn            
459 | vpn_connections                                        | []                                                                               | array   | rhel-system-roles.vpn             
460 | vpn_default_policy                                     | private-or-clear                                                                 | string  | rhel-system-roles.vpn             
267 | vpn_default_policy                                     | private-or-clear                                                                 | string  | linux-system-roles.vpn            
265 | vpn_opportunistic                                      |                                                                                  | boolean | linux-system-roles.vpn            
458 | vpn_opportunistic                                      |                                                                                  | boolean | rhel-system-roles.vpn             
455 | vpn_provider                                           | libreswan                                                                        | string  | rhel-system-roles.vpn             
262 | vpn_provider                                           | libreswan                                                                        | string  | linux-system-roles.vpn            
457 | vpn_regen_keys                                         |                                                                                  | boolean | rhel-system-roles.vpn             
264 | vpn_regen_keys                                         |                                                                                  | boolean | linux-system-roles.vpn            
----|--------------------------------------------------------|----------------------------------------------------------------------------------|---------|-----------------------------------

```



```
Id:              75
Variable:        certificate_requests
Default Value:   []
Type:            array
Role:            linux-system-roles.certificate
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              268
Variable:        certificate_requests
Default Value:   []
Type:            array
Role:            rhel-system-roles.certificate
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              269
Variable:        certificate_wait
Default Value:   true
Type:            boolean
Role:            rhel-system-roles.certificate
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              76
Variable:        certificate_wait
Default Value:   true
Type:            boolean
Role:            linux-system-roles.certificate
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              273
Variable:        __cockpit_daemon
Default Value:   cockpit.socket
Type:            string
Role:            rhel-system-roles.cockpit
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              80
Variable:        __cockpit_daemon
Default Value:   cockpit.socket
Type:            string
Role:            linux-system-roles.cockpit
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              271
Variable:        cockpit_enabled
Default Value:   true
Type:            boolean
Role:            rhel-system-roles.cockpit
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              78
Variable:        cockpit_enabled
Default Value:   true
Type:            boolean
Role:            linux-system-roles.cockpit
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              77
Variable:        cockpit_packages
Default Value:   default
Type:            string
Role:            linux-system-roles.cockpit
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              270
Variable:        cockpit_packages
Default Value:   default
Type:            string
Role:            rhel-system-roles.cockpit
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              272
Variable:        cockpit_started
Default Value:   true
Type:            boolean
Role:            rhel-system-roles.cockpit
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              79
Variable:        cockpit_started
Default Value:   true
Type:            boolean
Role:            linux-system-roles.cockpit
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              81
Variable:        crypto_policies_policy
Default Value:   
Type:            string
Role:            linux-system-roles.crypto_policies
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              274
Variable:        crypto_policies_policy
Default Value:   
Type:            string
Role:            rhel-system-roles.crypto_policies
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              276
Variable:        crypto_policies_reboot_ok
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.crypto_policies
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              83
Variable:        crypto_policies_reboot_ok
Default Value:   false
Type:            boolean
Role:            linux-system-roles.crypto_policies
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              82
Variable:        crypto_policies_reload
Default Value:   true
Type:            boolean
Role:            linux-system-roles.crypto_policies
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              275
Variable:        crypto_policies_reload
Default Value:   true
Type:            boolean
Role:            rhel-system-roles.crypto_policies
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              277
Variable:        firewall
Default Value:   []
Type:            array
Role:            rhel-system-roles.firewall
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              84
Variable:        firewall
Default Value:   []
Type:            array
Role:            linux-system-roles.firewall
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              85
Variable:        firewall_setup_default_solution
Default Value:   true
Type:            boolean
Role:            linux-system-roles.firewall
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              278
Variable:        firewall_setup_default_solution
Default Value:   true
Type:            boolean
Role:            rhel-system-roles.firewall
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              61
Variable:        foreman_scap_client_ca_cert_path
Default Value:   
Type:            string
Role:            theforeman.foreman_scap_client
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              71
Variable:        foreman_scap_client_cron_splay
Default Value:   600
Type:            integer
Role:            theforeman.foreman_scap_client
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              70
Variable:        foreman_scap_client_cron_splay_seed
Default Value:   
Type:            string
Role:            theforeman.foreman_scap_client
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              69
Variable:        foreman_scap_client_cron_template
Default Value:   templates/cron.j2
Type:            string
Role:            theforeman.foreman_scap_client
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              72
Variable:        foreman_scap_client_fetch_remote_resources
Default Value:   false
Type:            boolean
Role:            theforeman.foreman_scap_client
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              62
Variable:        foreman_scap_client_host_cert_path
Default Value:   
Type:            string
Role:            theforeman.foreman_scap_client
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              63
Variable:        foreman_scap_client_host_private_key_path
Default Value:   
Type:            string
Role:            theforeman.foreman_scap_client
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              74
Variable:        foreman_scap_client_http_proxy_port
Default Value:   
Type:            string
Role:            theforeman.foreman_scap_client
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              73
Variable:        foreman_scap_client_http_proxy_server
Default Value:   
Type:            string
Role:            theforeman.foreman_scap_client
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              60
Variable:        foreman_scap_client_policies
Default Value:   []
Type:            array
Role:            theforeman.foreman_scap_client
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              59
Variable:        foreman_scap_client_port
Default Value:   
Type:            string
Role:            theforeman.foreman_scap_client
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              64
Variable:        foreman_scap_client_release
Default Value:   latest
Type:            string
Role:            theforeman.foreman_scap_client
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              68
Variable:        foreman_scap_client_repo_gpg
Default Value:   false
Type:            boolean
Role:            theforeman.foreman_scap_client
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              67
Variable:        foreman_scap_client_repo_key
Default Value:   https://yum.theforeman.org/RPM-GPG-KEY-foreman
Type:            string
Role:            theforeman.foreman_scap_client
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              66
Variable:        foreman_scap_client_repo_state
Default Value:   absent
Type:            string
Role:            theforeman.foreman_scap_client
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              65
Variable:        foreman_scap_client_repo_url
Default Value:   https://yum.theforeman.org/client/{{ foreman_scap_client_release }}/el7/x86_64
Type:            string
Role:            theforeman.foreman_scap_client
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              58
Variable:        foreman_scap_client_server
Default Value:   
Type:            string
Role:            theforeman.foreman_scap_client
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              57
Variable:        foreman_scap_client_state
Default Value:   present
Type:            string
Role:            theforeman.foreman_scap_client
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              291
Variable:        ha_cluster_cluster_name
Default Value:   my-cluster
Type:            string
Role:            rhel-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              98
Variable:        ha_cluster_cluster_name
Default Value:   my-cluster
Type:            string
Role:            linux-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              280
Variable:        ha_cluster_cluster_present
Default Value:   true
Type:            boolean
Role:            rhel-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              87
Variable:        ha_cluster_cluster_present
Default Value:   true
Type:            boolean
Role:            linux-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              293
Variable:        ha_cluster_cluster_properties
Default Value:   []
Type:            array
Role:            rhel-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              100
Variable:        ha_cluster_cluster_properties
Default Value:   []
Type:            array
Role:            linux-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              105
Variable:        ha_cluster_constraints_colocation
Default Value:   []
Type:            array
Role:            linux-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              298
Variable:        ha_cluster_constraints_colocation
Default Value:   []
Type:            array
Role:            rhel-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              104
Variable:        ha_cluster_constraints_location
Default Value:   []
Type:            array
Role:            linux-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              297
Variable:        ha_cluster_constraints_location
Default Value:   []
Type:            array
Role:            rhel-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              299
Variable:        ha_cluster_constraints_order
Default Value:   []
Type:            array
Role:            rhel-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              106
Variable:        ha_cluster_constraints_order
Default Value:   []
Type:            array
Role:            linux-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              300
Variable:        ha_cluster_constraints_ticket
Default Value:   []
Type:            array
Role:            rhel-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              107
Variable:        ha_cluster_constraints_ticket
Default Value:   []
Type:            array
Role:            linux-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              93
Variable:        ha_cluster_corosync_key_src
Default Value:   
Type:            string
Role:            linux-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              286
Variable:        ha_cluster_corosync_key_src
Default Value:   
Type:            string
Role:            rhel-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              279
Variable:        ha_cluster_enable_repos
Default Value:   true
Type:            boolean
Role:            rhel-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              86
Variable:        ha_cluster_enable_repos
Default Value:   true
Type:            boolean
Role:            linux-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              282
Variable:        ha_cluster_extra_packages
Default Value:   []
Type:            array
Role:            rhel-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              89
Variable:        ha_cluster_extra_packages
Default Value:   []
Type:            array
Role:            linux-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              90
Variable:        ha_cluster_fence_agent_packages
Default Value:   ["fence-agents-all", "fence-virt"]
Type:            array
Role:            linux-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              283
Variable:        ha_cluster_fence_agent_packages
Default Value:   ["fence-agents-all", "fence-virt"]
Type:            array
Role:            rhel-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              95
Variable:        ha_cluster_fence_virt_key_src
Default Value:   
Type:            string
Role:            linux-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              288
Variable:        ha_cluster_fence_virt_key_src
Default Value:   
Type:            string
Role:            rhel-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              91
Variable:        ha_cluster_hacluster_password
Default Value:   
Type:            string
Role:            linux-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              284
Variable:        ha_cluster_hacluster_password
Default Value:   
Type:            string
Role:            rhel-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              94
Variable:        ha_cluster_pacemaker_key_src
Default Value:   
Type:            string
Role:            linux-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              287
Variable:        ha_cluster_pacemaker_key_src
Default Value:   
Type:            string
Role:            rhel-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              290
Variable:        ha_cluster_pcsd_private_key_src
Default Value:   
Type:            string
Role:            rhel-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              97
Variable:        ha_cluster_pcsd_private_key_src
Default Value:   
Type:            string
Role:            linux-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              96
Variable:        ha_cluster_pcsd_public_key_src
Default Value:   
Type:            string
Role:            linux-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              289
Variable:        ha_cluster_pcsd_public_key_src
Default Value:   
Type:            string
Role:            rhel-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              292
Variable:        ha_cluster_pcs_permission_list
Default Value:   [{"type"=>"group", "name"=>"haclient", "allow_list"=>["grant", "read", "write"]}]
Type:            array
Role:            rhel-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              99
Variable:        ha_cluster_pcs_permission_list
Default Value:   [{"type"=>"group", "name"=>"haclient", "allow_list"=>["grant", "read", "write"]}]
Type:            array
Role:            linux-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              285
Variable:        ha_cluster_regenerate_keys
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              92
Variable:        ha_cluster_regenerate_keys
Default Value:   false
Type:            boolean
Role:            linux-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              103
Variable:        ha_cluster_resource_clones
Default Value:   []
Type:            array
Role:            linux-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              296
Variable:        ha_cluster_resource_clones
Default Value:   []
Type:            array
Role:            rhel-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              102
Variable:        ha_cluster_resource_groups
Default Value:   []
Type:            array
Role:            linux-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              295
Variable:        ha_cluster_resource_groups
Default Value:   []
Type:            array
Role:            rhel-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              101
Variable:        ha_cluster_resource_primitives
Default Value:   []
Type:            array
Role:            linux-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              294
Variable:        ha_cluster_resource_primitives
Default Value:   []
Type:            array
Role:            rhel-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              281
Variable:        ha_cluster_start_on_boot
Default Value:   true
Type:            boolean
Role:            rhel-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              88
Variable:        ha_cluster_start_on_boot
Default Value:   true
Type:            boolean
Role:            linux-system-roles.ha_cluster
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:36
Updated at:      2023/04/29 16:50:36


```



```
Id:              303
Variable:        kdump_core_collector
Default Value:   
Type:            string
Role:            rhel-system-roles.kdump
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              110
Variable:        kdump_core_collector
Default Value:   
Type:            string
Role:            linux-system-roles.kdump
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              109
Variable:        kdump_path
Default Value:   /var/crash
Type:            string
Role:            linux-system-roles.kdump
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              302
Variable:        kdump_path
Default Value:   /var/crash
Type:            string
Role:            rhel-system-roles.kdump
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              115
Variable:        kdump_reboot_ok
Default Value:   false
Type:            boolean
Role:            linux-system-roles.kdump
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              308
Variable:        kdump_reboot_ok
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.kdump
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              307
Variable:        kdump_sshkey
Default Value:   /root/.ssh/kdump_id_rsa
Type:            string
Role:            rhel-system-roles.kdump
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              114
Variable:        kdump_sshkey
Default Value:   /root/.ssh/kdump_id_rsa
Type:            string
Role:            linux-system-roles.kdump
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              113
Variable:        kdump_ssh_server
Default Value:   
Type:            string
Role:            linux-system-roles.kdump
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              306
Variable:        kdump_ssh_server
Default Value:   
Type:            string
Role:            rhel-system-roles.kdump
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              112
Variable:        kdump_ssh_user
Default Value:   
Type:            string
Role:            linux-system-roles.kdump
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              305
Variable:        kdump_ssh_user
Default Value:   
Type:            string
Role:            rhel-system-roles.kdump
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              111
Variable:        kdump_system_action
Default Value:   reboot
Type:            string
Role:            linux-system-roles.kdump
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              304
Variable:        kdump_system_action
Default Value:   reboot
Type:            string
Role:            rhel-system-roles.kdump
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              108
Variable:        kdump_target
Default Value:   
Type:            string
Role:            linux-system-roles.kdump
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              301
Variable:        kdump_target
Default Value:   
Type:            string
Role:            rhel-system-roles.kdump
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              314
Variable:        kernel_settings_purge
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.kernel_settings
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              121
Variable:        kernel_settings_purge
Default Value:   false
Type:            boolean
Role:            linux-system-roles.kernel_settings
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              122
Variable:        kernel_settings_reboot_ok
Default Value:   false
Type:            boolean
Role:            linux-system-roles.kernel_settings
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              315
Variable:        kernel_settings_reboot_ok
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.kernel_settings
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              116
Variable:        kernel_settings_sysctl
Default Value:   []
Type:            array
Role:            linux-system-roles.kernel_settings
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              309
Variable:        kernel_settings_sysctl
Default Value:   []
Type:            array
Role:            rhel-system-roles.kernel_settings
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              310
Variable:        kernel_settings_sysfs
Default Value:   []
Type:            array
Role:            rhel-system-roles.kernel_settings
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              117
Variable:        kernel_settings_sysfs
Default Value:   []
Type:            array
Role:            linux-system-roles.kernel_settings
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              118
Variable:        kernel_settings_systemd_cpu_affinity
Default Value:   
Type:            string
Role:            linux-system-roles.kernel_settings
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              311
Variable:        kernel_settings_systemd_cpu_affinity
Default Value:   
Type:            string
Role:            rhel-system-roles.kernel_settings
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              312
Variable:        kernel_settings_transparent_hugepages
Default Value:   
Type:            string
Role:            rhel-system-roles.kernel_settings
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              119
Variable:        kernel_settings_transparent_hugepages
Default Value:   
Type:            string
Role:            linux-system-roles.kernel_settings
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              313
Variable:        kernel_settings_transparent_hugepages_defrag
Default Value:   
Type:            string
Role:            rhel-system-roles.kernel_settings
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              120
Variable:        kernel_settings_transparent_hugepages_defrag
Default Value:   
Type:            string
Role:            linux-system-roles.kernel_settings
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              141
Variable:        logging_domain
Default Value:   {{ ansible_domain if ansible_domain else ansible_hostname }}
Type:            string
Role:            linux-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              334
Variable:        logging_domain
Default Value:   {{ ansible_domain if ansible_domain else ansible_hostname }}
Type:            string
Role:            rhel-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              335
Variable:        logging_elasticsearch_password
Default Value:   
Type:            string
Role:            rhel-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              142
Variable:        logging_elasticsearch_password
Default Value:   
Type:            string
Role:            linux-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              124
Variable:        logging_enabled
Default Value:   true
Type:            boolean
Role:            linux-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              317
Variable:        logging_enabled
Default Value:   true
Type:            boolean
Role:            rhel-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              127
Variable:        logging_flows
Default Value:   []
Type:            array
Role:            linux-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              320
Variable:        logging_flows
Default Value:   []
Type:            array
Role:            rhel-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              319
Variable:        logging_inputs
Default Value:   []
Type:            array
Role:            rhel-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              126
Variable:        logging_inputs
Default Value:   []
Type:            array
Role:            linux-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              137
Variable:        logging_mark
Default Value:   false
Type:            boolean
Role:            linux-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              330
Variable:        logging_mark
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              331
Variable:        logging_mark_interval
Default Value:   3600
Type:            integer
Role:            rhel-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              138
Variable:        logging_mark_interval
Default Value:   3600
Type:            integer
Role:            linux-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              332
Variable:        logging_max_message_size
Default Value:   8192
Type:            integer
Role:            rhel-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              139
Variable:        logging_max_message_size
Default Value:   8192
Type:            integer
Role:            linux-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              318
Variable:        logging_outputs
Default Value:   []
Type:            array
Role:            rhel-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              125
Variable:        logging_outputs
Default Value:   []
Type:            array
Role:            linux-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              140
Variable:        logging_pki_files
Default Value:   []
Type:            array
Role:            linux-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              333
Variable:        logging_pki_files
Default Value:   []
Type:            array
Role:            rhel-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              123
Variable:        logging_provider
Default Value:   rsyslog
Type:            string
Role:            linux-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              316
Variable:        logging_provider
Default Value:   rsyslog
Type:            string
Role:            rhel-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              321
Variable:        logging_purge_confs
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              128
Variable:        logging_purge_confs
Default Value:   false
Type:            boolean
Role:            linux-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              328
Variable:        logging_server_queue_size
Default Value:   50000
Type:            integer
Role:            rhel-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              135
Variable:        logging_server_queue_size
Default Value:   50000
Type:            integer
Role:            linux-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              327
Variable:        logging_server_queue_type
Default Value:   LinkedList
Type:            string
Role:            rhel-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              134
Variable:        logging_server_queue_type
Default Value:   LinkedList
Type:            string
Role:            linux-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              136
Variable:        logging_server_threads
Default Value:   {{ logging_udp_threads | int + logging_tcp_threads | int }}
Type:            string
Role:            linux-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              329
Variable:        logging_server_threads
Default Value:   {{ logging_udp_threads | int + logging_tcp_threads | int }}
Type:            string
Role:            rhel-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              322
Variable:        logging_system_log_dir
Default Value:   /var/log
Type:            string
Role:            rhel-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              129
Variable:        logging_system_log_dir
Default Value:   /var/log
Type:            string
Role:            linux-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              131
Variable:        logging_tcp_threads
Default Value:   1
Type:            integer
Role:            linux-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              324
Variable:        logging_tcp_threads
Default Value:   1
Type:            integer
Role:            rhel-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              326
Variable:        logging_udp_batch_size
Default Value:   32
Type:            integer
Role:            rhel-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              133
Variable:        logging_udp_batch_size
Default Value:   32
Type:            integer
Role:            linux-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              325
Variable:        logging_udp_system_time_requery
Default Value:   2
Type:            integer
Role:            rhel-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              132
Variable:        logging_udp_system_time_requery
Default Value:   2
Type:            integer
Role:            linux-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              130
Variable:        logging_udp_threads
Default Value:   1
Type:            integer
Role:            linux-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:37
Updated at:      2023/04/29 16:50:37


```



```
Id:              323
Variable:        logging_udp_threads
Default Value:   1
Type:            integer
Role:            rhel-system-roles.logging
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              150
Variable:        metrics_from_bpftrace
Default Value:   false
Type:            boolean
Role:            linux-system-roles.metrics
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              343
Variable:        metrics_from_bpftrace
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.metrics
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              341
Variable:        metrics_from_elasticsearch
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.metrics
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              148
Variable:        metrics_from_elasticsearch
Default Value:   false
Type:            boolean
Role:            linux-system-roles.metrics
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              342
Variable:        metrics_from_mssql
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.metrics
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              149
Variable:        metrics_from_mssql
Default Value:   false
Type:            boolean
Role:            linux-system-roles.metrics
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              339
Variable:        metrics_graph_service
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.metrics
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              146
Variable:        metrics_graph_service
Default Value:   false
Type:            boolean
Role:            linux-system-roles.metrics
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              147
Variable:        metrics_into_elasticsearch
Default Value:   false
Type:            boolean
Role:            linux-system-roles.metrics
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              340
Variable:        metrics_into_elasticsearch
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.metrics
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              337
Variable:        metrics_monitored_hosts
Default Value:   []
Type:            array
Role:            rhel-system-roles.metrics
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              144
Variable:        metrics_monitored_hosts
Default Value:   []
Type:            array
Role:            linux-system-roles.metrics
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              152
Variable:        metrics_password
Default Value:   metrics
Type:            string
Role:            linux-system-roles.metrics
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              345
Variable:        metrics_password
Default Value:   metrics
Type:            string
Role:            rhel-system-roles.metrics
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              346
Variable:        metrics_provider
Default Value:   pcp
Type:            string
Role:            rhel-system-roles.metrics
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              153
Variable:        metrics_provider
Default Value:   pcp
Type:            string
Role:            linux-system-roles.metrics
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              145
Variable:        metrics_query_service
Default Value:   false
Type:            boolean
Role:            linux-system-roles.metrics
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              338
Variable:        metrics_query_service
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.metrics
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              143
Variable:        metrics_retention_days
Default Value:   7
Type:            integer
Role:            linux-system-roles.metrics
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              336
Variable:        metrics_retention_days
Default Value:   7
Type:            integer
Role:            rhel-system-roles.metrics
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:42
Updated at:      2023/04/29 16:50:42


```



```
Id:              151
Variable:        metrics_username
Default Value:   metrics
Type:            string
Role:            linux-system-roles.metrics
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              344
Variable:        metrics_username
Default Value:   metrics
Type:            string
Role:            rhel-system-roles.metrics
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              155
Variable:        nbde_client_bindings
Default Value:   []
Type:            array
Role:            linux-system-roles.nbde_client
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              348
Variable:        nbde_client_bindings
Default Value:   []
Type:            array
Role:            rhel-system-roles.nbde_client
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              154
Variable:        nbde_client_provider
Default Value:   clevis
Type:            string
Role:            linux-system-roles.nbde_client
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              347
Variable:        nbde_client_provider
Default Value:   clevis
Type:            string
Role:            rhel-system-roles.nbde_client
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              160
Variable:        nbde_server_deploy_keys
Default Value:   false
Type:            boolean
Role:            linux-system-roles.nbde_server
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              353
Variable:        nbde_server_deploy_keys
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.nbde_server
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              159
Variable:        nbde_server_fetch_keys
Default Value:   false
Type:            boolean
Role:            linux-system-roles.nbde_server
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              352
Variable:        nbde_server_fetch_keys
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.nbde_server
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              161
Variable:        nbde_server_keys_dir
Default Value:   
Type:            string
Role:            linux-system-roles.nbde_server
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              354
Variable:        nbde_server_keys_dir
Default Value:   
Type:            string
Role:            rhel-system-roles.nbde_server
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              349
Variable:        nbde_server_provider
Default Value:   tang
Type:            string
Role:            rhel-system-roles.nbde_server
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              156
Variable:        nbde_server_provider
Default Value:   tang
Type:            string
Role:            linux-system-roles.nbde_server
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              158
Variable:        nbde_server_rotate_keys
Default Value:   false
Type:            boolean
Role:            linux-system-roles.nbde_server
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              351
Variable:        nbde_server_rotate_keys
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.nbde_server
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              350
Variable:        nbde_server_service_state
Default Value:   started
Type:            string
Role:            rhel-system-roles.nbde_server
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              157
Variable:        nbde_server_service_state
Default Value:   started
Type:            string
Role:            linux-system-roles.nbde_server
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              163
Variable:        network_allow_restart
Default Value:   false
Type:            boolean
Role:            linux-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              356
Variable:        network_allow_restart
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              355
Variable:        network_connections
Default Value:   []
Type:            array
Role:            rhel-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              162
Variable:        network_connections
Default Value:   []
Type:            array
Role:            linux-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              360
Variable:        __network_ieee802_1x_connections_defined
Default Value:   {{ network_connections | selectattr('ieee802_1x', 'defined') | list | count > 0 }}
Type:            string
Role:            rhel-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              167
Variable:        __network_ieee802_1x_connections_defined
Default Value:   {{ network_connections | selectattr('ieee802_1x', 'defined') | list | count > 0 }}
Type:            string
Role:            linux-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              182
Variable:        network_packages
Default Value:   {{ __network_provider_setup[network_provider]['packages'] }}
Type:            string
Role:            linux-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              375
Variable:        network_packages
Default Value:   {{ __network_provider_setup[network_provider]['packages'] }}
Type:            string
Role:            rhel-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              174
Variable:        __network_packages_default_gobject_packages
Default Value:   ["python{{ ansible_python['version']['major'] | replace('2', '')}}-gobject-base"]
Type:            array
Role:            linux-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              367
Variable:        __network_packages_default_gobject_packages
Default Value:   ["python{{ ansible_python['version']['major'] | replace('2', '')}}-gobject-base"]
Type:            array
Role:            rhel-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              180
Variable:        __network_packages_default_initscripts
Default Value:   {{ __network_packages_default_initscripts_bridge|select()|list() + __network_packages_default_initscripts_network_scripts|select()|list() }}
Type:            string
Role:            linux-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              373
Variable:        __network_packages_default_initscripts
Default Value:   {{ __network_packages_default_initscripts_bridge|select()|list() + __network_packages_default_initscripts_network_scripts|select()|list() }}
Type:            string
Role:            rhel-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              371
Variable:        __network_packages_default_initscripts_bridge
Default Value:   ["{% if network_connections|selectattr('type', 'defined')| selectattr('type', 'match', '^bridge$')|list|count>0 and ansible_distribution in ['RedHat', 'CentOS', 'OracleLinux', 'Rocky'] and ansible_distribution_major_version is version('7', '<=') %}bridge-utils{% endif %}"]
Type:            array
Role:            rhel-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              178
Variable:        __network_packages_default_initscripts_bridge
Default Value:   ["{% if network_connections|selectattr('type', 'defined')| selectattr('type', 'match', '^bridge$')|list|count>0 and ansible_distribution in ['RedHat', 'CentOS', 'OracleLinux', 'Rocky'] and ansible_distribution_major_version is version('7', '<=') %}bridge-utils{% endif %}"]
Type:            array
Role:            linux-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              372
Variable:        __network_packages_default_initscripts_network_scripts
Default Value:   ["{% if ansible_distribution in ['RedHat', 'CentOS', 'OracleLinux', 'Rocky'] and ansible_distribution_major_version is version('7', '<=') %}initscripts{% else %}network-scripts{% endif %}"]
Type:            array
Role:            rhel-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              179
Variable:        __network_packages_default_initscripts_network_scripts
Default Value:   ["{% if ansible_distribution in ['RedHat', 'CentOS', 'OracleLinux', 'Rocky'] and ansible_distribution_major_version is version('7', '<=') %}initscripts{% else %}network-scripts{% endif %}"]
Type:            array
Role:            linux-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              176
Variable:        __network_packages_default_nm
Default Value:   {{['NetworkManager'] + __network_packages_default_gobject_packages|select()|list() + __network_packages_default_wpa_supplicant|select()|list() + __network_packages_default_wireless|select()|list() + __network_packages_default_team|select()|list()}}
Type:            string
Role:            linux-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              369
Variable:        __network_packages_default_nm
Default Value:   {{['NetworkManager'] + __network_packages_default_gobject_packages|select()|list() + __network_packages_default_wpa_supplicant|select()|list() + __network_packages_default_wireless|select()|list() + __network_packages_default_team|select()|list()}}
Type:            string
Role:            rhel-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              171
Variable:        __network_packages_default_team
Default Value:   ["{% if __network_team_connections_defined %}NetworkManager-team{% endif %}"]
Type:            array
Role:            linux-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              364
Variable:        __network_packages_default_team
Default Value:   ["{% if __network_team_connections_defined %}NetworkManager-team{% endif %}"]
Type:            array
Role:            rhel-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              169
Variable:        __network_packages_default_wireless
Default Value:   ["{% if __network_wireless_connections_defined %}NetworkManager-wifi{% endif %}"]
Type:            array
Role:            linux-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              362
Variable:        __network_packages_default_wireless
Default Value:   ["{% if __network_wireless_connections_defined %}NetworkManager-wifi{% endif %}"]
Type:            array
Role:            rhel-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              173
Variable:        __network_packages_default_wpa_supplicant
Default Value:   ["{% if __network_wpa_supplicant_required %}wpa_supplicant{% endif %}"]
Type:            array
Role:            linux-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              366
Variable:        __network_packages_default_wpa_supplicant
Default Value:   ["{% if __network_wpa_supplicant_required %}wpa_supplicant{% endif %}"]
Type:            array
Role:            rhel-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              166
Variable:        network_provider
Default Value:   {{ __network_provider_current }}
Type:            string
Role:            linux-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              359
Variable:        network_provider
Default Value:   {{ __network_provider_current }}
Type:            string
Role:            rhel-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              165
Variable:        __network_provider_current
Default Value:   {{ 'nm' if 'NetworkManager.service' in ansible_facts.services and ansible_facts.services['NetworkManager.service']['state'] == 'running' else 'initscripts' }}
Type:            string
Role:            linux-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              358
Variable:        __network_provider_current
Default Value:   {{ 'nm' if 'NetworkManager.service' in ansible_facts.services and ansible_facts.services['NetworkManager.service']['state'] == 'running' else 'initscripts' }}
Type:            string
Role:            rhel-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              357
Variable:        network_provider_os_default
Default Value:   {{ 'initscripts' if ansible_distribution in [ 'RedHat', 'CentOS', 'OracleLinux', 'Rocky' ] and ansible_distribution_major_version is version('7', '<') else 'nm' }}
Type:            string
Role:            rhel-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              164
Variable:        network_provider_os_default
Default Value:   {{ 'initscripts' if ansible_distribution in [ 'RedHat', 'CentOS', 'OracleLinux', 'Rocky' ] and ansible_distribution_major_version is version('7', '<') else 'nm' }}
Type:            string
Role:            linux-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              181
Variable:        __network_provider_setup
Default Value:   {"nm"=>{"service_name"=>"{{ __network_service_name_default_nm }}", "packages"=>"{{ __network_packages_default_nm }}"}, "initscripts"=>{"service_name"=>"{{ __network_service_name_default_initscripts }}", "packages"=>"{{ __network_packages_default_initscripts }}"}}
Type:            hash
Role:            linux-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              374
Variable:        __network_provider_setup
Default Value:   {"nm"=>{"service_name"=>"{{ __network_service_name_default_nm }}", "packages"=>"{{ __network_packages_default_nm }}"}, "initscripts"=>{"service_name"=>"{{ __network_service_name_default_initscripts }}", "packages"=>"{{ __network_packages_default_initscripts }}"}}
Type:            hash
Role:            rhel-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              376
Variable:        network_service_name
Default Value:   {{ __network_provider_setup[network_provider]['service_name'] }}
Type:            string
Role:            rhel-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              183
Variable:        network_service_name
Default Value:   {{ __network_provider_setup[network_provider]['service_name'] }}
Type:            string
Role:            linux-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              177
Variable:        __network_service_name_default_initscripts
Default Value:   network
Type:            string
Role:            linux-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              370
Variable:        __network_service_name_default_initscripts
Default Value:   network
Type:            string
Role:            rhel-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              175
Variable:        __network_service_name_default_nm
Default Value:   NetworkManager
Type:            string
Role:            linux-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              368
Variable:        __network_service_name_default_nm
Default Value:   NetworkManager
Type:            string
Role:            rhel-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              363
Variable:        __network_team_connections_defined
Default Value:   {{ network_connections | selectattr('type', 'defined') | selectattr('type', 'match', '^team$') | list | count > 0 }}
Type:            string
Role:            rhel-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              170
Variable:        __network_team_connections_defined
Default Value:   {{ network_connections | selectattr('type', 'defined') | selectattr('type', 'match', '^team$') | list | count > 0 }}
Type:            string
Role:            linux-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              361
Variable:        __network_wireless_connections_defined
Default Value:   {{ network_connections | selectattr('type', 'defined') | selectattr('type', 'match', '^wireless$') | list | count > 0 }}
Type:            string
Role:            rhel-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              168
Variable:        __network_wireless_connections_defined
Default Value:   {{ network_connections | selectattr('type', 'defined') | selectattr('type', 'match', '^wireless$') | list | count > 0 }}
Type:            string
Role:            linux-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              365
Variable:        __network_wpa_supplicant_required
Default Value:   {{ __network_ieee802_1x_connections_defined or __network_wireless_connections_defined }}
Type:            string
Role:            rhel-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              172
Variable:        __network_wpa_supplicant_required
Default Value:   {{ __network_ieee802_1x_connections_defined or __network_wireless_connections_defined }}
Type:            string
Role:            linux-system-roles.network
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:38
Updated at:      2023/04/29 16:50:38


```



```
Id:              186
Variable:        postfix_backup
Default Value:   false
Type:            boolean
Role:            linux-system-roles.postfix
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              379
Variable:        postfix_backup
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.postfix
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              380
Variable:        postfix_backup_multiple
Default Value:   true
Type:            boolean
Role:            rhel-system-roles.postfix
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              187
Variable:        postfix_backup_multiple
Default Value:   true
Type:            boolean
Role:            linux-system-roles.postfix
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              378
Variable:        postfix_check
Default Value:   true
Type:            boolean
Role:            rhel-system-roles.postfix
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              185
Variable:        postfix_check
Default Value:   true
Type:            boolean
Role:            linux-system-roles.postfix
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              377
Variable:        postfix_conf
Default Value:   {}
Type:            hash
Role:            rhel-system-roles.postfix
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:43
Updated at:      2023/04/29 16:50:43


```



```
Id:              184
Variable:        postfix_conf
Default Value:   {}
Type:            hash
Role:            linux-system-roles.postfix
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              388
Variable:        selinux_all_purge
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.selinux
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              195
Variable:        selinux_all_purge
Default Value:   false
Type:            boolean
Role:            linux-system-roles.selinux
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              383
Variable:        selinux_booleans
Default Value:   []
Type:            array
Role:            rhel-system-roles.selinux
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              190
Variable:        selinux_booleans
Default Value:   []
Type:            array
Role:            linux-system-roles.selinux
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              196
Variable:        selinux_booleans_purge
Default Value:   false
Type:            boolean
Role:            linux-system-roles.selinux
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              389
Variable:        selinux_booleans_purge
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.selinux
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              384
Variable:        selinux_fcontexts
Default Value:   []
Type:            array
Role:            rhel-system-roles.selinux
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              191
Variable:        selinux_fcontexts
Default Value:   []
Type:            array
Role:            linux-system-roles.selinux
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              390
Variable:        selinux_fcontexts_purge
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.selinux
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              197
Variable:        selinux_fcontexts_purge
Default Value:   false
Type:            boolean
Role:            linux-system-roles.selinux
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              385
Variable:        selinux_logins
Default Value:   []
Type:            array
Role:            rhel-system-roles.selinux
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              192
Variable:        selinux_logins
Default Value:   []
Type:            array
Role:            linux-system-roles.selinux
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              199
Variable:        selinux_logins_purge
Default Value:   false
Type:            boolean
Role:            linux-system-roles.selinux
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              392
Variable:        selinux_logins_purge
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.selinux
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              382
Variable:        selinux_policy
Default Value:   
Type:            string
Role:            rhel-system-roles.selinux
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              189
Variable:        selinux_policy
Default Value:   
Type:            string
Role:            linux-system-roles.selinux
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              386
Variable:        selinux_ports
Default Value:   []
Type:            array
Role:            rhel-system-roles.selinux
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              193
Variable:        selinux_ports
Default Value:   []
Type:            array
Role:            linux-system-roles.selinux
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              198
Variable:        selinux_ports_purge
Default Value:   false
Type:            boolean
Role:            linux-system-roles.selinux
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              391
Variable:        selinux_ports_purge
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.selinux
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              194
Variable:        selinux_restore_dirs
Default Value:   []
Type:            array
Role:            linux-system-roles.selinux
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              387
Variable:        selinux_restore_dirs
Default Value:   []
Type:            array
Role:            rhel-system-roles.selinux
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              188
Variable:        selinux_state
Default Value:   
Type:            string
Role:            linux-system-roles.selinux
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              381
Variable:        selinux_state
Default Value:   
Type:            string
Role:            rhel-system-roles.selinux
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              203
Variable:        ssh
Default Value:   []
Type:            array
Role:            linux-system-roles.ssh
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              396
Variable:        ssh
Default Value:   []
Type:            array
Role:            rhel-system-roles.ssh
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              204
Variable:        ssh_additional_packages
Default Value:   []
Type:            array
Role:            linux-system-roles.ssh
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              397
Variable:        ssh_additional_packages
Default Value:   []
Type:            array
Role:            rhel-system-roles.ssh
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              208
Variable:        ssh_config_file
Default Value:   
Type:            string
Role:            linux-system-roles.ssh
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              401
Variable:        ssh_config_file
Default Value:   
Type:            string
Role:            rhel-system-roles.ssh
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              399
Variable:        ssh_config_group
Default Value:   
Type:            string
Role:            rhel-system-roles.ssh
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              206
Variable:        ssh_config_group
Default Value:   
Type:            string
Role:            linux-system-roles.ssh
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              400
Variable:        ssh_config_mode
Default Value:   
Type:            string
Role:            rhel-system-roles.ssh
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              207
Variable:        ssh_config_mode
Default Value:   
Type:            string
Role:            linux-system-roles.ssh
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              205
Variable:        ssh_config_owner
Default Value:   
Type:            string
Role:            linux-system-roles.ssh
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              398
Variable:        ssh_config_owner
Default Value:   
Type:            string
Role:            rhel-system-roles.ssh
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              414
Variable:        sshd
Default Value:   {}
Type:            hash
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              221
Variable:        sshd
Default Value:   {}
Type:            hash
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              212
Variable:        sshd_allow_reload
Default Value:   true
Type:            boolean
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              405
Variable:        sshd_allow_reload
Default Value:   true
Type:            boolean
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              217
Variable:        sshd_backup
Default Value:   true
Type:            boolean
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              410
Variable:        sshd_backup
Default Value:   true
Type:            boolean
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              227
Variable:        sshd_binary
Default Value:   /usr/sbin/sshd
Type:            string
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              420
Variable:        sshd_binary
Default Value:   /usr/sbin/sshd
Type:            string
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              222
Variable:        sshd_config_file
Default Value:   {{ __sshd_config_file }}
Type:            string
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              415
Variable:        sshd_config_file
Default Value:   {{ __sshd_config_file }}
Type:            string
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              418
Variable:        sshd_config_group
Default Value:   {{ __sshd_config_group }}
Type:            string
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              225
Variable:        sshd_config_group
Default Value:   {{ __sshd_config_group }}
Type:            string
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              419
Variable:        sshd_config_mode
Default Value:   {{ __sshd_config_mode }}
Type:            string
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              226
Variable:        sshd_config_mode
Default Value:   {{ __sshd_config_mode }}
Type:            string
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              235
Variable:        sshd_config_namespace
Default Value:   
Type:            string
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              428
Variable:        sshd_config_namespace
Default Value:   
Type:            string
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              224
Variable:        sshd_config_owner
Default Value:   {{ __sshd_config_owner }}
Type:            string
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              417
Variable:        sshd_config_owner
Default Value:   {{ __sshd_config_owner }}
Type:            string
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              236
Variable:        __sshd_defaults
Default Value:   {}
Type:            hash
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              429
Variable:        __sshd_defaults
Default Value:   {}
Type:            hash
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              209
Variable:        sshd_enable
Default Value:   true
Type:            boolean
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              402
Variable:        sshd_enable
Default Value:   true
Type:            boolean
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              233
Variable:        sshd_hostkey_group
Default Value:   {{ __sshd_hostkey_group }}
Type:            string
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              426
Variable:        sshd_hostkey_group
Default Value:   {{ __sshd_hostkey_group }}
Type:            string
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              427
Variable:        sshd_hostkey_mode
Default Value:   {{ __sshd_hostkey_mode }}
Type:            string
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              234
Variable:        sshd_hostkey_mode
Default Value:   {{ __sshd_hostkey_mode }}
Type:            string
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              232
Variable:        sshd_hostkey_owner
Default Value:   {{ __sshd_hostkey_owner }}
Type:            string
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              425
Variable:        sshd_hostkey_owner
Default Value:   {{ __sshd_hostkey_owner }}
Type:            string
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              213
Variable:        sshd_install_service
Default Value:   false
Type:            boolean
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              406
Variable:        sshd_install_service
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              211
Variable:        sshd_manage_service
Default Value:   true
Type:            boolean
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              404
Variable:        sshd_manage_service
Default Value:   true
Type:            boolean
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              430
Variable:        __sshd_os_supported
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              237
Variable:        __sshd_os_supported
Default Value:   false
Type:            boolean
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              223
Variable:        sshd_packages
Default Value:   []
Type:            array
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              416
Variable:        sshd_packages
Default Value:   []
Type:            array
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              202
Variable:        ssh_drop_in_name
Default Value:   {{ __ssh_drop_in_name }}
Type:            string
Role:            linux-system-roles.ssh
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              395
Variable:        ssh_drop_in_name
Default Value:   {{ __ssh_drop_in_name }}
Type:            string
Role:            rhel-system-roles.ssh
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              433
Variable:        __sshd_runtime_directory
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              240
Variable:        __sshd_runtime_directory
Default Value:   false
Type:            boolean
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              241
Variable:        __sshd_runtime_directory_mode
Default Value:   0755
Type:            string
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              434
Variable:        __sshd_runtime_directory_mode
Default Value:   0755
Type:            string
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              421
Variable:        sshd_service
Default Value:   sshd
Type:            string
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              228
Variable:        sshd_service
Default Value:   sshd
Type:            string
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              408
Variable:        sshd_service_template_at_service
Default Value:   sshd@.service.j2
Type:            string
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              215
Variable:        sshd_service_template_at_service
Default Value:   sshd@.service.j2
Type:            string
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              407
Variable:        sshd_service_template_service
Default Value:   sshd.service.j2
Type:            string
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              214
Variable:        sshd_service_template_service
Default Value:   sshd.service.j2
Type:            string
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              216
Variable:        sshd_service_template_socket
Default Value:   sshd.socket.j2
Type:            string
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              409
Variable:        sshd_service_template_socket
Default Value:   sshd.socket.j2
Type:            string
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              422
Variable:        sshd_sftp_server
Default Value:   /usr/lib/openssh/sftp-server
Type:            string
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              229
Variable:        sshd_sftp_server
Default Value:   /usr/lib/openssh/sftp-server
Type:            string
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              403
Variable:        sshd_skip_defaults
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              210
Variable:        sshd_skip_defaults
Default Value:   false
Type:            boolean
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              218
Variable:        sshd_sysconfig
Default Value:   false
Type:            boolean
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              411
Variable:        sshd_sysconfig
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              412
Variable:        sshd_sysconfig_override_crypto_policy
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              219
Variable:        sshd_sysconfig_override_crypto_policy
Default Value:   false
Type:            boolean
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              431
Variable:        __sshd_sysconfig_supports_crypto_policy
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              238
Variable:        __sshd_sysconfig_supports_crypto_policy
Default Value:   false
Type:            boolean
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              239
Variable:        __sshd_sysconfig_supports_use_strong_rng
Default Value:   false
Type:            boolean
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              432
Variable:        __sshd_sysconfig_supports_use_strong_rng
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              413
Variable:        sshd_sysconfig_use_strong_rng
Default Value:   0
Type:            integer
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              220
Variable:        sshd_sysconfig_use_strong_rng
Default Value:   0
Type:            integer
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              423
Variable:        sshd_verify_hostkeys
Default Value:   auto
Type:            string
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              230
Variable:        sshd_verify_hostkeys
Default Value:   auto
Type:            string
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              424
Variable:        __sshd_verify_hostkeys_default
Default Value:   []
Type:            array
Role:            rhel-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              231
Variable:        __sshd_verify_hostkeys_default
Default Value:   []
Type:            array
Role:            linux-system-roles.sshd
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              201
Variable:        ssh_skip_defaults
Default Value:   auto
Type:            string
Role:            linux-system-roles.ssh
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              394
Variable:        ssh_skip_defaults
Default Value:   auto
Type:            string
Role:            rhel-system-roles.ssh
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              200
Variable:        ssh_user
Default Value:   
Type:            string
Role:            linux-system-roles.ssh
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:39
Updated at:      2023/04/29 16:50:39


```



```
Id:              393
Variable:        ssh_user
Default Value:   
Type:            string
Role:            rhel-system-roles.ssh
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:44
Updated at:      2023/04/29 16:50:44


```



```
Id:              437
Variable:        storage_disklabel_type
Default Value:   
Type:            string
Role:            rhel-system-roles.storage
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              244
Variable:        storage_disklabel_type
Default Value:   
Type:            string
Role:            linux-system-roles.storage
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              246
Variable:        storage_pool_defaults
Default Value:   {"state"=>"present", "type"=>"lvm", "disks"=>[], "volumes"=>[], "encryption"=>false, "encryption_password"=>nil, "encryption_key"=>nil, "encryption_cipher"=>nil, "encryption_key_size"=>nil, "encryption_luks_version"=>nil, "raid_level"=>nil, "raid_device_count"=>nil, "raid_spare_count"=>nil, "raid_chunk_size"=>nil, "raid_metadata_version"=>nil}
Type:            hash
Role:            linux-system-roles.storage
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              439
Variable:        storage_pool_defaults
Default Value:   {"state"=>"present", "type"=>"lvm", "disks"=>[], "volumes"=>[], "encryption"=>false, "encryption_password"=>nil, "encryption_key"=>nil, "encryption_cipher"=>nil, "encryption_key_size"=>nil, "encryption_luks_version"=>nil, "raid_level"=>nil, "raid_device_count"=>nil, "raid_spare_count"=>nil, "raid_chunk_size"=>nil, "raid_metadata_version"=>nil}
Type:            hash
Role:            rhel-system-roles.storage
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              435
Variable:        storage_provider
Default Value:   blivet
Type:            string
Role:            rhel-system-roles.storage
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              242
Variable:        storage_provider
Default Value:   blivet
Type:            string
Role:            linux-system-roles.storage
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              245
Variable:        storage_safe_mode
Default Value:   true
Type:            boolean
Role:            linux-system-roles.storage
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              438
Variable:        storage_safe_mode
Default Value:   true
Type:            boolean
Role:            rhel-system-roles.storage
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              436
Variable:        storage_use_partitions
Default Value:   
Type:            string
Role:            rhel-system-roles.storage
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              243
Variable:        storage_use_partitions
Default Value:   
Type:            string
Role:            linux-system-roles.storage
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              247
Variable:        storage_volume_defaults
Default Value:   {"state"=>"present", "type"=>"lvm", "size"=>0, "disks"=>[], "fs_type"=>"xfs", "fs_label"=>"", "fs_create_options"=>"", "fs_overwrite_existing"=>true, "mount_point"=>"", "mount_options"=>"defaults", "mount_check"=>0, "mount_passno"=>0, "mount_device_identifier"=>"uuid", "raid_level"=>nil, "raid_device_count"=>nil, "raid_spare_count"=>nil, "raid_chunk_size"=>nil, "raid_metadata_version"=>nil, "encryption"=>false, "encryption_password"=>nil, "encryption_key"=>nil, "encryption_cipher"=>nil, "encryption_key_size"=>nil, "encryption_luks_version"=>nil, "compression"=>nil, "deduplication"=>nil, "vdo_pool_size"=>nil, "cached"=>false, "cache_size"=>0, "cache_mode"=>nil, "cache_devices"=>[]}
Type:            hash
Role:            linux-system-roles.storage
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              440
Variable:        storage_volume_defaults
Default Value:   {"state"=>"present", "type"=>"lvm", "size"=>0, "disks"=>[], "fs_type"=>"xfs", "fs_label"=>"", "fs_create_options"=>"", "fs_overwrite_existing"=>true, "mount_point"=>"", "mount_options"=>"defaults", "mount_check"=>0, "mount_passno"=>0, "mount_device_identifier"=>"uuid", "raid_level"=>nil, "raid_device_count"=>nil, "raid_spare_count"=>nil, "raid_chunk_size"=>nil, "raid_metadata_version"=>nil, "encryption"=>false, "encryption_password"=>nil, "encryption_key"=>nil, "encryption_cipher"=>nil, "encryption_key_size"=>nil, "encryption_luks_version"=>nil, "compression"=>nil, "deduplication"=>nil, "vdo_pool_size"=>nil, "cached"=>false, "cache_size"=>0, "cache_mode"=>nil, "cache_devices"=>[]}
Type:            hash
Role:            rhel-system-roles.storage
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              250
Variable:        timesync_dhcp_ntp_servers
Default Value:   false
Type:            boolean
Role:            linux-system-roles.timesync
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              443
Variable:        timesync_dhcp_ntp_servers
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.timesync
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              448
Variable:        timesync_max_distance
Default Value:   0
Type:            integer
Role:            rhel-system-roles.timesync
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              255
Variable:        timesync_max_distance
Default Value:   0
Type:            integer
Role:            linux-system-roles.timesync
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              252
Variable:        timesync_min_sources
Default Value:   1
Type:            integer
Role:            linux-system-roles.timesync
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              445
Variable:        timesync_min_sources
Default Value:   1
Type:            integer
Role:            rhel-system-roles.timesync
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              253
Variable:        timesync_ntp_hwts_interfaces
Default Value:   []
Type:            array
Role:            linux-system-roles.timesync
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              446
Variable:        timesync_ntp_hwts_interfaces
Default Value:   []
Type:            array
Role:            rhel-system-roles.timesync
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              254
Variable:        timesync_ntp_provider
Default Value:   
Type:            string
Role:            linux-system-roles.timesync
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              447
Variable:        timesync_ntp_provider
Default Value:   
Type:            string
Role:            rhel-system-roles.timesync
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              441
Variable:        timesync_ntp_servers
Default Value:   []
Type:            array
Role:            rhel-system-roles.timesync
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              248
Variable:        timesync_ntp_servers
Default Value:   []
Type:            array
Role:            linux-system-roles.timesync
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              442
Variable:        timesync_ptp_domains
Default Value:   []
Type:            array
Role:            rhel-system-roles.timesync
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              249
Variable:        timesync_ptp_domains
Default Value:   []
Type:            array
Role:            linux-system-roles.timesync
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              444
Variable:        timesync_step_threshold
Default Value:   -1.0
Type:            real
Role:            rhel-system-roles.timesync
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              251
Variable:        timesync_step_threshold
Default Value:   -1.0
Type:            real
Role:            linux-system-roles.timesync
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              454
Variable:        tlog_exclude_groups_sssd
Default Value:   []
Type:            array
Role:            rhel-system-roles.tlog
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:46
Updated at:      2023/04/29 16:50:46


```



```
Id:              261
Variable:        tlog_exclude_groups_sssd
Default Value:   []
Type:            array
Role:            linux-system-roles.tlog
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              453
Variable:        tlog_exclude_users_sssd
Default Value:   []
Type:            array
Role:            rhel-system-roles.tlog
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:46
Updated at:      2023/04/29 16:50:46


```



```
Id:              260
Variable:        tlog_exclude_users_sssd
Default Value:   []
Type:            array
Role:            linux-system-roles.tlog
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              452
Variable:        tlog_groups_sssd
Default Value:   []
Type:            array
Role:            rhel-system-roles.tlog
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:46
Updated at:      2023/04/29 16:50:46


```



```
Id:              259
Variable:        tlog_groups_sssd
Default Value:   []
Type:            array
Role:            linux-system-roles.tlog
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              450
Variable:        tlog_scope_sssd
Default Value:   none
Type:            string
Role:            rhel-system-roles.tlog
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              257
Variable:        tlog_scope_sssd
Default Value:   none
Type:            string
Role:            linux-system-roles.tlog
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              451
Variable:        tlog_users_sssd
Default Value:   []
Type:            array
Role:            rhel-system-roles.tlog
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              258
Variable:        tlog_users_sssd
Default Value:   []
Type:            array
Role:            linux-system-roles.tlog
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              256
Variable:        tlog_use_sssd
Default Value:   true
Type:            boolean
Role:            linux-system-roles.tlog
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:40
Updated at:      2023/04/29 16:50:40


```



```
Id:              449
Variable:        tlog_use_sssd
Default Value:   true
Type:            boolean
Role:            rhel-system-roles.tlog
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:45
Updated at:      2023/04/29 16:50:45


```



```
Id:              263
Variable:        vpn_auth_method
Default Value:   psk
Type:            string
Role:            linux-system-roles.vpn
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              456
Variable:        vpn_auth_method
Default Value:   psk
Type:            string
Role:            rhel-system-roles.vpn
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:46
Updated at:      2023/04/29 16:50:46


```



```
Id:              266
Variable:        vpn_connections
Default Value:   []
Type:            array
Role:            linux-system-roles.vpn
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              459
Variable:        vpn_connections
Default Value:   []
Type:            array
Role:            rhel-system-roles.vpn
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:46
Updated at:      2023/04/29 16:50:46


```



```
Id:              460
Variable:        vpn_default_policy
Default Value:   private-or-clear
Type:            string
Role:            rhel-system-roles.vpn
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:46
Updated at:      2023/04/29 16:50:46


```



```
Id:              267
Variable:        vpn_default_policy
Default Value:   private-or-clear
Type:            string
Role:            linux-system-roles.vpn
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              265
Variable:        vpn_opportunistic
Default Value:   false
Type:            boolean
Role:            linux-system-roles.vpn
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              458
Variable:        vpn_opportunistic
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.vpn
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:46
Updated at:      2023/04/29 16:50:46


```



```
Id:              455
Variable:        vpn_provider
Default Value:   libreswan
Type:            string
Role:            rhel-system-roles.vpn
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:46
Updated at:      2023/04/29 16:50:46


```



```
Id:              262
Variable:        vpn_provider
Default Value:   libreswan
Type:            string
Role:            linux-system-roles.vpn
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```



```
Id:              457
Variable:        vpn_regen_keys
Default Value:   false
Type:            boolean
Role:            rhel-system-roles.vpn
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:46
Updated at:      2023/04/29 16:50:46


```



```
Id:              264
Variable:        vpn_regen_keys
Default Value:   false
Type:            boolean
Role:            linux-system-roles.vpn
Description:     
Hidden Value?:   yes
Validator:       
    Type: 
    Rule:
Override values: 
    Override:            no
    Merge overrides:     no
    Merge default value: no
    Avoid duplicates:    no
    Order:               
      fqdn
      hostgroup
      os
      domain
    Values:
Created at:      2023/04/29 16:50:41
Updated at:      2023/04/29 16:50:41


```


### architecture 

```
---|-------
ID | NAME  
---|-------
1  | x86_64
2  | i386  
---|-------

```



```
Id:                1
Name:              x86_64
Operating systems: 
    RedHat 7.9
    RedHat 8.6
Created at:        2023/04/29 00:18:11
Updated at:        2023/04/29 00:18:11


```



```
Id:                2
Name:              i386
Operating systems: 

Created at:        2023/04/29 00:18:11
Updated at:        2023/04/29 00:18:11


```


### auth-source external 

```
Error: No such sub-command 'external'.

See: 'hammer auth-source --help'.

```


### capsule 

```
---|----------------------|-----------------------------------|--------------------------
ID | NAME                 | URL                               | FEATURES                 
---|----------------------|-----------------------------------|--------------------------
1  | sat-reporting.p1.lab | https://sat-reporting.p1.lab:9090 | Pulp, Dynflow, Ansible...
---|----------------------|-----------------------------------|--------------------------

```



```
Id:            1
Name:          sat-reporting.p1.lab
URL:           https://sat-reporting.p1.lab:9090
Features:      
    Pulp
    Dynflow
    Ansible
    Discovery
    Openscap
    SSH
    Templates
    TFTP
    Puppet CA
    Puppet
    Logs
    HTTPBoot
    Realm
Locations:     
    DefaultLocation
Organizations: 
    RHCI
    Wëird Orgañization 鋼の錬金術師
Created at:    2023/04/29 00:30:21
Updated at:    2023/04/29 00:30:22


```


### compute-profile 

```
---|----------------
ID | NAME           
---|----------------
1  | 1-Small        
2  | 2-Medium       
3  | 3-Large        
5  | vSphere-LargeVM
4  | vSphere-SmallVM
---|----------------

```



```
Id:                 1
Name:               1-Small
Created at:         2023/04/29 00:18:23
Updated at:         2023/04/29 00:18:23
Compute attributes:


```



```
Id:                 2
Name:               2-Medium
Created at:         2023/04/29 00:18:23
Updated at:         2023/04/29 00:18:23
Compute attributes:


```



```
Id:                 3
Name:               3-Large
Created at:         2023/04/29 00:18:23
Updated at:         2023/04/29 00:18:23
Compute attributes:


```



```
Id:                 5
Name:               vSphere-LargeVM
Created at:         2023/04/29 11:04:43
Updated at:         2023/04/29 11:04:43
Compute attributes: 
 1) Id:               2
    Name:             8 CPUs and 32728 MB memory
    Compute Resource: vcenter.p1.lab
    VM attributes:    {"cpus"=>"8", "corespersocket"=>"8", "memory_mb"=>"32728", "firmware"=>"automatic", "cluster"=>"ClusterP1", "resource_pool"=>"Resources", "path"=>"/Datacenters/DatacenterP1/vm", "guest_id"=>"rhel8_64Guest", "hardware_version"=>"Default", "memoryHotAddEnabled"=>"0", "cpuHotAddEnabled"=>"0", "add_cdrom"=>"0", "annotation"=>"", "scsi_controllers"=>[{"type"=>"VirtualLsiLogicController", "key"=>1000}], "interfaces_attributes"=>{"0"=>{"type"=>"VirtualVmxnet3", "network"=>"network-17"}}, "volumes_attributes"=>{"0"=>{"thin"=>true, "name"=>"Hard disk", "mode"=>"persistent", "controller_key"=>1000, "size"=>10485760, "size_gb"=>120, "datastore"=>"data01", "storage_pod"=>nil}}}


```



```
Id:                 4
Name:               vSphere-SmallVM
Created at:         2023/04/29 11:03:25
Updated at:         2023/04/29 11:03:25
Compute attributes: 
 1) Id:               1
    Name:             2 CPUs and 4096 MB memory
    Compute Resource: vcenter.p1.lab
    VM attributes:    {"cpus"=>"2", "corespersocket"=>"1", "memory_mb"=>"4096", "firmware"=>"automatic", "cluster"=>"ClusterP1", "resource_pool"=>"Resources", "path"=>"/Datacenters/DatacenterP1/vm", "guest_id"=>"rhel8_64Guest", "hardware_version"=>"Default", "memoryHotAddEnabled"=>"1", "cpuHotAddEnabled"=>"1", "add_cdrom"=>"0", "annotation"=>"", "scsi_controllers"=>[{"type"=>"VirtualLsiLogicController", "key"=>1000}], "interfaces_attributes"=>{"0"=>{"type"=>"VirtualVmxnet3", "network"=>"network-17"}}, "volumes_attributes"=>{"0"=>{"thin"=>true, "name"=>"Hard disk", "mode"=>"persistent", "controller_key"=>1000, "size"=>10485760, "size_gb"=>50, "datastore"=>"data01", "storage_pod"=>nil}}}


```


### compute-resource 

```
---|----------------|---------
ID | NAME           | PROVIDER
---|----------------|---------
1  | vcenter.p1.lab | VMware  
---|----------------|---------

```



```
Id:            1
Name:          vcenter.p1.lab
Provider:      VMware
Url:           vcenter.p1.lab
Description:   
User:          administrator@vsphere.local
Locations:     
    DefaultLocation
Organizations: 
    RHCI
Created at:    2023/04/29 10:59:29
Updated at:    2023/04/29 10:59:29
Datacenter:    DatacenterP1
Server:        vcenter.p1.lab


```


### config-report 

```
---|----------------------|---------------------|---------|-----------|--------|------------------|---------|--------
ID | HOST                 | LAST REPORT         | APPLIED | RESTARTED | FAILED | RESTART FAILURES | SKIPPED | PENDING
---|----------------------|---------------------|---------|-----------|--------|------------------|---------|--------
34 | sat-reporting.p1.lab | 2023/04/29 17:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
33 | sat-reporting.p1.lab | 2023/04/29 16:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
32 | sat-reporting.p1.lab | 2023/04/29 16:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
31 | sat-reporting.p1.lab | 2023/04/29 15:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
30 | sat-reporting.p1.lab | 2023/04/29 15:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
29 | sat-reporting.p1.lab | 2023/04/29 14:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
28 | sat-reporting.p1.lab | 2023/04/29 14:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
27 | sat-reporting.p1.lab | 2023/04/29 13:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
26 | sat-reporting.p1.lab | 2023/04/29 13:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
25 | sat-reporting.p1.lab | 2023/04/29 12:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
24 | sat-reporting.p1.lab | 2023/04/29 12:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
23 | sat-reporting.p1.lab | 2023/04/29 11:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
22 | sat-reporting.p1.lab | 2023/04/29 11:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
21 | sat-reporting.p1.lab | 2023/04/29 10:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
20 | sat-reporting.p1.lab | 2023/04/29 10:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
19 | sat-reporting.p1.lab | 2023/04/29 09:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
18 | sat-reporting.p1.lab | 2023/04/29 09:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
17 | sat-reporting.p1.lab | 2023/04/29 08:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
16 | sat-reporting.p1.lab | 2023/04/29 08:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
15 | sat-reporting.p1.lab | 2023/04/29 07:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
14 | sat-reporting.p1.lab | 2023/04/29 07:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
13 | sat-reporting.p1.lab | 2023/04/29 06:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
12 | sat-reporting.p1.lab | 2023/04/29 06:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
11 | sat-reporting.p1.lab | 2023/04/29 05:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
10 | sat-reporting.p1.lab | 2023/04/29 05:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
9  | sat-reporting.p1.lab | 2023/04/29 04:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
8  | sat-reporting.p1.lab | 2023/04/29 04:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
7  | sat-reporting.p1.lab | 2023/04/29 03:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
6  | sat-reporting.p1.lab | 2023/04/29 03:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
5  | sat-reporting.p1.lab | 2023/04/29 02:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
4  | sat-reporting.p1.lab | 2023/04/29 02:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
3  | sat-reporting.p1.lab | 2023/04/29 01:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
2  | sat-reporting.p1.lab | 2023/04/29 01:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
1  | sat-reporting.p1.lab | 2023/04/29 00:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
---|----------------------|---------------------|---------|-----------|--------|------------------|---------|--------

```



```
Id:             34
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 17:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.9542053609984578
    filebucket:       4.4559e-05
    total:            5.873128143
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.25 seconds


```



```
Id:             33
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 16:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.8807757870017667
    filebucket:       5.8373e-05
    total:            5.310532158
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.28 seconds


```



```
Id:             32
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 16:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.7164874299996882
    filebucket:       5.1932e-05
    total:            4.100044004
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.25 seconds


```



```
Id:             31
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 15:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.7764166560009471
    filebucket:       5.4043e-05
    total:            4.381520233
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.24 seconds


```



```
Id:             30
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 15:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.8578841890048352
    filebucket:       5.0079e-05
    total:            4.415918028
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.25 seconds


```



```
Id:             29
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 14:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 1.5238116520049516
    filebucket:       6.8408e-05
    total:            8.288381612
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.37 seconds


```



```
Id:             28
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 14:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 1.2223137600012706
    filebucket:       4.8533e-05
    total:            6.718442842
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.27 seconds


```



```
Id:             27
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 13:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 3.42671630300174
    filebucket:       4.961e-05
    total:            8.156729909
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.24 seconds


```



```
Id:             26
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 13:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 1.000191094004549
    filebucket:       5.2165e-05
    total:            6.35261698
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.30 seconds


```



```
Id:             25
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 12:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 2.08801362500526
    filebucket:       6.7145e-05
    total:            7.857408573
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.33 seconds


```



```
Id:             24
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 12:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 1.0296009450030397
    filebucket:       6.7812e-05
    total:            6.882198997
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.30 seconds


```



```
Id:             23
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 11:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 2.0836514309994527
    filebucket:       0.000100386
    total:            10.492667111
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.45 seconds


```



```
Id:             22
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 11:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 3.2458000870028627
    filebucket:       0.000212198
    total:            12.156698123
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.91 seconds


```



```
Id:             21
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 10:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 2.0593187889971887
    filebucket:       0.000132333
    total:            10.977735637
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.52 seconds


```



```
Id:             20
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 10:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 1.6718058030019165
    filebucket:       0.000124366
    total:            9.144242847
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.59 seconds


```



```
Id:             19
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 09:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.8886417460016673
    filebucket:       4.355e-05
    total:            4.5946338
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.25 seconds


```



```
Id:             18
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 09:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.7146452859997225
    filebucket:       4.2305e-05
    total:            4.554423947
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.28 seconds


```



```
Id:             17
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 08:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.9915987879976456
    filebucket:       8.8372e-05
    total:            5.878237574
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.32 seconds


```



```
Id:             16
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 08:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.7470801279996522
    filebucket:       5.6835e-05
    total:            4.9706742
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.30 seconds


```



```
Id:             15
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 07:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 1.7627038829996309
    filebucket:       0.000110612
    total:            7.877068538
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.59 seconds


```



```
Id:             14
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 07:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.7555116760013334
    filebucket:       3.9595e-05
    total:            4.475405562
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.24 seconds


```



```
Id:             13
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 06:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 1.0877749090032012
    filebucket:       3.8895e-05
    total:            4.791229716
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.24 seconds


```



```
Id:             12
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 06:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.8287655249987438
    filebucket:       6.1182e-05
    total:            4.819843387
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.27 seconds


```



```
Id:             11
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 05:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.8499760250015242
    filebucket:       6.0653e-05
    total:            4.774298908
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.31 seconds


```



```
Id:             10
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 05:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.9423809279978741
    filebucket:       7.0129e-05
    total:            5.950364512
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.29 seconds


```



```
Id:             9
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 04:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.8216663650000555
    filebucket:       5.6453e-05
    total:            4.667238518
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.27 seconds


```



```
Id:             8
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 04:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.7847453499998664
    filebucket:       6.9611e-05
    total:            4.389925032
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.24 seconds


```



```
Id:             7
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 03:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.8646632540003338
    filebucket:       5.1372e-05
    total:            4.480180736
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.23 seconds


```



```
Id:             6
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 03:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 1.0519105289986328
    filebucket:       5.2908e-05
    total:            7.192035012
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.29 seconds


```



```
Id:             5
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 02:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.7853066490006313
    filebucket:       5.2099e-05
    total:            4.317571109
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.24 seconds


```



```
Id:             4
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 02:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.8220300950006276
    filebucket:       4.7688e-05
    total:            4.495655182
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.28 seconds


```



```
Id:             3
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 01:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.8470266609992905
    filebucket:       6.3251e-05
    total:            4.361631065
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.23 seconds


```



```
Id:             2
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 01:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.8156338860003416
    filebucket:       4.0547e-05
    total:            5.097260102
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.24 seconds


```



```
Id:             1
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 00:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 4.27171724699997
    filebucket:       4.9867e-05
    total:            15.408984373
Logs:           
 1) Resource: Puppet
    Message:  Unable to fetch my node definition, but the agent run will continue:
 2) Resource: Puppet
    Message:  Error 500 on SERVER: Server Error: Failed to find sat-reporting.p1.lab via exec: Execution of '/etc/puppetlabs/puppet/node.rb sat-reporting.p1.lab' returned 1:
 3) Resource: /File[/opt/puppetlabs/puppet/cache/lib/facter]/ensure
    Message:  created
 4) Resource: /File[/opt/puppetlabs/puppet/cache/lib/facter/facter_dot_d.rb]/ensure
    Message:  defined content as '{md5}9f65108ecd7b8c5ce9c90ab4cd9d45be'
 5) Resource: /File[/opt/puppetlabs/puppet/cache/lib/facter/package_provider.rb]/ensure
    Message:  defined content as '{md5}12d57e65f9b90c13e7808c347fbdc0b0'
 6) Resource: /File[/opt/puppetlabs/puppet/cache/lib/facter/pe_version.rb]/ensure
    Message:  defined content as '{md5}245bb8ea121e8a55e1a38668cc480530'
 7) Resource: /File[/opt/puppetlabs/puppet/cache/lib/facter/puppet_settings.rb]/ensure
    Message:  defined content as '{md5}d86bacf2b962a4744b701868cda31729'
 8) Resource: /File[/opt/puppetlabs/puppet/cache/lib/facter/rh_certificates.rb]/ensure
    Message:  defined content as '{md5}0506fbcba122f58017be8143aa156807'
 9) Resource: /File[/opt/puppetlabs/puppet/cache/lib/facter/root_home.rb]/ensure
    Message:  defined content as '{md5}b384092f0470b9e2177edaf546de2ec1'
 10)Resource: /File[/opt/puppetlabs/puppet/cache/lib/facter/service_provider.rb]/ensure
    Message:  defined content as '{md5}66cc42526eae631e306b397391f1f01c'
 11)Resource: /File[/opt/puppetlabs/puppet/cache/lib/facter/util]/ensure
    Message:  created
 12)Resource: /File[/opt/puppetlabs/puppet/cache/lib/facter/util/puppet_settings.rb]/ensure
    Message:  defined content as '{md5}f69007bcc02031cd772fa7f2dffa3c0c'
 13)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet]/ensure
    Message:  created
 14)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions]/ensure
    Message:  created
 15)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/deprecation.rb]/ensure
    Message:  defined content as '{md5}705115a036e0235840db59cf9f4c17fe'
 16)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/fact.rb]/ensure
    Message:  defined content as '{md5}5879006198f1f4106acfe13422087d56'
 17)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/is_a.rb]/ensure
    Message:  defined content as '{md5}5a61d6a34ef45d7a5490455f334ef48a'
 18)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/is_absolute_path.rb]/ensure
    Message:  defined content as '{md5}0806756fc12b1fc752d1b54e81b15832'
 19)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/is_array.rb]/ensure
    Message:  defined content as '{md5}4d5c8d6af4e481ebb42f73b6504685c8'
 20)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/is_bool.rb]/ensure
    Message:  defined content as '{md5}9ae803c605c5ed057508c6501ef1a47f'
 21)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/is_float.rb]/ensure
    Message:  defined content as '{md5}ebe18dc0096233fcd555423761fc29f2'
 22)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/is_ip_address.rb]/ensure
    Message:  defined content as '{md5}ab9a1c6172db59cc15023f220853e2f2'
 23)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/is_ipv4_address.rb]/ensure
    Message:  defined content as '{md5}dec325b5911ce409b16c643697a13822'
 24)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/is_ipv6_address.rb]/ensure
    Message:  defined content as '{md5}f4864fee72c42bd3e40914768fb10f8e'
 25)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/is_numeric.rb]/ensure
    Message:  defined content as '{md5}970d785070eaa02bcac3e0589a8d5e7f'
 26)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/is_string.rb]/ensure
    Message:  defined content as '{md5}5aa459896fda1782f74752a1d324f048'
 27)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/length.rb]/ensure
    Message:  defined content as '{md5}3f6b0510bfe134241e4529d3f1a5318d'
 28)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/sprintf_hash.rb]/ensure
    Message:  defined content as '{md5}50fc7c6e57c098b7e6a594e1fd0d9904'
 29)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/to_json.rb]/ensure
    Message:  defined content as '{md5}bb6893a3e9eb6c48064c5a3c0bd4a41a'
 30)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/to_json_pretty.rb]/ensure
    Message:  defined content as '{md5}61ff20121b4c09987eadf3242b6231cf'
 31)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/to_yaml.rb]/ensure
    Message:  defined content as '{md5}0358dfd97b9a051e15046c6842b327be'
 32)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/type_of.rb]/ensure
    Message:  defined content as '{md5}4ee9c082047c08b8b1a82bc0bef8fd78'
 33)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/validate_absolute_path.rb]/ensure
    Message:  defined content as '{md5}556b0e3de450f03d724747d7d3825309'
 34)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/validate_array.rb]/ensure
    Message:  defined content as '{md5}efe329c6c8f65fce1ae2560fa5751530'
 35)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/validate_bool.rb]/ensure
    Message:  defined content as '{md5}5516a0f2efb48eeb4460fc713c6f9521'
 36)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/validate_hash.rb]/ensure
    Message:  defined content as '{md5}ce99bea6e1ee4da1a67b53b3ce06ce96'
 37)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/validate_integer.rb]/ensure
    Message:  defined content as '{md5}c028b299f194c221002ba442077e9209'
 38)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/validate_ip_address.rb]/ensure
    Message:  defined content as '{md5}278f3e0ea96b4b31e7b85c13887079b6'
 39)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/validate_ipv4_address.rb]/ensure
    Message:  defined content as '{md5}bd015492af1f3c4bef7ac780ae1c7e61'
 40)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/validate_ipv6_address.rb]/ensure
    Message:  defined content as '{md5}5144a327b6850ed5b7fb26fa37113353'
 41)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/validate_legacy.rb]/ensure
    Message:  defined content as '{md5}789bdef436873b6fcc8205c6d2270e43'
 42)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/validate_numeric.rb]/ensure
    Message:  defined content as '{md5}2bd2733f44749e0e56940ceaf5d8e2f8'
 43)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/validate_re.rb]/ensure
    Message:  defined content as '{md5}12c3412a7383b1d258dba5d4307e9464'
 44)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/validate_slength.rb]/ensure
    Message:  defined content as '{md5}1fc441736085bd0b5c7862f5dc9f839a'
 45)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/validate_string.rb]/ensure
    Message:  defined content as '{md5}c0fe867d3b5f8fbcaa3641f0f393a669'
 46)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser]/ensure
    Message:  created
 47)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions]/ensure
    Message:  created
 48)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/abs.rb]/ensure
    Message:  defined content as '{md5}176df45128a7b89c9ec6a6c6918d8c30'
 49)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/any2array.rb]/ensure
    Message:  defined content as '{md5}60cdb0bdfabff0115e74eda31c5c869b'
 50)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/any2bool.rb]/ensure
    Message:  defined content as '{md5}4bafd2903a5e7992b4a8af476f05f46a'
 51)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/assert_private.rb]/ensure
    Message:  defined content as '{md5}c61884d43ebdb5ee5a5aa1507165084a'
 52)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/base64.rb]/ensure
    Message:  defined content as '{md5}6216cc60b71949724e21b0be4dbac316'
 53)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/basename.rb]/ensure
    Message:  defined content as '{md5}6b0dc955024352c8007d175f900dba36'
 54)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/bool2num.rb]/ensure
    Message:  defined content as '{md5}bfeeac22e909c76dc5a0d55441f39a27'
 55)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/bool2str.rb]/ensure
    Message:  defined content as '{md5}e9e1c441e3b3c51b8b0734d12e9a63a5'
 56)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/camelcase.rb]/ensure
    Message:  defined content as '{md5}13f3125b1bcb6ce7794385aea6cbc4c0'
 57)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/capitalize.rb]/ensure
    Message:  defined content as '{md5}0a039c4bcd3a73dab80b389332457f0d'
 58)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/ceiling.rb]/ensure
    Message:  defined content as '{md5}c4af0da229909c00b2adda7bdd3f0d93'
 59)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/chomp.rb]/ensure
    Message:  defined content as '{md5}ebb5eb5e2020ec84c00477777f29b6bc'
 60)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/chop.rb]/ensure
    Message:  defined content as '{md5}6a7d4154b326e84e478eb4a17aa55e74'
 61)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/clamp.rb]/ensure
    Message:  defined content as '{md5}eeaed011946f4dec98870815e7c1657c'
 62)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/concat.rb]/ensure
    Message:  defined content as '{md5}02a6ba0560a005b5f92aec096ce26e09'
 63)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/convert_base.rb]/ensure
    Message:  defined content as '{md5}438da17946864b835e38155b8f72a184'
 64)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/count.rb]/ensure
    Message:  defined content as '{md5}0241b1bd0bc8de6426b7d077a54f56fe'
 65)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/deep_merge.rb]/ensure
    Message:  defined content as '{md5}fae771cff4fc1d6c639bea1672e05c9c'
 66)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/defined_with_params.rb]/ensure
    Message:  defined content as '{md5}0e2a92b10efb6c502df6a52f35cf7983'
 67)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/delete.rb]/ensure
    Message:  defined content as '{md5}ec0bb949e24d1b9ca6c749af0ab18de9'
 68)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/delete_at.rb]/ensure
    Message:  defined content as '{md5}4a6bde67835592dafa48bca7bb8af939'
 69)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/delete_regex.rb]/ensure
    Message:  defined content as '{md5}ee86f13f796e61e41c62ee91f8349735'
 70)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/delete_undef_values.rb]/ensure
    Message:  defined content as '{md5}247a52c41dc02375b50ac3c1791f4c09'
 71)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/delete_values.rb]/ensure
    Message:  defined content as '{md5}0a979383ac73e1bf82278e0eb104842c'
 72)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/deprecation.rb]/ensure
    Message:  defined content as '{md5}9f935fec2f9f0d01394292eb6f21bd7d'
 73)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/difference.rb]/ensure
    Message:  defined content as '{md5}e3d3006b7f50fc0fad1616ec53f21614'
 74)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/dig.rb]/ensure
    Message:  defined content as '{md5}d315de1659a037430fea9623bff323a6'
 75)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/dig44.rb]/ensure
    Message:  defined content as '{md5}2317ddee7dbda385e2f964655fe6ad88'
 76)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/dirname.rb]/ensure
    Message:  defined content as '{md5}240597e264df02effa454cf9cb8bb9e7'
 77)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/dos2unix.rb]/ensure
    Message:  defined content as '{md5}ab2f9f280c616be55f58903948e226a2'
 78)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/downcase.rb]/ensure
    Message:  defined content as '{md5}3e6b908548607a55ee426e8be16fb46c'
 79)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/empty.rb]/ensure
    Message:  defined content as '{md5}f9dcb1b4cb0abb671294d5283e673ee5'
 80)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/enclose_ipv6.rb]/ensure
    Message:  defined content as '{md5}89c728eb11f71ed9390664bad9732328'
 81)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/ensure_packages.rb]/ensure
    Message:  defined content as '{md5}a0b4bdc14613d4b8c396b4e02a1aa33d'
 82)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/ensure_resource.rb]/ensure
    Message:  defined content as '{md5}2915c77baa0d45531912613dd1cac902'
 83)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/ensure_resources.rb]/ensure
    Message:  defined content as '{md5}805d56e894c9dcca2595464fa87a7c56'
 84)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/flatten.rb]/ensure
    Message:  defined content as '{md5}54fd2d9d7bc7cd4f9889554da6094dd8'
 85)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/floor.rb]/ensure
    Message:  defined content as '{md5}f0a70977110525dc4aa6b109db9ff9e4'
 86)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/fqdn_rand_string.rb]/ensure
    Message:  defined content as '{md5}731365381b6a28a196e108329e16c6c2'
 87)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/fqdn_rotate.rb]/ensure
    Message:  defined content as '{md5}3925369078084f98f9b527d25cc9e4d2'
 88)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/fqdn_uuid.rb]/ensure
    Message:  defined content as '{md5}adbd60dbcc561c8586567a6e58abec82'
 89)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/get_module_path.rb]/ensure
    Message:  defined content as '{md5}e141ce049d4ace6d12b50d6b171b029c'
 90)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/getparam.rb]/ensure
    Message:  defined content as '{md5}84c7358b24f0a5e45c1ad523c196817e'
 91)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/getvar.rb]/ensure
    Message:  defined content as '{md5}835e6b79e209a541e125cdaddefb3396'
 92)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/glob.rb]/ensure
    Message:  defined content as '{md5}f8177554be6da357b0822edaa7eb8d14'
 93)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/grep.rb]/ensure
    Message:  defined content as '{md5}b2e7e32188a1cb4f1dafa375ba9b8b14'
 94)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/has_interface_with.rb]/ensure
    Message:  defined content as '{md5}422015811c5b7c0656b83eaea3b8fdcc'
 95)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/has_ip_address.rb]/ensure
    Message:  defined content as '{md5}fc76c9a87145560f58a4ae9a6d9df444'
 96)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/has_ip_network.rb]/ensure
    Message:  defined content as '{md5}b1bb1868e6fef95f8ae840d420ab0816'
 97)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/has_key.rb]/ensure
    Message:  defined content as '{md5}572f8a648c74c0b774718991a88adc56'
 98)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/hash.rb]/ensure
    Message:  defined content as '{md5}5730e6a297b9064c12d3484a2ae31010'
 99)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/intersection.rb]/ensure
    Message:  defined content as '{md5}6436444eb8585ee71cfd5bd1e0802026'
 100)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_absolute_path.rb]/ensure
    Message:  defined content as '{md5}268600b66670a29690be009d45013d42'
 101)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_array.rb]/ensure
    Message:  defined content as '{md5}0e425e55c8ce9cc5e327d53d114391ba'
 102)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_bool.rb]/ensure
    Message:  defined content as '{md5}4e021a5143c2c98b31344acceda5fbe2'
 103)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_domain_name.rb]/ensure
    Message:  defined content as '{md5}1abf04d1d57de6f7f630045c0efe5e4c'
 104)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_email_address.rb]/ensure
    Message:  defined content as '{md5}d11c644fa1bd73f8e1d36c4f9e67272e'
 105)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_float.rb]/ensure
    Message:  defined content as '{md5}b95a00f15242e3f26a5cf129db7d31e5'
 106)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_function_available.rb]/ensure
    Message:  defined content as '{md5}3bb60da5789493da017f84d48ac46f08'
 107)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_hash.rb]/ensure
    Message:  defined content as '{md5}3f74a7e9b6e47b834c4ad58939c27eab'
 108)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_integer.rb]/ensure
    Message:  defined content as '{md5}e3480725fccac1c7eba28162dc62393d'
 109)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_ip_address.rb]/ensure
    Message:  defined content as '{md5}3616dacf58febcd4944945d3c2647efe'
 110)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_ipv4_address.rb]/ensure
    Message:  defined content as '{md5}7930d25d23d92f0e5cb81f93315cea16'
 111)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_ipv6_address.rb]/ensure
    Message:  defined content as '{md5}c206564af3a738e504afca2284497d3c'
 112)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_mac_address.rb]/ensure
    Message:  defined content as '{md5}b75e440d5594b879b70cf034fc52cd51'
 113)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_numeric.rb]/ensure
    Message:  defined content as '{md5}4bd1a47192ce4040810819789fbf3147'
 114)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_string.rb]/ensure
    Message:  defined content as '{md5}cf06fecd6147bea77d406a189b649f81'
 115)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/join.rb]/ensure
    Message:  defined content as '{md5}aed0b418cc216d86f3beaa5f2302279b'
 116)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/join_keys_to_values.rb]/ensure
    Message:  defined content as '{md5}5ad99136e59a68064c24dd2933727c57'
 117)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/keys.rb]/ensure
    Message:  defined content as '{md5}d65816215c6c7736bcfe393e7d9d3bf4'
 118)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/load_module_metadata.rb]/ensure
    Message:  defined content as '{md5}4972bafc84e5b7ce4a00cbee21aece18'
 119)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/loadjson.rb]/ensure
    Message:  defined content as '{md5}b6e43c28dee4a74a7312af41393d09de'
 120)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/loadyaml.rb]/ensure
    Message:  defined content as '{md5}9066804fd56894210d4d064aab9df406'
 121)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/lstrip.rb]/ensure
    Message:  defined content as '{md5}de231169f63d922b72b754521488bca5'
 122)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/max.rb]/ensure
    Message:  defined content as '{md5}3406e6e1da36ed126ca7a359dbbcbb23'
 123)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/member.rb]/ensure
    Message:  defined content as '{md5}4f8639d96fbd17cd194224794dd9f279'
 124)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/merge.rb]/ensure
    Message:  defined content as '{md5}e867f9f9340d7bf5b85141d2f7ec2392'
 125)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/min.rb]/ensure
    Message:  defined content as '{md5}6243d16650b1787f017f587b5be276f3'
 126)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/num2bool.rb]/ensure
    Message:  defined content as '{md5}35f42a4339b34d0b1efc6a6c3b2d3b69'
 127)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/parsejson.rb]/ensure
    Message:  defined content as '{md5}fee0dc33cd6e18b0d9a5fe8befb66cd2'
 128)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/parseyaml.rb]/ensure
    Message:  defined content as '{md5}f4b67d011970c1799bc6fb36a3caf1f2'
 129)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/pick.rb]/ensure
    Message:  defined content as '{md5}4a4ba9288a233a4bcdbdc59ecac80be0'
 130)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/pick_default.rb]/ensure
    Message:  defined content as '{md5}6b0ccac1913a85e540a3de20c6a88096'
 131)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/prefix.rb]/ensure
    Message:  defined content as '{md5}3d268ec646255199ade4b01b719a59ed'
 132)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/private.rb]/ensure
    Message:  defined content as '{md5}a1f44a1c32da00aa14f474f4f303be87'
 133)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/pry.rb]/ensure
    Message:  defined content as '{md5}970544bf6308b7b6902b936063a45109'
 134)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/pw_hash.rb]/ensure
    Message:  defined content as '{md5}07fea662493e5b2ffcf37dbb4c4e74b9'
 135)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/range.rb]/ensure
    Message:  defined content as '{md5}60d786031129d4a495a67468d4b5219d'
 136)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/regexpescape.rb]/ensure
    Message:  defined content as '{md5}d7d22f987d616f2b5ec9d967f1528f53'
 137)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/reject.rb]/ensure
    Message:  defined content as '{md5}31f5f65be6f710d6856ffce75c432271'
 138)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/reverse.rb]/ensure
    Message:  defined content as '{md5}3f96ffed2afe4987da5039de2d56f38b'
 139)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/round.rb]/ensure
    Message:  defined content as '{md5}287db8b83f3bc6652eb042682f8be698'
 140)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/rstrip.rb]/ensure
    Message:  defined content as '{md5}5042d02e81ac59068d87a2b54c784cce'
 141)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/seeded_rand.rb]/ensure
    Message:  defined content as '{md5}4f45ef0723411ff8281aaf093f0fabc2'
 142)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/shell_escape.rb]/ensure
    Message:  defined content as '{md5}6e51793b8483eb6bfc4be98b438fd47e'
 143)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/shell_join.rb]/ensure
    Message:  defined content as '{md5}4fbe23ff73932f65db696f106517887e'
 144)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/shell_split.rb]/ensure
    Message:  defined content as '{md5}cb851119ee167ccb12930c53e94333cc'
 145)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/shuffle.rb]/ensure
    Message:  defined content as '{md5}6b16497151e961fbdb6e00ec70d6bbe9'
 146)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/size.rb]/ensure
    Message:  defined content as '{md5}05cbf180420e3a3e2e5aa5be157c6951'
 147)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/sort.rb]/ensure
    Message:  defined content as '{md5}20fa47c2ccde4b37626e8d3995503f02'
 148)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/squeeze.rb]/ensure
    Message:  defined content as '{md5}e42e1d5ec9a23443d14ff07512fd695f'
 149)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/str2bool.rb]/ensure
    Message:  defined content as '{md5}b82d971cc305a19b26089cc4fd566eb0'
 150)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/str2saltedsha512.rb]/ensure
    Message:  defined content as '{md5}d4443e8985b4ce6f6e925c6f46d8456c'
 151)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/strftime.rb]/ensure
    Message:  defined content as '{md5}62b13548cc3b28b1609b7b4bd966f666'
 152)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/strip.rb]/ensure
    Message:  defined content as '{md5}ec030431f8ec17e285f18a6f60b7f269'
 153)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/suffix.rb]/ensure
    Message:  defined content as '{md5}4eff1920b75829e32fb2c2ee4aab8a24'
 154)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/swapcase.rb]/ensure
    Message:  defined content as '{md5}d1a53787b35ae9a5a643c49f4e0975a8'
 155)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/time.rb]/ensure
    Message:  defined content as '{md5}cd31abf40b4e4e22b9de8b6b27ec1a50'
 156)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/to_bytes.rb]/ensure
    Message:  defined content as '{md5}55a65ad70ea78983e7c1d6d565094c1f'
 157)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/try_get_value.rb]/ensure
    Message:  defined content as '{md5}b039b960b07a21b935baf6c78fb94612'
 158)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/type.rb]/ensure
    Message:  defined content as '{md5}857348edb913cdc4f25b2169994984cf'
 159)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/type3x.rb]/ensure
    Message:  defined content as '{md5}22c902213365c39919625d1a33d5abff'
 160)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/union.rb]/ensure
    Message:  defined content as '{md5}690e5c15a1e7b95ab4b90ee18eb48f81'
 161)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/unique.rb]/ensure
    Message:  defined content as '{md5}e448da2c183c0e19bd6e64bc423a749f'
 162)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/unix2dos.rb]/ensure
    Message:  defined content as '{md5}0aa6e66d1c47ca0bb417e248b01f6f1b'
 163)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/upcase.rb]/ensure
    Message:  defined content as '{md5}b0ed0e1ada21b9d73a00043146254335'
 164)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/uriescape.rb]/ensure
    Message:  defined content as '{md5}f2facfe201658a65a7e81199cdd1bef7'
 165)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_absolute_path.rb]/ensure
    Message:  defined content as '{md5}892faf0e74b99b11190ec7fc4b78a893'
 166)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_array.rb]/ensure
    Message:  defined content as '{md5}9518be91bab77e56be711d1498d119b9'
 167)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_augeas.rb]/ensure
    Message:  defined content as '{md5}c5bbf1bc42b7ea024e48ab12b46f55e9'
 168)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_bool.rb]/ensure
    Message:  defined content as '{md5}bea67f1a0f5fc23ee8b632000cfa63db'
 169)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_cmd.rb]/ensure
    Message:  defined content as '{md5}dbb22e68eca3f6be63fb49b465b1d611'
 170)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_domain_name.rb]/ensure
    Message:  defined content as '{md5}04f4b1d0be9a8a12d278f0b044f78427'
 171)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_email_address.rb]/ensure
    Message:  defined content as '{md5}6dc01f14c43fdff19106a2388d01b51a'
 172)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_hash.rb]/ensure
    Message:  defined content as '{md5}80f7cfb430818e1497d3b12769d8f9c4'
 173)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_integer.rb]/ensure
    Message:  defined content as '{md5}edb176a717c4af6cd50d2d26e4da149d'
 174)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_ip_address.rb]/ensure
    Message:  defined content as '{md5}55d0f019803d687bf95bcc64e8751ba5'
 175)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_ipv4_address.rb]/ensure
    Message:  defined content as '{md5}94843b876cc92414b29223f7ac3cc3b6'
 176)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_ipv6_address.rb]/ensure
    Message:  defined content as '{md5}6c10396f466f64a6f897d1be4291dd4a'
 177)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_numeric.rb]/ensure
    Message:  defined content as '{md5}092cce5ed9d3a73319c48cdf9a2a822e'
 178)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_re.rb]/ensure
    Message:  defined content as '{md5}df6a2cc342dad63d008ef257fde9038a'
 179)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_slength.rb]/ensure
    Message:  defined content as '{md5}b20959e080f36bf320eacb472d125741'
 180)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_string.rb]/ensure
    Message:  defined content as '{md5}0239e1697134605a6385ff8c9bdc066b'
 181)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_x509_rsa_key_pair.rb]/ensure
    Message:  defined content as '{md5}b16e5ebaeb497e1639c7bf78d61c2b45'
 182)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/values.rb]/ensure
    Message:  defined content as '{md5}94ac0ce49d09256677f6adddd40be129'
 183)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/values_at.rb]/ensure
    Message:  defined content as '{md5}72d780badb5f600dbd6b9ca3271ee12f'
 184)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/zip.rb]/ensure
    Message:  defined content as '{md5}aef1ee868716d07b01e605ae6c4741cc'
 185)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/provider]/ensure
    Message:  created
 186)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/provider/file_line]/ensure
    Message:  created
 187)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/provider/file_line/ruby.rb]/ensure
    Message:  defined content as '{md5}06dd4b2bd0037fcdc8382fcd4214dda3'
 188)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/type]/ensure
    Message:  created
 189)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/type/anchor.rb]/ensure
    Message:  defined content as '{md5}95867e600863019b08990277c4254cac'
 190)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/type/file_line.rb]/ensure
    Message:  defined content as '{md5}208655541a332e54e2d9abac0e328d33'
 191)Resource: Puppet
    Message:  Applied catalog in 0.26 seconds


```


### defaults 

```
----------|------
PARAMETER | VALUE
----------|------

```


### discovery 

```
---|------|-----|------|--------|------------|------------|--------|------------
ID | NAME | MAC | CPUS | MEMORY | DISK COUNT | DISKS SIZE | SUBNET | LAST REPORT
---|------|-----|------|--------|------------|------------|--------|------------

```


### discovery-rule 

```
---|---------------------------------|----------|---------------------------------------------|------------|-------------|--------
ID | NAME                            | PRIORITY | SEARCH                                      | HOST GROUP | HOSTS LIMIT | ENABLED
---|---------------------------------|----------|---------------------------------------------|------------|-------------|--------
1  | DiscoveryRuleKVMVirtualMachines | 100      | model = "Standard PC (i440FX + PIIX, 1996)" | HG_ALL     | 0           | true   
---|---------------------------------|----------|---------------------------------------------|------------|-------------|--------

```



```
ID:                1
Name:              DiscoveryRuleKVMVirtualMachines
Priority:          100
Search:            model = "Standard PC (i440FX + PIIX, 1996)"
Host Group:        HG_ALL
Hosts Limit:       0
Enabled:           true
Hostname template: vm
Hosts:             

Locations:         
    DefaultLocation
Organizations:     
    RHCI


```


### domain 

```
---|-------
ID | NAME  
---|-------
1  | p1.lab
---|-------

```



```
Id:            1
Name:          p1.lab
Description:   
DNS Id:        
Subnets:       
    MGMT (192.168.123.0/24)
Locations:     
    DefaultLocation
Organizations: 
    RHCI
Parameters:    
    domain_parameter1 => domain_value1
    domain_parameter2 => domain_value1
Created at:    2023/04/29 00:30:41
Updated at:    2023/04/29 11:07:42


```


### file 

```
---|------|-----
ID | NAME | PATH
---|------|-----

```


### global-parameter 

```
---------------|-------|-----
NAME           | VALUE | TYPE
---------------|-------|-----
enable-epel    | false |     
enable-puppet5 | true  |     
---------------|-------|-----

```


### host 

```
---|------------------------|------------------|------------|-----------------|-------------------|---------------|--------------|----------------------
ID | NAME                   | OPERATING SYSTEM | HOST GROUP | IP              | MAC               | GLOBAL STATUS | CONTENT VIEW | LIFECYCLE ENVIRONMENT
---|------------------------|------------------|------------|-----------------|-------------------|---------------|--------------|----------------------
1  | sat-reporting.p1.lab   | RedHat 7.9       |            | 192.168.123.123 | 52:54:00:e5:a3:56 | OK            |              |                      
2  | virt-who-esxi.p1.lab-1 |                  |            |                 |                   | Warning       |              |                      
---|------------------------|------------------|------------|-----------------|-------------------|---------------|--------------|----------------------

```


### host-collection 

```
---|---------------|-------|------------
ID | NAME          | LIMIT | DESCRIPTION
---|---------------|-------|------------
1  | HC_RHEL8XYMON | None  |            
---|---------------|-------|------------

```



```
ID:          1
Name:        HC_RHEL8XYMON
Limit:       None
Description: 
Total Hosts: 0


```


### hostgroup 

```
---|-----------------|----------------------------------|------------------|--------------------|------
ID | NAME            | TITLE                            | OPERATING SYSTEM | PUPPET ENVIRONMENT | MODEL
---|-----------------|----------------------------------|------------------|--------------------|------
1  | HG_ALL          | HG_ALL                           |                  |                    |      
3  | HG_PROD_LIVE    | HG_ALL/HG_PROD_LIVE              |                  |                    |      
2  | HG_PROD_STAGING | HG_ALL/HG_PROD_STAGING           |                  |                    |      
4  | SW-DELIVERY     | HG_ALL/SW-DELIVERY               |                  |                    |      
5  | DEV             | HG_ALL/SW-DELIVERY/DEV           |                  |                    |      
7  | PREPRODUCTION   | HG_ALL/SW-DELIVERY/PREPRODUCTION |                  |                    |      
8  | PRODUCTION      | HG_ALL/SW-DELIVERY/PRODUCTION    |                  |                    |      
6  | TEST            | HG_ALL/SW-DELIVERY/TEST          |                  |                    |      
---|-----------------|----------------------------------|------------------|--------------------|------

```



```
Id:                    1
Name:                  HG_ALL
Title:                 HG_ALL
Description:           
  
Network:               
    Domain: p1.lab
Operating system:      

Puppetclasses:         

Parameters:            

Locations:             
    DefaultLocation
Organizations:         
    RHCI
OpenSCAP Proxy:        
Content View:          
    ID:   1
    Name: Default Organization View
Lifecycle Environment: 
    ID:   1
    Name: Library
Content Source:        
    ID:   1
    Name: sat-reporting.p1.lab
Kickstart Repository:  
    ID:   
    Name:


```



```
Id:                    3
Name:                  HG_PROD_LIVE
Title:                 HG_ALL/HG_PROD_LIVE
Description:           
  
Parent:                HG_ALL
Network:               

Operating system:      

Puppetclasses:         

Parameters:            

Locations:             
    DefaultLocation
Organizations:         
    RHCI
OpenSCAP Proxy:        
Content View:          
    ID:   1
    Name: Default Organization View
Lifecycle Environment: 
    ID:   1
    Name: Library
Content Source:        
    ID:   1
    Name: sat-reporting.p1.lab
Kickstart Repository:  
    ID:   
    Name:


```



```
Id:                    2
Name:                  HG_PROD_STAGING
Title:                 HG_ALL/HG_PROD_STAGING
Description:           
  
Parent:                HG_ALL
Network:               

Operating system:      

Puppetclasses:         

Parameters:            

Locations:             
    DefaultLocation
Organizations:         
    RHCI
OpenSCAP Proxy:        
Content View:          
    ID:   
    Name: Default Organization View
Lifecycle Environment: 
    ID:   9
    Name: Production-Staging
Content Source:        
    ID:   1
    Name: sat-reporting.p1.lab
Kickstart Repository:  
    ID:   
    Name:


```



```
Id:                    4
Name:                  SW-DELIVERY
Title:                 HG_ALL/SW-DELIVERY
Description:           
  
Parent:                HG_ALL
Network:               

Operating system:      

Puppetclasses:         

Parameters:            

Locations:             
    DefaultLocation
Organizations:         
    RHCI
OpenSCAP Proxy:        
Content View:          
    ID:   
    Name: Default Organization View
Lifecycle Environment: 
    ID:   4
    Name: Internal-SwDelivery-Dev
Content Source:        
    ID:   1
    Name: sat-reporting.p1.lab
Kickstart Repository:  
    ID:   
    Name:


```



```
Id:                    5
Name:                  DEV
Title:                 HG_ALL/SW-DELIVERY/DEV
Description:           
  
Parent:                HG_ALL/SW-DELIVERY
Network:               

Operating system:      

Puppetclasses:         

Parameters:            

Locations:             
    DefaultLocation
Organizations:         
    RHCI
OpenSCAP Proxy:        
Content View:          
    ID:   
    Name: Default Organization View
Lifecycle Environment: 
    ID:   4
    Name: Internal-SwDelivery-Dev
Content Source:        
    ID:   1
    Name: sat-reporting.p1.lab
Kickstart Repository:  
    ID:   
    Name:


```



```
Id:                    7
Name:                  PREPRODUCTION
Title:                 HG_ALL/SW-DELIVERY/PREPRODUCTION
Description:           
  
Parent:                HG_ALL/SW-DELIVERY
Network:               

Operating system:      

Puppetclasses:         

Parameters:            

Locations:             
    DefaultLocation
Organizations:         
    RHCI
OpenSCAP Proxy:        
Content View:          
    ID:   
    Name: Default Organization View
Lifecycle Environment: 
    ID:   6
    Name: Internal-SwDelivery-Preproduction
Content Source:        
    ID:   1
    Name: sat-reporting.p1.lab
Kickstart Repository:  
    ID:   
    Name:


```



```
Id:                    8
Name:                  PRODUCTION
Title:                 HG_ALL/SW-DELIVERY/PRODUCTION
Description:           
  
Parent:                HG_ALL/SW-DELIVERY
Network:               

Operating system:      

Puppetclasses:         

Parameters:            

Locations:             
    DefaultLocation
Organizations:         
    RHCI
OpenSCAP Proxy:        
Content View:          
    ID:   
    Name: Default Organization View
Lifecycle Environment: 
    ID:   4
    Name: Internal-SwDelivery-Dev
Content Source:        
    ID:   1
    Name: sat-reporting.p1.lab
Kickstart Repository:  
    ID:   
    Name:


```



```
Id:                    6
Name:                  TEST
Title:                 HG_ALL/SW-DELIVERY/TEST
Description:           
  
Parent:                HG_ALL/SW-DELIVERY
Network:               

Operating system:      

Puppetclasses:         

Parameters:            

Locations:             
    DefaultLocation
Organizations:         
    RHCI
OpenSCAP Proxy:        
Content View:          
    ID:   
    Name: Default Organization View
Lifecycle Environment: 
    ID:   5
    Name: Internal-SwDelivery-Test
Content Source:        
    ID:   1
    Name: sat-reporting.p1.lab
Kickstart Repository:  
    ID:   
    Name:


```


### http-proxy 

```
Error: No such sub-command 'http-proxy'.

See: 'hammer --help'.

```


### job-template 

```
----|--------------------------------------------------|----------------------------|----------|-------------
ID  | NAME                                             | JOB CATEGORY               | PROVIDER | TYPE        
----|--------------------------------------------------|----------------------------|----------|-------------
147 | Ansible Roles - Ansible Default                  | Ansible Playbook           | Ansible  | job_template
148 | Ansible Roles - Install from Galaxy              | Ansible Galaxy             | Ansible  | job_template
149 | Ansible Roles - Install from git                 | Ansible Roles Installation | Ansible  | job_template
150 | Ansible - Run insights maintenance plan          | Ansible Playbook           | Ansible  | job_template
132 | Install Errata - Katello Ansible Default         | Katello via Ansible        | Ansible  | job_template
131 | Install Errata - Katello SSH Default             | Katello                    | SSH      | job_template
134 | Install Group - Katello Ansible Default          | Katello via Ansible        | Ansible  | job_template
133 | Install Group - Katello SSH Default              | Katello                    | SSH      | job_template
136 | Install Package - Katello Ansible Default        | Katello via Ansible        | Ansible  | job_template
135 | Install Package - Katello SSH Default            | Katello                    | SSH      | job_template
151 | Module Action - Ansible Default                  | Ansible Modules            | Ansible  | job_template
121 | Module Action - SSH Default                      | Modules                    | SSH      | job_template
152 | Package Action - Ansible Default                 | Ansible Packages           | Ansible  | job_template
122 | Package Action - SSH Default                     | Packages                   | SSH      | job_template
153 | Power Action - Ansible Default                   | Ansible Power              | Ansible  | job_template
123 | Power Action - SSH Default                       | Power                      | SSH      | job_template
124 | Puppet Agent Disable - SSH Default               | Puppet                     | SSH      | job_template
125 | Puppet Agent Enable - SSH Default                | Puppet                     | SSH      | job_template
126 | Puppet Module - Install from forge - SSH Default | Puppet                     | SSH      | job_template
127 | Puppet Module - Install from git - SSH Default   | Puppet                     | SSH      | job_template
154 | Puppet Run Once - Ansible Default                | Ansible Puppet             | Ansible  | job_template
128 | Puppet Run Once - SSH Default                    | Puppet                     | SSH      | job_template
138 | Remove Group - Katello Ansible Default           | Katello via Ansible        | Ansible  | job_template
137 | Remove Group - Katello SSH Default               | Katello                    | SSH      | job_template
140 | Remove Package - Katello Ansible Default         | Katello via Ansible        | Ansible  | job_template
139 | Remove Package - Katello SSH Default             | Katello                    | SSH      | job_template
142 | Restart Services - Katello Ansible Default       | Katello via Ansible        | Ansible  | job_template
141 | Restart Services - Katello SSH Default           | Katello                    | SSH      | job_template
155 | Run Command - Ansible Default                    | Ansible Commands           | Ansible  | job_template
129 | Run Command - SSH Default                        | Commands                   | SSH      | job_template
157 | Run OpenSCAP scans                               | OpenSCAP                   | SSH      | job_template
156 | Service Action - Ansible Default                 | Ansible Services           | Ansible  | job_template
130 | Service Action - SSH Default                     | Services                   | SSH      | job_template
144 | Update Group - Katello Ansible Default           | Katello via Ansible        | Ansible  | job_template
143 | Update Group - Katello SSH Default               | Katello                    | SSH      | job_template
146 | Update Package - Katello Ansible Default         | Katello via Ansible        | Ansible  | job_template
145 | Update Package - Katello SSH Default             | Katello                    | SSH      | job_template
----|--------------------------------------------------|----------------------------|----------|-------------

```


### location 

```
---|-----------------|-----------------|------------
ID | TITLE           | NAME            | DESCRIPTION
---|-----------------|-----------------|------------
2  | DefaultLocation | DefaultLocation |            
---|-----------------|-----------------|------------

```



```
Id:                 2
Title:              DefaultLocation
Name:               DefaultLocation
Description:        
Users:              
    admin
    foreman_admin
    foreman_api_admin
    foreman_console_admin
    virt_who_reporter_1
Smart proxies:      
    sat-reporting.p1.lab
Subnets:            
    MGMT (192.168.123.0/24)
Compute resources:  
    vcenter.p1.lab
Installation media: 
    CentOS mirror
    CoreOS mirror
    Debian mirror
    Fedora Atomic mirror
    Fedora mirror
    FreeBSD mirror
    OpenSUSE mirror
    RancherOS mirror
    Ubuntu mirror
Templates:          
    Alterator default (provision)
    Alterator default finish (finish)
    Alterator default PXELinux (PXELinux)
    alterator_pkglist
    ansible_provisioning_callback
    ansible_tower_callback_script
    ansible_tower_callback_service
    Atomic Kickstart default (provision)
    AutoYaST default (provision)
    AutoYaST default iPXE (iPXE)
    AutoYaST default PXELinux (PXELinux)
    AutoYaST default user data (user_data)
    AutoYaST SLES default (provision)
    blacklist_kernel_modules
    bmc_nic_setup
    Boot disk iPXE - generic host (Bootdisk)
    Boot disk iPXE - host (Bootdisk)
    built
    chef_client
    CloudInit default (cloud-init)
    coreos_cloudconfig
    CoreOS provision (provision)
    CoreOS PXELinux (PXELinux)
    create_users
    csr_attributes.yaml
    Discovery Debian kexec (kexec)
    Discovery Red Hat kexec (kexec)
    efibootmgr_netboot
    epel
    fips_packages
    fix_hosts
    FreeBSD (mfsBSD) finish (finish)
    FreeBSD (mfsBSD) provision (provision)
    FreeBSD (mfsBSD) PXELinux (PXELinux)
    freeipa_register
    Grubby default (script)
    http_proxy
    iPXE default local boot (iPXE)
    iPXE global default (iPXE)
    iPXE intermediate script (iPXE)
    Jumpstart default (provision)
    Jumpstart default finish (finish)
    Jumpstart default PXEGrub (PXEGrub)
    Junos default finish (finish)
    Junos default SLAX (provision)
    Junos default ZTP config (ZTP)
    Kickstart default (provision)
    Kickstart default finish (finish)
    Kickstart default iPXE (iPXE)
    Kickstart default PXEGrub (PXEGrub)
    Kickstart default PXEGrub2 (PXEGrub2)
    Kickstart default PXELinux (PXELinux)
    Kickstart default user data (user_data)
    kickstart_ifcfg_bonded_interface
    kickstart_ifcfg_bond_interface
    kickstart_ifcfg_generic_interface
    kickstart_ifcfg_get_identifier_names
    kickstart_networking_setup
    Kickstart oVirt-RHVH (provision)
    Kickstart oVirt-RHVH PXELinux (PXELinux)
    NX-OS default POAP setup (POAP)
    Preseed default (provision)
    Preseed default finish (finish)
    Preseed default iPXE (iPXE)
    Preseed default PXEGrub2 (PXEGrub2)
    Preseed default PXELinux (PXELinux)
    Preseed default user data (user_data)
    preseed_networking_setup
    puppet.conf
    puppetlabs_repo
    puppet_setup
    pxegrub2_chainload
    PXEGrub2 default local boot (PXEGrub2)
    pxegrub2_discovery
    PXEGrub2 global default (PXEGrub2)
    pxegrub2_mac
    pxegrub_chainload
    PXEGrub default local boot (PXEGrub)
    pxegrub_discovery
    PXEGrub global default (PXEGrub)
    PXELinux chain iPXE (PXELinux)
    PXELinux chain iPXE UNDI (PXELinux)
    pxelinux_chainload
    PXELinux default local boot (PXELinux)
    PXELinux default memdisk (PXELinux)
    pxelinux_discovery
    PXELinux global default (PXELinux)
    rancheros_cloudconfig
    RancherOS provision (provision)
    RancherOS PXELinux (PXELinux)
    redhat_register
    remote_execution_ssh_keys
    saltstack_minion
    saltstack_setup
    UserData default (user_data)
    UserData open-vm-tools (user_data)
    WAIK default PXELinux (PXELinux)
    XenServer default answerfile (provision)
    XenServer default finish (finish)
    XenServer default PXELinux (PXELinux)
Domains:            
    p1.lab
Environments:       
    common
    production
Hostgroups:         
    HG_ALL
    HG_ALL/HG_PROD_LIVE
    HG_ALL/HG_PROD_STAGING
    HG_ALL/SW-DELIVERY
    HG_ALL/SW-DELIVERY/DEV
    HG_ALL/SW-DELIVERY/PREPRODUCTION
    HG_ALL/SW-DELIVERY/PRODUCTION
    HG_ALL/SW-DELIVERY/TEST
Parameters:         

Organizations:      
    RHCI
Created at:         2023/04/29 00:18:11
Updated at:         2023/04/29 00:18:11


```


### mail-notification 

```
Error: No such sub-command 'mail-notification'.

See: 'hammer --help'.

```


### medium 

```
---|----------------------|------------------------------------------------------------------------------
ID | NAME                 | PATH                                                                         
---|----------------------|------------------------------------------------------------------------------
1  | CentOS mirror        | http://mirror.centos.org/centos/$major/os/$arch                              
8  | CoreOS mirror        | http://$release.release.core-os.net                                          
2  | Debian mirror        | http://ftp.debian.org/debian                                                 
4  | Fedora Atomic mirror | http://dl.fedoraproject.org/pub/alt/atomic/stable/Cloud_Atomic/$arch/os/     
3  | Fedora mirror        | http://dl.fedoraproject.org/pub/fedora/linux/releases/$major/Server/$arch/os/
5  | FreeBSD mirror       | http://ftp.freebsd.org/pub/FreeBSD/releases/$arch/$version-RELEASE/          
6  | OpenSUSE mirror      | http://download.opensuse.org/distribution/leap/$version/repo/oss             
9  | RancherOS mirror     | https://github.com/rancher/os/releases/download/v$version                    
7  | Ubuntu mirror        | http://archive.ubuntu.com/ubuntu                                             
---|----------------------|------------------------------------------------------------------------------

```



```
Id:                1
Name:              CentOS mirror
Path:              http://mirror.centos.org/centos/$major/os/$arch
OS Family:         Redhat
Operating systems: 

Locations:         
    DefaultLocation
Organizations:     
    RHCI
Created at:        2023/04/29 00:18:15
Updated at:        2023/04/29 00:18:15


```



```
Id:                8
Name:              CoreOS mirror
Path:              http://$release.release.core-os.net
OS Family:         Coreos
Operating systems: 

Locations:         
    DefaultLocation
Organizations:     
    RHCI
Created at:        2023/04/29 00:18:15
Updated at:        2023/04/29 00:18:15


```



```
Id:                2
Name:              Debian mirror
Path:              http://ftp.debian.org/debian
OS Family:         Debian
Operating systems: 

Locations:         
    DefaultLocation
Organizations:     
    RHCI
Created at:        2023/04/29 00:18:15
Updated at:        2023/04/29 00:18:15


```



```
Id:                4
Name:              Fedora Atomic mirror
Path:              http://dl.fedoraproject.org/pub/alt/atomic/stable/Cloud_Atomic/$arch/os/
OS Family:         Redhat
Operating systems: 

Locations:         
    DefaultLocation
Organizations:     
    RHCI
Created at:        2023/04/29 00:18:15
Updated at:        2023/04/29 00:18:15


```



```
Id:                3
Name:              Fedora mirror
Path:              http://dl.fedoraproject.org/pub/fedora/linux/releases/$major/Server/$arch/os/
OS Family:         Redhat
Operating systems: 

Locations:         
    DefaultLocation
Organizations:     
    RHCI
Created at:        2023/04/29 00:18:15
Updated at:        2023/04/29 00:18:15


```



```
Id:                5
Name:              FreeBSD mirror
Path:              http://ftp.freebsd.org/pub/FreeBSD/releases/$arch/$version-RELEASE/
OS Family:         Freebsd
Operating systems: 

Locations:         
    DefaultLocation
Organizations:     
    RHCI
Created at:        2023/04/29 00:18:15
Updated at:        2023/04/29 00:18:15


```



```
Id:                6
Name:              OpenSUSE mirror
Path:              http://download.opensuse.org/distribution/leap/$version/repo/oss
OS Family:         Suse
Operating systems: 

Locations:         
    DefaultLocation
Organizations:     
    RHCI
Created at:        2023/04/29 00:18:15
Updated at:        2023/04/29 00:18:15


```



```
Id:                9
Name:              RancherOS mirror
Path:              https://github.com/rancher/os/releases/download/v$version
OS Family:         Rancheros
Operating systems: 

Locations:         
    DefaultLocation
Organizations:     
    RHCI
Created at:        2023/04/29 00:18:15
Updated at:        2023/04/29 00:18:15


```



```
Id:                7
Name:              Ubuntu mirror
Path:              http://archive.ubuntu.com/ubuntu
OS Family:         Debian
Operating systems: 

Locations:         
    DefaultLocation
Organizations:     
    RHCI
Created at:        2023/04/29 00:18:15
Updated at:        2023/04/29 00:18:15


```


### model 

```
---|-----------------------------------|--------------|---------
ID | NAME                              | VENDOR CLASS | HW MODEL
---|-----------------------------------|--------------|---------
1  | Standard PC (i440FX + PIIX, 1996) |              |         
---|-----------------------------------|--------------|---------

```



```
Id:           1
Name:         Standard PC (i440FX + PIIX, 1996)
Vendor class: 
HW model:     
Info:         
Created at:   2023/04/29 00:30:41
Updated at:   2023/04/29 00:30:41


```


### organization 

```
Warning: Option --environments is deprecated. Use --puppet-environments instead
Warning: Option --environment-ids is deprecated. Use --puppet-environment-ids instead
---|---------------------------------|---------------------------------|-------------|-------------------
ID | TITLE                           | NAME                            | DESCRIPTION | LABEL             
---|---------------------------------|---------------------------------|-------------|-------------------
1  | RHCI                            | RHCI                            |             | RHCI              
3  | Wëird Orgañization 鋼の錬金術師 | Wëird Orgañization 鋼の錬金術師 |             | weird-organization
---|---------------------------------|---------------------------------|-------------|-------------------

```



```
Warning: Option --environments is deprecated. Use --puppet-environments instead
Warning: Option --environment-ids is deprecated. Use --puppet-environment-ids instead
Id:                     1
Title:                  RHCI
Name:                   RHCI
Description:            
Users:                  
    admin
    foreman_admin
    foreman_api_admin
    foreman_console_admin
    virt_who_reporter_1
Smart proxies:          
    sat-reporting.p1.lab
Subnets:                
    MGMT (192.168.123.0/24)
Compute resources:      
    vcenter.p1.lab
Installation media:     
    CentOS mirror
    CoreOS mirror
    Debian mirror
    Fedora Atomic mirror
    Fedora mirror
    FreeBSD mirror
    OpenSUSE mirror
    RancherOS mirror
    Ubuntu mirror
Templates:              
    Alterator default (provision)
    Alterator default finish (finish)
    Alterator default PXELinux (PXELinux)
    alterator_pkglist
    ansible_provisioning_callback
    ansible_tower_callback_script
    ansible_tower_callback_service
    Atomic Kickstart default (provision)
    AutoYaST default (provision)
    AutoYaST default iPXE (iPXE)
    AutoYaST default PXELinux (PXELinux)
    AutoYaST default user data (user_data)
    AutoYaST SLES default (provision)
    blacklist_kernel_modules
    bmc_nic_setup
    Boot disk iPXE - generic host (Bootdisk)
    Boot disk iPXE - host (Bootdisk)
    built
    chef_client
    CloudInit default (cloud-init)
    coreos_cloudconfig
    CoreOS provision (provision)
    CoreOS PXELinux (PXELinux)
    create_users
    csr_attributes.yaml
    Discovery Debian kexec (kexec)
    Discovery Red Hat kexec (kexec)
    efibootmgr_netboot
    epel
    fips_packages
    fix_hosts
    FreeBSD (mfsBSD) finish (finish)
    FreeBSD (mfsBSD) provision (provision)
    FreeBSD (mfsBSD) PXELinux (PXELinux)
    freeipa_register
    Grubby default (script)
    http_proxy
    iPXE default local boot (iPXE)
    iPXE global default (iPXE)
    iPXE intermediate script (iPXE)
    Jumpstart default (provision)
    Jumpstart default finish (finish)
    Jumpstart default PXEGrub (PXEGrub)
    Junos default finish (finish)
    Junos default SLAX (provision)
    Junos default ZTP config (ZTP)
    Kickstart default (provision)
    Kickstart default finish (finish)
    Kickstart default iPXE (iPXE)
    Kickstart default PXEGrub (PXEGrub)
    Kickstart default PXEGrub2 (PXEGrub2)
    Kickstart default PXELinux (PXELinux)
    Kickstart default user data (user_data)
    kickstart_ifcfg_bonded_interface
    kickstart_ifcfg_bond_interface
    kickstart_ifcfg_generic_interface
    kickstart_ifcfg_get_identifier_names
    kickstart_networking_setup
    Kickstart oVirt-RHVH (provision)
    Kickstart oVirt-RHVH PXELinux (PXELinux)
    NX-OS default POAP setup (POAP)
    Preseed default (provision)
    Preseed default finish (finish)
    Preseed default iPXE (iPXE)
    Preseed default PXEGrub2 (PXEGrub2)
    Preseed default PXELinux (PXELinux)
    Preseed default user data (user_data)
    preseed_networking_setup
    puppet.conf
    puppetlabs_repo
    puppet_setup
    pxegrub2_chainload
    PXEGrub2 default local boot (PXEGrub2)
    pxegrub2_discovery
    PXEGrub2 global default (PXEGrub2)
    pxegrub2_mac
    pxegrub_chainload
    PXEGrub default local boot (PXEGrub)
    pxegrub_discovery
    PXEGrub global default (PXEGrub)
    PXELinux chain iPXE (PXELinux)
    PXELinux chain iPXE UNDI (PXELinux)
    pxelinux_chainload
    PXELinux default local boot (PXELinux)
    PXELinux default memdisk (PXELinux)
    pxelinux_discovery
    PXELinux global default (PXELinux)
    rancheros_cloudconfig
    RancherOS provision (provision)
    RancherOS PXELinux (PXELinux)
    redhat_register
    remote_execution_ssh_keys
    saltstack_minion
    saltstack_setup
    UserData default (user_data)
    UserData open-vm-tools (user_data)
    WAIK default PXELinux (PXELinux)
    XenServer default answerfile (provision)
    XenServer default finish (finish)
    XenServer default PXELinux (PXELinux)
Domains:                
    p1.lab
Environments:           
    common
    production
Hostgroups:             
    HG_ALL
    HG_ALL/HG_PROD_LIVE
    HG_ALL/HG_PROD_STAGING
    HG_ALL/SW-DELIVERY
    HG_ALL/SW-DELIVERY/DEV
    HG_ALL/SW-DELIVERY/PREPRODUCTION
    HG_ALL/SW-DELIVERY/PRODUCTION
    HG_ALL/SW-DELIVERY/TEST
Parameters:             

Locations:              
    DefaultLocation
Created at:             2023/04/29 00:18:10
Updated at:             2023/04/29 09:57:25
Label:                  RHCI
Description:            
Red Hat Repository URL: https://cdn.redhat.com
Service Levels:         Self-Support


```



```
Warning: Option --environments is deprecated. Use --puppet-environments instead
Warning: Option --environment-ids is deprecated. Use --puppet-environment-ids instead
Id:                     3
Title:                  Wëird Orgañization 鋼の錬金術師
Name:                   Wëird Orgañization 鋼の錬金術師
Description:            
Users:                  

Smart proxies:          
    sat-reporting.p1.lab
Subnets:                

Compute resources:      

Installation media:     

Templates:              
    Alterator default (provision)
    Alterator default finish (finish)
    Alterator default PXELinux (PXELinux)
    alterator_pkglist
    ansible_provisioning_callback
    ansible_tower_callback_script
    ansible_tower_callback_service
    Atomic Kickstart default (provision)
    AutoYaST default (provision)
    AutoYaST default iPXE (iPXE)
    AutoYaST default PXELinux (PXELinux)
    AutoYaST default user data (user_data)
    AutoYaST SLES default (provision)
    blacklist_kernel_modules
    bmc_nic_setup
    Boot disk iPXE - generic host (Bootdisk)
    Boot disk iPXE - host (Bootdisk)
    built
    chef_client
    CloudInit default (cloud-init)
    coreos_cloudconfig
    CoreOS provision (provision)
    CoreOS PXELinux (PXELinux)
    create_users
    csr_attributes.yaml
    Discovery Debian kexec (kexec)
    Discovery Red Hat kexec (kexec)
    efibootmgr_netboot
    epel
    fips_packages
    fix_hosts
    FreeBSD (mfsBSD) finish (finish)
    FreeBSD (mfsBSD) provision (provision)
    FreeBSD (mfsBSD) PXELinux (PXELinux)
    freeipa_register
    Grubby default (script)
    http_proxy
    iPXE default local boot (iPXE)
    iPXE global default (iPXE)
    iPXE intermediate script (iPXE)
    Jumpstart default (provision)
    Jumpstart default finish (finish)
    Jumpstart default PXEGrub (PXEGrub)
    Junos default finish (finish)
    Junos default SLAX (provision)
    Junos default ZTP config (ZTP)
    Kickstart default (provision)
    Kickstart default finish (finish)
    Kickstart default iPXE (iPXE)
    Kickstart default PXEGrub (PXEGrub)
    Kickstart default PXEGrub2 (PXEGrub2)
    Kickstart default PXELinux (PXELinux)
    Kickstart default user data (user_data)
    kickstart_ifcfg_bonded_interface
    kickstart_ifcfg_bond_interface
    kickstart_ifcfg_generic_interface
    kickstart_ifcfg_get_identifier_names
    kickstart_networking_setup
    Kickstart oVirt-RHVH (provision)
    Kickstart oVirt-RHVH PXELinux (PXELinux)
    NX-OS default POAP setup (POAP)
    Preseed default (provision)
    Preseed default finish (finish)
    Preseed default iPXE (iPXE)
    Preseed default PXEGrub2 (PXEGrub2)
    Preseed default PXELinux (PXELinux)
    Preseed default user data (user_data)
    preseed_networking_setup
    puppet.conf
    puppetlabs_repo
    puppet_setup
    pxegrub2_chainload
    PXEGrub2 default local boot (PXEGrub2)
    pxegrub2_discovery
    PXEGrub2 global default (PXEGrub2)
    pxegrub2_mac
    pxegrub_chainload
    PXEGrub default local boot (PXEGrub)
    pxegrub_discovery
    PXEGrub global default (PXEGrub)
    PXELinux chain iPXE (PXELinux)
    PXELinux chain iPXE UNDI (PXELinux)
    pxelinux_chainload
    PXELinux default local boot (PXELinux)
    PXELinux default memdisk (PXELinux)
    pxelinux_discovery
    PXELinux global default (PXELinux)
    rancheros_cloudconfig
    RancherOS provision (provision)
    RancherOS PXELinux (PXELinux)
    redhat_register
    remote_execution_ssh_keys
    saltstack_minion
    saltstack_setup
    UserData default (user_data)
    UserData open-vm-tools (user_data)
    WAIK default PXELinux (PXELinux)
    XenServer default answerfile (provision)
    XenServer default finish (finish)
    XenServer default PXELinux (PXELinux)
Domains:                

Environments:           
    common
Hostgroups:             

Parameters:             

Created at:             2023/04/29 09:57:51
Updated at:             2023/04/29 14:06:30
Label:                  weird-organization
Description:            
Red Hat Repository URL: https://cdn.redhat.com
Service Levels:         Premium


```


### os 

```
---|------------|--------------|-------
ID | TITLE      | RELEASE NAME | FAMILY
---|------------|--------------|-------
1  | RedHat 7.9 |              | Redhat
2  | RedHat 8.6 |              | Redhat
---|------------|--------------|-------

```



```
Id:                 1
Title:              RedHat 7.9
Release name:       
Family:             Redhat
Name:               RedHat
Major version:      7
Minor version:      9
Partition tables:   
    Kickstart default
Default templates:  
    Kickstart default PXELinux (PXELinux)
    Kickstart default PXEGrub (PXEGrub)
    Kickstart default PXEGrub2 (PXEGrub2)
    Kickstart default iPXE (iPXE)
    Kickstart default (provision)
    Kickstart default finish (finish)
    Kickstart default user data (user_data)
    Discovery Red Hat kexec (kexec)
Architectures:      
    x86_64
Installation media: 

Templates:          
    Discovery Red Hat kexec (kexec)
    Kickstart default (provision)
    Kickstart default finish (finish)
    Kickstart default iPXE (iPXE)
    Kickstart default PXEGrub (PXEGrub)
    Kickstart default PXEGrub2 (PXEGrub2)
    Kickstart default PXELinux (PXELinux)
    Kickstart default user data (user_data)
Parameters:


```



```
Id:                 2
Title:              RedHat 8.6
Release name:       
Family:             Redhat
Name:               RedHat
Major version:      8
Minor version:      6
Partition tables:   
    Kickstart default
Default templates:  
    Kickstart default PXELinux (PXELinux)
    Kickstart default PXEGrub (PXEGrub)
    Kickstart default PXEGrub2 (PXEGrub2)
    Kickstart default iPXE (iPXE)
    Kickstart default (provision)
    Kickstart default finish (finish)
    Kickstart default user data (user_data)
    Discovery Red Hat kexec (kexec)
Architectures:      
    x86_64
Installation media: 

Templates:          
    Discovery Red Hat kexec (kexec)
    Kickstart default (provision)
    Kickstart default finish (finish)
    Kickstart default iPXE (iPXE)
    Kickstart default PXEGrub (PXEGrub)
    Kickstart default PXEGrub2 (PXEGrub2)
    Kickstart default PXELinux (PXELinux)
    Kickstart default user data (user_data)
Parameters:


```


### partition-table 

```
----|------------------------------|----------
ID  | NAME                         | OS FAMILY
----|------------------------------|----------
97  | AutoYaST entire SCSI disk    | Suse     
98  | AutoYaST entire virtual disk | Suse     
99  | AutoYaST LVM                 | Suse     
100 | CoreOS default fake          | Coreos   
101 | Empty                        | Rancheros
102 | FreeBSD default fake         | Freebsd  
103 | Jumpstart default            | Solaris  
104 | Jumpstart mirrored           | Solaris  
105 | Junos default fake           | Junos    
106 | Kickstart default            | Redhat   
107 | Kickstart default thin       | Redhat   
108 | NX-OS default fake           | NXOS     
109 | Preseed default              | Debian   
110 | Preseed default LVM          | Debian   
111 | XenServer default            | Xenserver
----|------------------------------|----------

```



```
Id:                97
Name:              AutoYaST entire SCSI disk
OS Family:         Suse
Locked:            yes
Operating systems: 

Created at:        2023/04/29 00:18:14
Updated at:        2023/04/29 00:18:14
Locations:         
    DefaultLocation
Organizations:     
    RHCI
    Wëird Orgañization 鋼の錬金術師


```



```
Id:                98
Name:              AutoYaST entire virtual disk
OS Family:         Suse
Locked:            yes
Operating systems: 

Created at:        2023/04/29 00:18:14
Updated at:        2023/04/29 00:18:14
Locations:         
    DefaultLocation
Organizations:     
    RHCI
    Wëird Orgañization 鋼の錬金術師


```



```
Id:                99
Name:              AutoYaST LVM
OS Family:         Suse
Locked:            yes
Operating systems: 

Created at:        2023/04/29 00:18:14
Updated at:        2023/04/29 00:18:14
Locations:         
    DefaultLocation
Organizations:     
    RHCI
    Wëird Orgañization 鋼の錬金術師


```



```
Id:                100
Name:              CoreOS default fake
OS Family:         Coreos
Locked:            yes
Operating systems: 

Created at:        2023/04/29 00:18:14
Updated at:        2023/04/29 00:18:14
Locations:         
    DefaultLocation
Organizations:     
    RHCI
    Wëird Orgañization 鋼の錬金術師


```



```
Id:                101
Name:              Empty
OS Family:         Rancheros
Locked:            yes
Operating systems: 

Created at:        2023/04/29 00:18:14
Updated at:        2023/04/29 00:18:14
Locations:         
    DefaultLocation
Organizations:     
    RHCI
    Wëird Orgañization 鋼の錬金術師


```



```
Id:                102
Name:              FreeBSD default fake
OS Family:         Freebsd
Locked:            yes
Operating systems: 

Created at:        2023/04/29 00:18:14
Updated at:        2023/04/29 00:18:14
Locations:         
    DefaultLocation
Organizations:     
    RHCI
    Wëird Orgañization 鋼の錬金術師


```



```
Id:                103
Name:              Jumpstart default
OS Family:         Solaris
Locked:            yes
Operating systems: 

Created at:        2023/04/29 00:18:14
Updated at:        2023/04/29 00:18:14
Locations:         
    DefaultLocation
Organizations:     
    RHCI
    Wëird Orgañization 鋼の錬金術師


```



```
Id:                104
Name:              Jumpstart mirrored
OS Family:         Solaris
Locked:            yes
Operating systems: 

Created at:        2023/04/29 00:18:14
Updated at:        2023/04/29 00:18:14
Locations:         
    DefaultLocation
Organizations:     
    RHCI
    Wëird Orgañization 鋼の錬金術師


```



```
Id:                105
Name:              Junos default fake
OS Family:         Junos
Locked:            yes
Operating systems: 

Created at:        2023/04/29 00:18:15
Updated at:        2023/04/29 00:18:15
Locations:         
    DefaultLocation
Organizations:     
    RHCI
    Wëird Orgañization 鋼の錬金術師


```



```
Id:                106
Name:              Kickstart default
OS Family:         Redhat
Locked:            yes
Operating systems: 
    RedHat 7.9
    RedHat 8.6
Created at:        2023/04/29 00:18:15
Updated at:        2023/04/29 00:18:15
Locations:         
    DefaultLocation
Organizations:     
    RHCI
    Wëird Orgañization 鋼の錬金術師


```



```
Id:                107
Name:              Kickstart default thin
OS Family:         Redhat
Locked:            yes
Operating systems: 

Created at:        2023/04/29 00:18:15
Updated at:        2023/04/29 00:18:15
Locations:         
    DefaultLocation
Organizations:     
    RHCI
    Wëird Orgañization 鋼の錬金術師


```



```
Id:                108
Name:              NX-OS default fake
OS Family:         NXOS
Locked:            yes
Operating systems: 

Created at:        2023/04/29 00:18:15
Updated at:        2023/04/29 00:18:15
Locations:         
    DefaultLocation
Organizations:     
    RHCI
    Wëird Orgañization 鋼の錬金術師


```



```
Id:                109
Name:              Preseed default
OS Family:         Debian
Locked:            yes
Operating systems: 

Created at:        2023/04/29 00:18:15
Updated at:        2023/04/29 00:18:15
Locations:         
    DefaultLocation
Organizations:     
    RHCI
    Wëird Orgañization 鋼の錬金術師


```



```
Id:                110
Name:              Preseed default LVM
OS Family:         Debian
Locked:            yes
Operating systems: 

Created at:        2023/04/29 00:18:15
Updated at:        2023/04/29 00:18:15
Locations:         
    DefaultLocation
Organizations:     
    RHCI
    Wëird Orgañization 鋼の錬金術師


```



```
Id:                111
Name:              XenServer default
OS Family:         Xenserver
Locked:            yes
Operating systems: 

Created at:        2023/04/29 00:18:15
Updated at:        2023/04/29 00:18:15
Locations:         
    DefaultLocation
Organizations:     
    RHCI
    Wëird Orgañization 鋼の錬金術師


```


### policy 

```
---|------|-----------
ID | NAME | CREATED AT
---|------|-----------

```


### proxy 

```
---|----------------------|-----------------------------------|--------------------------
ID | NAME                 | URL                               | FEATURES                 
---|----------------------|-----------------------------------|--------------------------
1  | sat-reporting.p1.lab | https://sat-reporting.p1.lab:9090 | Pulp, Dynflow, Ansible...
---|----------------------|-----------------------------------|--------------------------

```



```
Id:            1
Name:          sat-reporting.p1.lab
URL:           https://sat-reporting.p1.lab:9090
Features:      
    Pulp
    Dynflow
    Ansible
    Discovery
    Openscap
    SSH
    Templates
    TFTP
    Puppet CA
    Puppet
    Logs
    HTTPBoot
    Realm
Locations:     
    DefaultLocation
Organizations: 
    RHCI
    Wëird Orgañization 鋼の錬金術師
Created at:    2023/04/29 00:30:21
Updated at:    2023/04/29 00:30:22


```


### realm 

```
---|-------
ID | NAME  
---|-------
1  | P1.LAB
---|-------

```



```
Id:             1
Name:           P1.LAB
Realm proxy id: 1
Realm type:     Red Hat Identity Management
Locations:      
    DefaultLocation
Organizations:  
    RHCI
Created at:     2023/04/29 13:28:35
Updated at:     2023/04/29 13:28:35


```


### recurring-logic 

```
---|-------------|----------|-----------|---------
ID | CRON LINE   | END TIME | ITERATION | STATE   
---|-------------|----------|-----------|---------
1  | 0 0 * * 6   |          | 0         |         
2  | 00 07 * * * |          | 2         | active  
3  | 30 9 * * 6  |          | 1         | active  
4  | 0 * * * *   |          | 1         | disabled
---|-------------|----------|-----------|---------

```



```
ID:        1
Cron line: 0 0 * * 6
End time:  
Iteration: 0
State:


```



```
ID:        2
Cron line: 00 07 * * *
End time:  
Iteration: 2
State:     active


```



```
ID:        3
Cron line: 30 9 * * 6
End time:  
Iteration: 1
State:     active


```



```
ID:        4
Cron line: 0 * * * *
End time:  
Iteration: 1
State:     disabled


```


### remote-execution-feature 

```
---|----------------------------------------|--------------------------------------------------------------------------|----------------------------------------
ID | NAME                                   | DESCRIPTION                                                              | JOB TEMPLATE NAME                      
---|----------------------------------------|--------------------------------------------------------------------------|----------------------------------------
7  | Katello: Install Errata                | Install errata via Katello interface                                     | Install Errata - Katello SSH Default   
4  | Katello: Install Package Group         | Install package group via Katello interface                              | Install Group - Katello SSH Default    
1  | Katello: Install Package               | Install package via Katello interface                                    | Install Package - Katello SSH Default  
6  | Katello: Remove Package Group          | Remove package group via Katello interface                               | Remove Group - Katello SSH Default     
3  | Katello: Remove Package                | Remove package via Katello interface                                     | Remove Package - Katello SSH Default   
8  | Katello: Service Restart               | Restart Services via Katello interface                                   | Restart Services - Katello SSH Default 
5  | Katello: Update Package Group          | Update package group via Katello interface                               | Update Group - Katello SSH Default     
2  | Katello: Update Package                | Update package via Katello interface                                     | Update Package - Katello SSH Default   
10 | Run Ansible roles                      | Runs an Ansible playbook which contains all the roles defined for a host | Ansible Roles - Ansible Default        
11 | Ansible: Run Insights maintenance plan | Runs a given maintenance plan from Red Hat Access Insights given an ID.  | Ansible - Run insights maintenance plan
9  | Katello: Module Stream Actions         | Perform a module stream action via Katello interface                     | Module Action - SSH Default            
12 | Run OpenSCAP scan                      | Run OpenSCAP scan                                                        | Run OpenSCAP scans                     
---|----------------------------------------|--------------------------------------------------------------------------|----------------------------------------

```



```
ID:                7
Label:             katello_errata_install
Name:              Katello: Install Errata
Description:       Install errata via Katello interface
Job template name: Install Errata - Katello SSH Default
Job template ID:   131


```



```
ID:                4
Label:             katello_group_install
Name:              Katello: Install Package Group
Description:       Install package group via Katello interface
Job template name: Install Group - Katello SSH Default
Job template ID:   133


```



```
ID:                1
Label:             katello_package_install
Name:              Katello: Install Package
Description:       Install package via Katello interface
Job template name: Install Package - Katello SSH Default
Job template ID:   135


```



```
ID:                6
Label:             katello_group_remove
Name:              Katello: Remove Package Group
Description:       Remove package group via Katello interface
Job template name: Remove Group - Katello SSH Default
Job template ID:   137


```



```
ID:                3
Label:             katello_package_remove
Name:              Katello: Remove Package
Description:       Remove package via Katello interface
Job template name: Remove Package - Katello SSH Default
Job template ID:   139


```



```
ID:                8
Label:             katello_service_restart
Name:              Katello: Service Restart
Description:       Restart Services via Katello interface
Job template name: Restart Services - Katello SSH Default
Job template ID:   141


```



```
ID:                5
Label:             katello_group_update
Name:              Katello: Update Package Group
Description:       Update package group via Katello interface
Job template name: Update Group - Katello SSH Default
Job template ID:   143


```



```
ID:                2
Label:             katello_package_update
Name:              Katello: Update Package
Description:       Update package via Katello interface
Job template name: Update Package - Katello SSH Default
Job template ID:   145


```



```
ID:                10
Label:             ansible_run_host
Name:              Run Ansible roles
Description:       Runs an Ansible playbook which contains all the roles defined for a host
Job template name: Ansible Roles - Ansible Default
Job template ID:   147


```



```
ID:                11
Label:             ansible_run_insights_plan
Name:              Ansible: Run Insights maintenance plan
Description:       Runs a given maintenance plan from Red Hat Access Insights given an ID.
Job template name: Ansible - Run insights maintenance plan
Job template ID:   150


```



```
ID:                9
Label:             katello_module_stream_action
Name:              Katello: Module Stream Actions
Description:       Perform a module stream action via Katello interface
Job template name: Module Action - SSH Default
Job template ID:   121


```



```
ID:                12
Label:             foreman_openscap_run_scans
Name:              Run OpenSCAP scan
Description:       Run OpenSCAP scan
Job template name: Run OpenSCAP scans
Job template ID:   157


```


### report 

```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
---|----------------------|---------------------|---------|-----------|--------|------------------|---------|--------
ID | HOST                 | LAST REPORT         | APPLIED | RESTARTED | FAILED | RESTART FAILURES | SKIPPED | PENDING
---|----------------------|---------------------|---------|-----------|--------|------------------|---------|--------
34 | sat-reporting.p1.lab | 2023/04/29 17:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
33 | sat-reporting.p1.lab | 2023/04/29 16:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
32 | sat-reporting.p1.lab | 2023/04/29 16:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
31 | sat-reporting.p1.lab | 2023/04/29 15:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
30 | sat-reporting.p1.lab | 2023/04/29 15:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
29 | sat-reporting.p1.lab | 2023/04/29 14:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
28 | sat-reporting.p1.lab | 2023/04/29 14:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
27 | sat-reporting.p1.lab | 2023/04/29 13:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
26 | sat-reporting.p1.lab | 2023/04/29 13:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
25 | sat-reporting.p1.lab | 2023/04/29 12:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
24 | sat-reporting.p1.lab | 2023/04/29 12:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
23 | sat-reporting.p1.lab | 2023/04/29 11:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
22 | sat-reporting.p1.lab | 2023/04/29 11:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
21 | sat-reporting.p1.lab | 2023/04/29 10:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
20 | sat-reporting.p1.lab | 2023/04/29 10:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
19 | sat-reporting.p1.lab | 2023/04/29 09:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
18 | sat-reporting.p1.lab | 2023/04/29 09:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
17 | sat-reporting.p1.lab | 2023/04/29 08:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
16 | sat-reporting.p1.lab | 2023/04/29 08:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
15 | sat-reporting.p1.lab | 2023/04/29 07:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
14 | sat-reporting.p1.lab | 2023/04/29 07:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
13 | sat-reporting.p1.lab | 2023/04/29 06:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
12 | sat-reporting.p1.lab | 2023/04/29 06:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
11 | sat-reporting.p1.lab | 2023/04/29 05:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
10 | sat-reporting.p1.lab | 2023/04/29 05:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
9  | sat-reporting.p1.lab | 2023/04/29 04:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
8  | sat-reporting.p1.lab | 2023/04/29 04:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
7  | sat-reporting.p1.lab | 2023/04/29 03:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
6  | sat-reporting.p1.lab | 2023/04/29 03:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
5  | sat-reporting.p1.lab | 2023/04/29 02:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
4  | sat-reporting.p1.lab | 2023/04/29 02:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
3  | sat-reporting.p1.lab | 2023/04/29 01:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
2  | sat-reporting.p1.lab | 2023/04/29 01:00:26 | 0       | 0         | 0      | 0                | 0       | 0      
1  | sat-reporting.p1.lab | 2023/04/29 00:30:26 | 0       | 0         | 0      | 0                | 0       | 0      
---|----------------------|---------------------|---------|-----------|--------|------------------|---------|--------

```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             34
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 17:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.9542053609984578
    filebucket:       4.4559e-05
    total:            5.873128143
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.25 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             33
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 16:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.8807757870017667
    filebucket:       5.8373e-05
    total:            5.310532158
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.28 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             32
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 16:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.7164874299996882
    filebucket:       5.1932e-05
    total:            4.100044004
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.25 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             31
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 15:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.7764166560009471
    filebucket:       5.4043e-05
    total:            4.381520233
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.24 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             30
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 15:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.8578841890048352
    filebucket:       5.0079e-05
    total:            4.415918028
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.25 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             29
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 14:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 1.5238116520049516
    filebucket:       6.8408e-05
    total:            8.288381612
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.37 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             28
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 14:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 1.2223137600012706
    filebucket:       4.8533e-05
    total:            6.718442842
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.27 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             27
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 13:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 3.42671630300174
    filebucket:       4.961e-05
    total:            8.156729909
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.24 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             26
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 13:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 1.000191094004549
    filebucket:       5.2165e-05
    total:            6.35261698
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.30 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             25
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 12:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 2.08801362500526
    filebucket:       6.7145e-05
    total:            7.857408573
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.33 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             24
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 12:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 1.0296009450030397
    filebucket:       6.7812e-05
    total:            6.882198997
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.30 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             23
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 11:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 2.0836514309994527
    filebucket:       0.000100386
    total:            10.492667111
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.45 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             22
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 11:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 3.2458000870028627
    filebucket:       0.000212198
    total:            12.156698123
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.91 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             21
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 10:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 2.0593187889971887
    filebucket:       0.000132333
    total:            10.977735637
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.52 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             20
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 10:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 1.6718058030019165
    filebucket:       0.000124366
    total:            9.144242847
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.59 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             19
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 09:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.8886417460016673
    filebucket:       4.355e-05
    total:            4.5946338
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.25 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             18
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 09:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.7146452859997225
    filebucket:       4.2305e-05
    total:            4.554423947
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.28 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             17
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 08:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.9915987879976456
    filebucket:       8.8372e-05
    total:            5.878237574
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.32 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             16
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 08:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.7470801279996522
    filebucket:       5.6835e-05
    total:            4.9706742
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.30 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             15
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 07:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 1.7627038829996309
    filebucket:       0.000110612
    total:            7.877068538
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.59 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             14
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 07:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.7555116760013334
    filebucket:       3.9595e-05
    total:            4.475405562
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.24 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             13
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 06:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 1.0877749090032012
    filebucket:       3.8895e-05
    total:            4.791229716
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.24 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             12
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 06:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.8287655249987438
    filebucket:       6.1182e-05
    total:            4.819843387
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.27 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             11
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 05:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.8499760250015242
    filebucket:       6.0653e-05
    total:            4.774298908
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.31 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             10
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 05:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.9423809279978741
    filebucket:       7.0129e-05
    total:            5.950364512
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.29 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             9
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 04:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.8216663650000555
    filebucket:       5.6453e-05
    total:            4.667238518
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.27 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             8
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 04:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.7847453499998664
    filebucket:       6.9611e-05
    total:            4.389925032
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.24 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             7
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 03:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.8646632540003338
    filebucket:       5.1372e-05
    total:            4.480180736
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.23 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             6
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 03:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 1.0519105289986328
    filebucket:       5.2908e-05
    total:            7.192035012
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.29 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             5
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 02:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.7853066490006313
    filebucket:       5.2099e-05
    total:            4.317571109
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.24 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             4
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 02:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.8220300950006276
    filebucket:       4.7688e-05
    total:            4.495655182
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.28 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             3
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 01:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.8470266609992905
    filebucket:       6.3251e-05
    total:            4.361631065
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.23 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             2
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 01:00:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 0.8156338860003416
    filebucket:       4.0547e-05
    total:            5.097260102
Logs:           
 1) Resource: Puppet
    Message:  Applied catalog in 0.24 seconds


```



```
report command is deprecated and will be removed in one of the future versions. Please use config-report command instead.
Id:             1
Host:           sat-reporting.p1.lab
Reported at:    2023/04/29 00:30:26
Report status:  
    Applied:          0
    Restarted:        0
    Failed:           0
    Restart Failures: 0
    Skipped:          0
    Pending:          0
Report metrics: 
    config_retrieval: 4.27171724699997
    filebucket:       4.9867e-05
    total:            15.408984373
Logs:           
 1) Resource: Puppet
    Message:  Unable to fetch my node definition, but the agent run will continue:
 2) Resource: Puppet
    Message:  Error 500 on SERVER: Server Error: Failed to find sat-reporting.p1.lab via exec: Execution of '/etc/puppetlabs/puppet/node.rb sat-reporting.p1.lab' returned 1:
 3) Resource: /File[/opt/puppetlabs/puppet/cache/lib/facter]/ensure
    Message:  created
 4) Resource: /File[/opt/puppetlabs/puppet/cache/lib/facter/facter_dot_d.rb]/ensure
    Message:  defined content as '{md5}9f65108ecd7b8c5ce9c90ab4cd9d45be'
 5) Resource: /File[/opt/puppetlabs/puppet/cache/lib/facter/package_provider.rb]/ensure
    Message:  defined content as '{md5}12d57e65f9b90c13e7808c347fbdc0b0'
 6) Resource: /File[/opt/puppetlabs/puppet/cache/lib/facter/pe_version.rb]/ensure
    Message:  defined content as '{md5}245bb8ea121e8a55e1a38668cc480530'
 7) Resource: /File[/opt/puppetlabs/puppet/cache/lib/facter/puppet_settings.rb]/ensure
    Message:  defined content as '{md5}d86bacf2b962a4744b701868cda31729'
 8) Resource: /File[/opt/puppetlabs/puppet/cache/lib/facter/rh_certificates.rb]/ensure
    Message:  defined content as '{md5}0506fbcba122f58017be8143aa156807'
 9) Resource: /File[/opt/puppetlabs/puppet/cache/lib/facter/root_home.rb]/ensure
    Message:  defined content as '{md5}b384092f0470b9e2177edaf546de2ec1'
 10)Resource: /File[/opt/puppetlabs/puppet/cache/lib/facter/service_provider.rb]/ensure
    Message:  defined content as '{md5}66cc42526eae631e306b397391f1f01c'
 11)Resource: /File[/opt/puppetlabs/puppet/cache/lib/facter/util]/ensure
    Message:  created
 12)Resource: /File[/opt/puppetlabs/puppet/cache/lib/facter/util/puppet_settings.rb]/ensure
    Message:  defined content as '{md5}f69007bcc02031cd772fa7f2dffa3c0c'
 13)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet]/ensure
    Message:  created
 14)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions]/ensure
    Message:  created
 15)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/deprecation.rb]/ensure
    Message:  defined content as '{md5}705115a036e0235840db59cf9f4c17fe'
 16)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/fact.rb]/ensure
    Message:  defined content as '{md5}5879006198f1f4106acfe13422087d56'
 17)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/is_a.rb]/ensure
    Message:  defined content as '{md5}5a61d6a34ef45d7a5490455f334ef48a'
 18)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/is_absolute_path.rb]/ensure
    Message:  defined content as '{md5}0806756fc12b1fc752d1b54e81b15832'
 19)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/is_array.rb]/ensure
    Message:  defined content as '{md5}4d5c8d6af4e481ebb42f73b6504685c8'
 20)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/is_bool.rb]/ensure
    Message:  defined content as '{md5}9ae803c605c5ed057508c6501ef1a47f'
 21)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/is_float.rb]/ensure
    Message:  defined content as '{md5}ebe18dc0096233fcd555423761fc29f2'
 22)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/is_ip_address.rb]/ensure
    Message:  defined content as '{md5}ab9a1c6172db59cc15023f220853e2f2'
 23)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/is_ipv4_address.rb]/ensure
    Message:  defined content as '{md5}dec325b5911ce409b16c643697a13822'
 24)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/is_ipv6_address.rb]/ensure
    Message:  defined content as '{md5}f4864fee72c42bd3e40914768fb10f8e'
 25)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/is_numeric.rb]/ensure
    Message:  defined content as '{md5}970d785070eaa02bcac3e0589a8d5e7f'
 26)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/is_string.rb]/ensure
    Message:  defined content as '{md5}5aa459896fda1782f74752a1d324f048'
 27)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/length.rb]/ensure
    Message:  defined content as '{md5}3f6b0510bfe134241e4529d3f1a5318d'
 28)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/sprintf_hash.rb]/ensure
    Message:  defined content as '{md5}50fc7c6e57c098b7e6a594e1fd0d9904'
 29)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/to_json.rb]/ensure
    Message:  defined content as '{md5}bb6893a3e9eb6c48064c5a3c0bd4a41a'
 30)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/to_json_pretty.rb]/ensure
    Message:  defined content as '{md5}61ff20121b4c09987eadf3242b6231cf'
 31)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/to_yaml.rb]/ensure
    Message:  defined content as '{md5}0358dfd97b9a051e15046c6842b327be'
 32)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/type_of.rb]/ensure
    Message:  defined content as '{md5}4ee9c082047c08b8b1a82bc0bef8fd78'
 33)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/validate_absolute_path.rb]/ensure
    Message:  defined content as '{md5}556b0e3de450f03d724747d7d3825309'
 34)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/validate_array.rb]/ensure
    Message:  defined content as '{md5}efe329c6c8f65fce1ae2560fa5751530'
 35)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/validate_bool.rb]/ensure
    Message:  defined content as '{md5}5516a0f2efb48eeb4460fc713c6f9521'
 36)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/validate_hash.rb]/ensure
    Message:  defined content as '{md5}ce99bea6e1ee4da1a67b53b3ce06ce96'
 37)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/validate_integer.rb]/ensure
    Message:  defined content as '{md5}c028b299f194c221002ba442077e9209'
 38)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/validate_ip_address.rb]/ensure
    Message:  defined content as '{md5}278f3e0ea96b4b31e7b85c13887079b6'
 39)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/validate_ipv4_address.rb]/ensure
    Message:  defined content as '{md5}bd015492af1f3c4bef7ac780ae1c7e61'
 40)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/validate_ipv6_address.rb]/ensure
    Message:  defined content as '{md5}5144a327b6850ed5b7fb26fa37113353'
 41)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/validate_legacy.rb]/ensure
    Message:  defined content as '{md5}789bdef436873b6fcc8205c6d2270e43'
 42)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/validate_numeric.rb]/ensure
    Message:  defined content as '{md5}2bd2733f44749e0e56940ceaf5d8e2f8'
 43)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/validate_re.rb]/ensure
    Message:  defined content as '{md5}12c3412a7383b1d258dba5d4307e9464'
 44)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/validate_slength.rb]/ensure
    Message:  defined content as '{md5}1fc441736085bd0b5c7862f5dc9f839a'
 45)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/functions/validate_string.rb]/ensure
    Message:  defined content as '{md5}c0fe867d3b5f8fbcaa3641f0f393a669'
 46)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser]/ensure
    Message:  created
 47)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions]/ensure
    Message:  created
 48)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/abs.rb]/ensure
    Message:  defined content as '{md5}176df45128a7b89c9ec6a6c6918d8c30'
 49)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/any2array.rb]/ensure
    Message:  defined content as '{md5}60cdb0bdfabff0115e74eda31c5c869b'
 50)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/any2bool.rb]/ensure
    Message:  defined content as '{md5}4bafd2903a5e7992b4a8af476f05f46a'
 51)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/assert_private.rb]/ensure
    Message:  defined content as '{md5}c61884d43ebdb5ee5a5aa1507165084a'
 52)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/base64.rb]/ensure
    Message:  defined content as '{md5}6216cc60b71949724e21b0be4dbac316'
 53)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/basename.rb]/ensure
    Message:  defined content as '{md5}6b0dc955024352c8007d175f900dba36'
 54)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/bool2num.rb]/ensure
    Message:  defined content as '{md5}bfeeac22e909c76dc5a0d55441f39a27'
 55)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/bool2str.rb]/ensure
    Message:  defined content as '{md5}e9e1c441e3b3c51b8b0734d12e9a63a5'
 56)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/camelcase.rb]/ensure
    Message:  defined content as '{md5}13f3125b1bcb6ce7794385aea6cbc4c0'
 57)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/capitalize.rb]/ensure
    Message:  defined content as '{md5}0a039c4bcd3a73dab80b389332457f0d'
 58)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/ceiling.rb]/ensure
    Message:  defined content as '{md5}c4af0da229909c00b2adda7bdd3f0d93'
 59)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/chomp.rb]/ensure
    Message:  defined content as '{md5}ebb5eb5e2020ec84c00477777f29b6bc'
 60)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/chop.rb]/ensure
    Message:  defined content as '{md5}6a7d4154b326e84e478eb4a17aa55e74'
 61)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/clamp.rb]/ensure
    Message:  defined content as '{md5}eeaed011946f4dec98870815e7c1657c'
 62)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/concat.rb]/ensure
    Message:  defined content as '{md5}02a6ba0560a005b5f92aec096ce26e09'
 63)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/convert_base.rb]/ensure
    Message:  defined content as '{md5}438da17946864b835e38155b8f72a184'
 64)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/count.rb]/ensure
    Message:  defined content as '{md5}0241b1bd0bc8de6426b7d077a54f56fe'
 65)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/deep_merge.rb]/ensure
    Message:  defined content as '{md5}fae771cff4fc1d6c639bea1672e05c9c'
 66)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/defined_with_params.rb]/ensure
    Message:  defined content as '{md5}0e2a92b10efb6c502df6a52f35cf7983'
 67)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/delete.rb]/ensure
    Message:  defined content as '{md5}ec0bb949e24d1b9ca6c749af0ab18de9'
 68)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/delete_at.rb]/ensure
    Message:  defined content as '{md5}4a6bde67835592dafa48bca7bb8af939'
 69)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/delete_regex.rb]/ensure
    Message:  defined content as '{md5}ee86f13f796e61e41c62ee91f8349735'
 70)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/delete_undef_values.rb]/ensure
    Message:  defined content as '{md5}247a52c41dc02375b50ac3c1791f4c09'
 71)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/delete_values.rb]/ensure
    Message:  defined content as '{md5}0a979383ac73e1bf82278e0eb104842c'
 72)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/deprecation.rb]/ensure
    Message:  defined content as '{md5}9f935fec2f9f0d01394292eb6f21bd7d'
 73)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/difference.rb]/ensure
    Message:  defined content as '{md5}e3d3006b7f50fc0fad1616ec53f21614'
 74)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/dig.rb]/ensure
    Message:  defined content as '{md5}d315de1659a037430fea9623bff323a6'
 75)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/dig44.rb]/ensure
    Message:  defined content as '{md5}2317ddee7dbda385e2f964655fe6ad88'
 76)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/dirname.rb]/ensure
    Message:  defined content as '{md5}240597e264df02effa454cf9cb8bb9e7'
 77)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/dos2unix.rb]/ensure
    Message:  defined content as '{md5}ab2f9f280c616be55f58903948e226a2'
 78)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/downcase.rb]/ensure
    Message:  defined content as '{md5}3e6b908548607a55ee426e8be16fb46c'
 79)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/empty.rb]/ensure
    Message:  defined content as '{md5}f9dcb1b4cb0abb671294d5283e673ee5'
 80)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/enclose_ipv6.rb]/ensure
    Message:  defined content as '{md5}89c728eb11f71ed9390664bad9732328'
 81)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/ensure_packages.rb]/ensure
    Message:  defined content as '{md5}a0b4bdc14613d4b8c396b4e02a1aa33d'
 82)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/ensure_resource.rb]/ensure
    Message:  defined content as '{md5}2915c77baa0d45531912613dd1cac902'
 83)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/ensure_resources.rb]/ensure
    Message:  defined content as '{md5}805d56e894c9dcca2595464fa87a7c56'
 84)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/flatten.rb]/ensure
    Message:  defined content as '{md5}54fd2d9d7bc7cd4f9889554da6094dd8'
 85)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/floor.rb]/ensure
    Message:  defined content as '{md5}f0a70977110525dc4aa6b109db9ff9e4'
 86)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/fqdn_rand_string.rb]/ensure
    Message:  defined content as '{md5}731365381b6a28a196e108329e16c6c2'
 87)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/fqdn_rotate.rb]/ensure
    Message:  defined content as '{md5}3925369078084f98f9b527d25cc9e4d2'
 88)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/fqdn_uuid.rb]/ensure
    Message:  defined content as '{md5}adbd60dbcc561c8586567a6e58abec82'
 89)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/get_module_path.rb]/ensure
    Message:  defined content as '{md5}e141ce049d4ace6d12b50d6b171b029c'
 90)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/getparam.rb]/ensure
    Message:  defined content as '{md5}84c7358b24f0a5e45c1ad523c196817e'
 91)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/getvar.rb]/ensure
    Message:  defined content as '{md5}835e6b79e209a541e125cdaddefb3396'
 92)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/glob.rb]/ensure
    Message:  defined content as '{md5}f8177554be6da357b0822edaa7eb8d14'
 93)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/grep.rb]/ensure
    Message:  defined content as '{md5}b2e7e32188a1cb4f1dafa375ba9b8b14'
 94)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/has_interface_with.rb]/ensure
    Message:  defined content as '{md5}422015811c5b7c0656b83eaea3b8fdcc'
 95)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/has_ip_address.rb]/ensure
    Message:  defined content as '{md5}fc76c9a87145560f58a4ae9a6d9df444'
 96)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/has_ip_network.rb]/ensure
    Message:  defined content as '{md5}b1bb1868e6fef95f8ae840d420ab0816'
 97)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/has_key.rb]/ensure
    Message:  defined content as '{md5}572f8a648c74c0b774718991a88adc56'
 98)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/hash.rb]/ensure
    Message:  defined content as '{md5}5730e6a297b9064c12d3484a2ae31010'
 99)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/intersection.rb]/ensure
    Message:  defined content as '{md5}6436444eb8585ee71cfd5bd1e0802026'
 100)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_absolute_path.rb]/ensure
    Message:  defined content as '{md5}268600b66670a29690be009d45013d42'
 101)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_array.rb]/ensure
    Message:  defined content as '{md5}0e425e55c8ce9cc5e327d53d114391ba'
 102)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_bool.rb]/ensure
    Message:  defined content as '{md5}4e021a5143c2c98b31344acceda5fbe2'
 103)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_domain_name.rb]/ensure
    Message:  defined content as '{md5}1abf04d1d57de6f7f630045c0efe5e4c'
 104)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_email_address.rb]/ensure
    Message:  defined content as '{md5}d11c644fa1bd73f8e1d36c4f9e67272e'
 105)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_float.rb]/ensure
    Message:  defined content as '{md5}b95a00f15242e3f26a5cf129db7d31e5'
 106)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_function_available.rb]/ensure
    Message:  defined content as '{md5}3bb60da5789493da017f84d48ac46f08'
 107)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_hash.rb]/ensure
    Message:  defined content as '{md5}3f74a7e9b6e47b834c4ad58939c27eab'
 108)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_integer.rb]/ensure
    Message:  defined content as '{md5}e3480725fccac1c7eba28162dc62393d'
 109)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_ip_address.rb]/ensure
    Message:  defined content as '{md5}3616dacf58febcd4944945d3c2647efe'
 110)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_ipv4_address.rb]/ensure
    Message:  defined content as '{md5}7930d25d23d92f0e5cb81f93315cea16'
 111)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_ipv6_address.rb]/ensure
    Message:  defined content as '{md5}c206564af3a738e504afca2284497d3c'
 112)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_mac_address.rb]/ensure
    Message:  defined content as '{md5}b75e440d5594b879b70cf034fc52cd51'
 113)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_numeric.rb]/ensure
    Message:  defined content as '{md5}4bd1a47192ce4040810819789fbf3147'
 114)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/is_string.rb]/ensure
    Message:  defined content as '{md5}cf06fecd6147bea77d406a189b649f81'
 115)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/join.rb]/ensure
    Message:  defined content as '{md5}aed0b418cc216d86f3beaa5f2302279b'
 116)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/join_keys_to_values.rb]/ensure
    Message:  defined content as '{md5}5ad99136e59a68064c24dd2933727c57'
 117)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/keys.rb]/ensure
    Message:  defined content as '{md5}d65816215c6c7736bcfe393e7d9d3bf4'
 118)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/load_module_metadata.rb]/ensure
    Message:  defined content as '{md5}4972bafc84e5b7ce4a00cbee21aece18'
 119)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/loadjson.rb]/ensure
    Message:  defined content as '{md5}b6e43c28dee4a74a7312af41393d09de'
 120)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/loadyaml.rb]/ensure
    Message:  defined content as '{md5}9066804fd56894210d4d064aab9df406'
 121)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/lstrip.rb]/ensure
    Message:  defined content as '{md5}de231169f63d922b72b754521488bca5'
 122)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/max.rb]/ensure
    Message:  defined content as '{md5}3406e6e1da36ed126ca7a359dbbcbb23'
 123)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/member.rb]/ensure
    Message:  defined content as '{md5}4f8639d96fbd17cd194224794dd9f279'
 124)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/merge.rb]/ensure
    Message:  defined content as '{md5}e867f9f9340d7bf5b85141d2f7ec2392'
 125)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/min.rb]/ensure
    Message:  defined content as '{md5}6243d16650b1787f017f587b5be276f3'
 126)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/num2bool.rb]/ensure
    Message:  defined content as '{md5}35f42a4339b34d0b1efc6a6c3b2d3b69'
 127)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/parsejson.rb]/ensure
    Message:  defined content as '{md5}fee0dc33cd6e18b0d9a5fe8befb66cd2'
 128)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/parseyaml.rb]/ensure
    Message:  defined content as '{md5}f4b67d011970c1799bc6fb36a3caf1f2'
 129)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/pick.rb]/ensure
    Message:  defined content as '{md5}4a4ba9288a233a4bcdbdc59ecac80be0'
 130)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/pick_default.rb]/ensure
    Message:  defined content as '{md5}6b0ccac1913a85e540a3de20c6a88096'
 131)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/prefix.rb]/ensure
    Message:  defined content as '{md5}3d268ec646255199ade4b01b719a59ed'
 132)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/private.rb]/ensure
    Message:  defined content as '{md5}a1f44a1c32da00aa14f474f4f303be87'
 133)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/pry.rb]/ensure
    Message:  defined content as '{md5}970544bf6308b7b6902b936063a45109'
 134)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/pw_hash.rb]/ensure
    Message:  defined content as '{md5}07fea662493e5b2ffcf37dbb4c4e74b9'
 135)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/range.rb]/ensure
    Message:  defined content as '{md5}60d786031129d4a495a67468d4b5219d'
 136)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/regexpescape.rb]/ensure
    Message:  defined content as '{md5}d7d22f987d616f2b5ec9d967f1528f53'
 137)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/reject.rb]/ensure
    Message:  defined content as '{md5}31f5f65be6f710d6856ffce75c432271'
 138)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/reverse.rb]/ensure
    Message:  defined content as '{md5}3f96ffed2afe4987da5039de2d56f38b'
 139)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/round.rb]/ensure
    Message:  defined content as '{md5}287db8b83f3bc6652eb042682f8be698'
 140)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/rstrip.rb]/ensure
    Message:  defined content as '{md5}5042d02e81ac59068d87a2b54c784cce'
 141)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/seeded_rand.rb]/ensure
    Message:  defined content as '{md5}4f45ef0723411ff8281aaf093f0fabc2'
 142)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/shell_escape.rb]/ensure
    Message:  defined content as '{md5}6e51793b8483eb6bfc4be98b438fd47e'
 143)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/shell_join.rb]/ensure
    Message:  defined content as '{md5}4fbe23ff73932f65db696f106517887e'
 144)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/shell_split.rb]/ensure
    Message:  defined content as '{md5}cb851119ee167ccb12930c53e94333cc'
 145)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/shuffle.rb]/ensure
    Message:  defined content as '{md5}6b16497151e961fbdb6e00ec70d6bbe9'
 146)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/size.rb]/ensure
    Message:  defined content as '{md5}05cbf180420e3a3e2e5aa5be157c6951'
 147)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/sort.rb]/ensure
    Message:  defined content as '{md5}20fa47c2ccde4b37626e8d3995503f02'
 148)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/squeeze.rb]/ensure
    Message:  defined content as '{md5}e42e1d5ec9a23443d14ff07512fd695f'
 149)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/str2bool.rb]/ensure
    Message:  defined content as '{md5}b82d971cc305a19b26089cc4fd566eb0'
 150)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/str2saltedsha512.rb]/ensure
    Message:  defined content as '{md5}d4443e8985b4ce6f6e925c6f46d8456c'
 151)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/strftime.rb]/ensure
    Message:  defined content as '{md5}62b13548cc3b28b1609b7b4bd966f666'
 152)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/strip.rb]/ensure
    Message:  defined content as '{md5}ec030431f8ec17e285f18a6f60b7f269'
 153)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/suffix.rb]/ensure
    Message:  defined content as '{md5}4eff1920b75829e32fb2c2ee4aab8a24'
 154)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/swapcase.rb]/ensure
    Message:  defined content as '{md5}d1a53787b35ae9a5a643c49f4e0975a8'
 155)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/time.rb]/ensure
    Message:  defined content as '{md5}cd31abf40b4e4e22b9de8b6b27ec1a50'
 156)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/to_bytes.rb]/ensure
    Message:  defined content as '{md5}55a65ad70ea78983e7c1d6d565094c1f'
 157)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/try_get_value.rb]/ensure
    Message:  defined content as '{md5}b039b960b07a21b935baf6c78fb94612'
 158)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/type.rb]/ensure
    Message:  defined content as '{md5}857348edb913cdc4f25b2169994984cf'
 159)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/type3x.rb]/ensure
    Message:  defined content as '{md5}22c902213365c39919625d1a33d5abff'
 160)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/union.rb]/ensure
    Message:  defined content as '{md5}690e5c15a1e7b95ab4b90ee18eb48f81'
 161)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/unique.rb]/ensure
    Message:  defined content as '{md5}e448da2c183c0e19bd6e64bc423a749f'
 162)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/unix2dos.rb]/ensure
    Message:  defined content as '{md5}0aa6e66d1c47ca0bb417e248b01f6f1b'
 163)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/upcase.rb]/ensure
    Message:  defined content as '{md5}b0ed0e1ada21b9d73a00043146254335'
 164)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/uriescape.rb]/ensure
    Message:  defined content as '{md5}f2facfe201658a65a7e81199cdd1bef7'
 165)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_absolute_path.rb]/ensure
    Message:  defined content as '{md5}892faf0e74b99b11190ec7fc4b78a893'
 166)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_array.rb]/ensure
    Message:  defined content as '{md5}9518be91bab77e56be711d1498d119b9'
 167)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_augeas.rb]/ensure
    Message:  defined content as '{md5}c5bbf1bc42b7ea024e48ab12b46f55e9'
 168)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_bool.rb]/ensure
    Message:  defined content as '{md5}bea67f1a0f5fc23ee8b632000cfa63db'
 169)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_cmd.rb]/ensure
    Message:  defined content as '{md5}dbb22e68eca3f6be63fb49b465b1d611'
 170)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_domain_name.rb]/ensure
    Message:  defined content as '{md5}04f4b1d0be9a8a12d278f0b044f78427'
 171)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_email_address.rb]/ensure
    Message:  defined content as '{md5}6dc01f14c43fdff19106a2388d01b51a'
 172)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_hash.rb]/ensure
    Message:  defined content as '{md5}80f7cfb430818e1497d3b12769d8f9c4'
 173)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_integer.rb]/ensure
    Message:  defined content as '{md5}edb176a717c4af6cd50d2d26e4da149d'
 174)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_ip_address.rb]/ensure
    Message:  defined content as '{md5}55d0f019803d687bf95bcc64e8751ba5'
 175)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_ipv4_address.rb]/ensure
    Message:  defined content as '{md5}94843b876cc92414b29223f7ac3cc3b6'
 176)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_ipv6_address.rb]/ensure
    Message:  defined content as '{md5}6c10396f466f64a6f897d1be4291dd4a'
 177)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_numeric.rb]/ensure
    Message:  defined content as '{md5}092cce5ed9d3a73319c48cdf9a2a822e'
 178)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_re.rb]/ensure
    Message:  defined content as '{md5}df6a2cc342dad63d008ef257fde9038a'
 179)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_slength.rb]/ensure
    Message:  defined content as '{md5}b20959e080f36bf320eacb472d125741'
 180)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_string.rb]/ensure
    Message:  defined content as '{md5}0239e1697134605a6385ff8c9bdc066b'
 181)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/validate_x509_rsa_key_pair.rb]/ensure
    Message:  defined content as '{md5}b16e5ebaeb497e1639c7bf78d61c2b45'
 182)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/values.rb]/ensure
    Message:  defined content as '{md5}94ac0ce49d09256677f6adddd40be129'
 183)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/values_at.rb]/ensure
    Message:  defined content as '{md5}72d780badb5f600dbd6b9ca3271ee12f'
 184)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/parser/functions/zip.rb]/ensure
    Message:  defined content as '{md5}aef1ee868716d07b01e605ae6c4741cc'
 185)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/provider]/ensure
    Message:  created
 186)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/provider/file_line]/ensure
    Message:  created
 187)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/provider/file_line/ruby.rb]/ensure
    Message:  defined content as '{md5}06dd4b2bd0037fcdc8382fcd4214dda3'
 188)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/type]/ensure
    Message:  created
 189)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/type/anchor.rb]/ensure
    Message:  defined content as '{md5}95867e600863019b08990277c4254cac'
 190)Resource: /File[/opt/puppetlabs/puppet/cache/lib/puppet/type/file_line.rb]/ensure
    Message:  defined content as '{md5}208655541a332e54e2d9abac0e328d33'
 191)Resource: Puppet
    Message:  Applied catalog in 0.26 seconds


```


### report-template 

```
----|------------------
ID  | NAME             
----|------------------
112 | Applicable errata
113 | Applied Errata   
114 | Host statuses    
115 | Registered hosts 
116 | Subscriptions    
----|------------------

```



```
Id:              112
Name:            Applicable errata
Locked:          yes
Default:         yes
Created at:      2023/04/29 00:18:15
Updated at:      2023/04/29 00:18:15
Locations:       
    DefaultLocation
Organizations:   
    RHCI
    Wëird Orgañization 鋼の錬金術師
Template inputs: 
 1) Name:        Hosts filter
    Description: Limit the report only on hosts found by this search query. Keep empty for report on all available hosts.
    Required:    no
 2) Name:        Errata filter
    Description: Limit the report only on errata found by this search query. Keep empty for report on all available errata.
    Required:    no


```



```
Id:              113
Name:            Applied Errata
Locked:          yes
Default:         yes
Created at:      2023/04/29 00:18:15
Updated at:      2023/04/29 00:18:15
Locations:       
    DefaultLocation
Organizations:   
    RHCI
    Wëird Orgañization 鋼の錬金術師
Template inputs: 
 1) Name:        Filter Errata Type
    Description: Filter only errata of a given type. If you select all, errata are not filtered by type.
    Required:    no
    Options:     all, security, bugfix, recommended, enhancement, optional
 2) Name:        Include Last Reboot
    Description: Last reboot information is based on configuration management facts, such as uptime reported by Puppet or Ansible. The computation might be performance heavy, if this value is not interesting, it can be omitted by choosing no.
    Required:    no
    Options:     yes, no
 3) Name:        Status
    Description: Limit the search based on the application result.
    Required:    no
    Options:     success, warning, error, cancelled, pending
 4) Name:        Since
    Description: Date and time since when to search for errata applications, use any format supported by the search engine, e.g. "3 weeks ago" or "2019-03-28 10:00:00 +0100". If time zone is not specified, current user time zone is used. By default, the search is unlimited.
    Required:    no
 5) Name:        Up to
    Description: Date and time to search errata applications up to, use any format supported by the search engine, e.g. "3 weeks ago" or "2019-03-28 10:00:00 +0100". If time zone is not specified, current user time zone is used. By default, the search is unlimited.
    Required:    no


```



```
Id:              114
Name:            Host statuses
Locked:          yes
Default:         yes
Created at:      2023/04/29 00:18:15
Updated at:      2023/04/29 00:18:15
Locations:       
    DefaultLocation
Organizations:   
    RHCI
    Wëird Orgañization 鋼の錬金術師
Template inputs: 
 1) Name:        hosts
    Description: Limit the report only on hosts found by this search query. Keep empty for report on all available hosts.
    Required:    no


```



```
Id:              115
Name:            Registered hosts
Locked:          yes
Default:         yes
Created at:      2023/04/29 00:18:15
Updated at:      2023/04/29 00:18:15
Locations:       
    DefaultLocation
Organizations:   
    RHCI
    Wëird Orgañization 鋼の錬金術師
Template inputs: 
 1) Name:        Hosts filter
    Description: Limit the report only on hosts found by this search query. Keep empty for report on all available hosts.
    Required:    no


```



```
Id:              116
Name:            Subscriptions
Locked:          yes
Default:         yes
Created at:      2023/04/29 00:18:15
Updated at:      2023/04/29 00:18:15
Locations:       
    DefaultLocation
Organizations:   
    RHCI
    Wëird Orgañization 鋼の錬金術師
Template inputs: 
 1) Name:        Subscriptions filter
    Description: Search query to filter subscription entitlements. E.g. `quantity > 0` to exclude subscriptions with unlimited entitlements. Keep unset for all subscriptions.
    Required:    no


```


### role 

```
---|--------------------------------|--------
ID | NAME                           | BUILTIN
---|--------------------------------|--------
27 | Access Insights Admin          | no     
26 | Access Insights Viewer         | no     
16 | Ansible Roles Manager          | no     
17 | Ansible Tower Inventory Reader | no     
11 | Auditor                        | no     
10 | Bookmarks manager              | no     
24 | Boot disk access               | no     
29 | Compliance manager             | no     
28 | Compliance viewer              | no     
30 | Create ARF report              | no     
1  | Default role                   | yes    
19 | Discovery Manager              | no     
18 | Discovery Reader               | no     
7  | Edit hosts                     | no     
5  | Edit partition tables          | no     
2  | Manager                        | no     
3  | Organization admin             | no     
25 | Red Hat Access Logs            | no     
20 | Register hosts                 | no     
15 | Remote Execution Manager       | no     
14 | Remote Execution User          | no     
9  | Site manager                   | no     
4  | System admin                   | no     
12 | Tasks Manager                  | no     
13 | Tasks Reader                   | no     
8  | Viewer                         | no     
6  | View hosts                     | no     
22 | Virt-who Manager               | no     
21 | Virt-who Reporter              | no     
23 | Virt-who Viewer                | no     
---|--------------------------------|--------

```



```
Id:          27
Name:        Access Insights Admin
Builtin:     no
Description:


```



```
Id:          26
Name:        Access Insights Viewer
Builtin:     no
Description:


```



```
Id:          16
Name:        Ansible Roles Manager
Builtin:     no
Description:


```



```
Id:          17
Name:        Ansible Tower Inventory Reader
Builtin:     no
Description: Permissions required for the user which is used by Ansible Tower Dynamic Inventory Item


```



```
Id:          11
Name:        Auditor
Builtin:     no
Description: Role granting permission to view only the Audit log and nothing else.


```



```
Id:          10
Name:        Bookmarks manager
Builtin:     no
Description: Role granting permissions for managing search bookmarks. Usually useful in combination with Viewer role. This role also grants the permission to update all public bookmarks.


```



```
Id:          24
Name:        Boot disk access
Builtin:     no
Description:


```



```
Id:          29
Name:        Compliance manager
Builtin:     no
Description:


```



```
Id:          28
Name:        Compliance viewer
Builtin:     no
Description:


```



```
Id:          30
Name:        Create ARF report
Builtin:     no
Description:


```



```
Id:          1
Name:        Default role
Builtin:     yes
Description: Role that is automatically assigned to every user in the system. Adding a permission grants it to everybody


```



```
Id:          19
Name:        Discovery Manager
Builtin:     no
Description:


```



```
Id:          18
Name:        Discovery Reader
Builtin:     no
Description:


```



```
Id:          7
Name:        Edit hosts
Builtin:     no
Description: Role granting permissions to update hosts. For features provided by plugins, you might need to combine this role with roles provided by those plugins


```



```
Id:          5
Name:        Edit partition tables
Builtin:     no
Description: Role granting permissions required for managing partition tables


```



```
Id:          2
Name:        Manager
Builtin:     no
Description: Role granting all available permissions. With this role, user is able to do everything that admin can except for changing settings.


```



```
Id:          3
Name:        Organization admin
Builtin:     no
Description: Role granting all permissions except for managing organizations. It can be used to delegate administration of specific organization to a user. In order to create such role, clone this role and assign desired organizations


```



```
Id:          25
Name:        Red Hat Access Logs
Builtin:     no
Description:


```



```
Id:          20
Name:        Register hosts
Builtin:     no
Description:


```



```
Id:          15
Name:        Remote Execution Manager
Builtin:     no
Description:


```



```
Id:          14
Name:        Remote Execution User
Builtin:     no
Description:


```



```
Id:          9
Name:        Site manager
Builtin:     no
Description: Role granting mostly view permissions but also permissions required for managing hosts in the infrastructure. Users with this role can update puppet parameters, create and edit hosts, manage installation media, subnets, usergroups and edit existing users.


```



```
Id:          4
Name:        System admin
Builtin:     no
Description: Role granting permissions for managing organizations, locations, users, usergroups, auth sources, roles, filters and settings. This is a very powerful role that can potentially gain access to all resources.


```



```
Id:          12
Name:        Tasks Manager
Builtin:     no
Description:


```



```
Id:          13
Name:        Tasks Reader
Builtin:     no
Description:


```



```
Id:          8
Name:        Viewer
Builtin:     no
Description: Role granting read only access. Users with this role can see all data but can not do any modifications


```



```
Id:          6
Name:        View hosts
Builtin:     no
Description: Role granting permission only to view hosts


```



```
Id:          22
Name:        Virt-who Manager
Builtin:     no
Description: Role granting all permissions to manage virt-who configurations, user needs this role to create, delete or update configurations.


```



```
Id:          21
Name:        Virt-who Reporter
Builtin:     no
Description: Role granting minimal set of permissions for virt-who to upload the report, it can be used if you configure virt-who manually and want to use user that has locked down account.


```



```
Id:          23
Name:        Virt-who Viewer
Builtin:     no
Description: Role granting permissions to see all configurations including their configuration scripts, which means viewers could still deploy the virt-who instances for existing virt-who configurations.


```


### scap-content 

```
---|------
ID | TITLE
---|------

```


### scap-content-profile 

```
Error: No such sub-command 'scap-content-profile'.

See: 'hammer --help'.

```


### settings 

```
-------------------------------------------------------|-------------------------------------------------------------|----------------------------------------------------------------------------------|---------------------------------------------------------------------------------
NAME                                                   | FULL NAME                                                   | VALUE                                                                            | DESCRIPTION                                                                     
-------------------------------------------------------|-------------------------------------------------------------|----------------------------------------------------------------------------------|---------------------------------------------------------------------------------
content_action_accept_timeout                          | Accept action timeout                                       | 20                                                                               | Time in seconds to wait for a Host to pickup a remote action                    
access_unattended_without_build                        | Access unattended without build                             | false                                                                            | Allow access to unattended URLs without build mode being used                   
administrator                                          | Administrator email address                                 | root@p1.lab                                                                      | The default administrator email address                                         
always_show_configuration_status                       | Always show configuration status                            | false                                                                            | All hosts will show a configuration status even when a Puppet smart proxy is ...
ansible_out_of_sync_disabled                           | Ansible out of sync disabled                                | false                                                                            | Disable host configuration status turning to out of sync for Ansible after re...
ansible_interval                                       | Ansible report timeout                                      | 30                                                                               | Timeout (in minutes) when hosts should have reported.                           
append_domain_name_for_hosts                           | Append domain names to the host                             | true                                                                             | Foreman will append domain names when new hosts are provisioned                 
template_sync_associate                                | Associate                                                   | new                                                                              | Associate templates to OS, organization and location                            
authorize_login_delegation                             | Authorize login delegation                                  | false                                                                            | Authorize login delegation with REMOTE_USER environment variable                
authorize_login_delegation_api                         | Authorize login delegation API                              | false                                                                            | Authorize login delegation with REMOTE_USER environment variable for API call...
authorize_login_delegation_auth_source_user_autocreate | Authorize login delegation auth source user autocreate      |                                                                                  | Name of the external auth source where unknown externally authentication user...
discovery_auto                                         | Auto provisioning                                           | false                                                                            | Automatically provision newly discovered hosts, according to the provisioning...
bmc_credentials_accessible                             | BMC credentials access                                      | true                                                                             | Permits access to BMC interface passwords through ENC YAML output and in temp...
template_sync_branch                                   | Branch                                                      |                                                                                  | Default branch in Git repo                                                      
check_services_before_actions                          | Check services before actions                               | true                                                                             | Whether or not to check the status of backend services such as pulp and candl...
discovery_clean_facts                                  | Clean all facts                                             | false                                                                            | Clean all reported facts during provisioning (except discovery facts)           
clean_up_failed_deployment                             | Clean up failed deployment                                  | true                                                                             | Foreman will delete virtual machine if provisioning script ends with non zero...
remote_execution_cleanup_working_dirs                  | Cleanup working directories                                 | true                                                                             | When enabled, working directories will be removed after task completion. You ...
remote_execution_cockpit_url                           | Cockpit URL                                                 |                                                                                  | Where to find the Cockpit instance for the Web Console button.  By default, n...
remote_execution_connect_by_ip                         | Connect by IP                                               | false                                                                            | Should the ip addresses on host interfaces be preferred over the fqdn? It is ...
ansible_connection                                     | Connection type                                             | ssh                                                                              | Use this connection type by default when running Ansible playbooks. You can o...
dependency_solving_algorithm                           | Content View Dependency Solving Algorithm                   | conservative                                                                     | How the logic of solving dependencies in a Content View is managed. Conservat...
content_view_solve_dependencies                        | Content View Dependency Solving Default                     | false                                                                            | The default dependency solving value for new Content Views.                     
discovery_auto_bond                                    | Create bond interfaces                                      | false                                                                            | Automatic bond interface (if another interface is detected on the same VLAN v...
create_new_host_when_facts_are_uploaded                | Create new host when facts are uploaded                     | true                                                                             | Foreman will create the host when new facts are received                        
create_new_host_when_report_is_uploaded                | Create new host when report is uploaded                     | true                                                                             | Foreman will create the host when a report is received                          
db_pending_migration                                   | DB pending migration                                        | false                                                                            | Should the `foreman-rake db:migrate` be executed on the next run of the insta...
db_pending_seed                                        | DB pending seed                                             | false                                                                            | Should the `foreman-rake db:seed` be executed on the next run of the installe...
default_location                                       | Default location                                            | DefaultLocation                                                                  | Hosts created after a puppet run that did not send a location fact will be pl...
default_location_puppet_content                        | Default Location Puppet content                             | DefaultLocation                                                                  | Default Location where new Puppet content will be put upon Content View publish 
default_location_subscribed_hosts                      | Default Location subscribed hosts                           | DefaultLocation                                                                  | Default Location where new subscribed hosts will put upon registration          
default_organization                                   | Default organization                                        | RHCI                                                                             | Hosts created after a puppet run that did not send a organization fact will b...
default_puppet_environment                             | Default Puppet environment                                  | production                                                                       | Foreman will default to this puppet environment if it cannot auto detect one    
default_pxe_item_global                                | Default PXE global template entry                           |                                                                                  | Default PXE menu item in global template - 'local', 'discovery' or custom, us...
default_pxe_item_local                                 | Default PXE local template entry                            |                                                                                  | Default PXE menu item in local template - 'local', 'local_chain_hd0' or custo...
default_download_policy                                | Default Repository download policy                          | on_demand                                                                        | Default download policy for repositories (either 'immediate', 'on_demand', or...
default_proxy_download_policy                          | Default Smart Proxy download policy                         | on_demand                                                                        | Default download policy for Smart Proxy syncs (either 'inherit', immediate', ...
remote_execution_ssh_key_passphrase                    | Default SSH key passphrase                                  |                                                                                  | Default key passphrase to use for SSH. You may override per host by setting a...
remote_execution_ssh_password                          | Default SSH password                                        |                                                                                  | Default password to use for SSH. You may override per host by setting a param...
katello_default_atomic_provision                       | Default synced OS Atomic template                           | Atomic Kickstart default                                                         | Default provisioning template for new Atomic Operating Systems created from s...
katello_default_finish                                 | Default synced OS finish template                           | Kickstart default finish                                                         | Default finish template for new Operating Systems created from synced content   
katello_default_iPXE                                   | Default synced OS iPXE template                             | Kickstart default iPXE                                                           | Default iPXE template for new Operating Systems created from synced content     
katello_default_kexec                                  | Default synced OS kexec template                            | Discovery Red Hat kexec                                                          | Default kexec template for new Operating Systems created from synced content    
katello_default_ptable                                 | Default synced OS partition table                           | Kickstart default                                                                | Default partitioning table for new Operating Systems created from synced content
katello_default_provision                              | Default synced OS provisioning template                     | Kickstart default                                                                | Default provisioning template for Operating Systems created from synced content 
katello_default_PXEGrub2                               | Default synced OS PXEGrub2 template                         | Kickstart default PXEGrub2                                                       | Default PXEGrub2 template for new Operating Systems created from synced content 
katello_default_PXEGrub                                | Default synced OS PXEGrub template                          | Kickstart default PXEGrub                                                        | Default PXEGrub template for new Operating Systems created from synced content  
katello_default_PXELinux                               | Default synced OS PXELinux template                         | Kickstart default PXELinux                                                       | Default PXELinux template for new Operating Systems created from synced content 
katello_default_user_data                              | Default synced OS user-data                                 | Kickstart default user data                                                      | Default user data for new Operating Systems created from synced content         
Default_variables_Lookup_Path                          | Default variables lookup path                               | ["fqdn", "hostgroup", "os", "domain"]                                            | Foreman will evaluate host smart variables in this order by default             
ansible_verbosity                                      | Default verbosity level                                     | 0                                                                                | Foreman will add this level of verbosity for additional debugging output when...
unregister_delete_host                                 | Delete Host upon unregister                                 | false                                                                            | When unregistering a host via subscription-manager, also delete the host reco...
delivery_method                                        | Delivery method                                             | sendmail                                                                         | Method used to deliver email                                                    
destroy_vm_on_host_delete                              | Destroy associated VM on host delete                        | true                                                                             | Destroy associated VM on host delete. When enabled, VMs linked to Hosts will ...
template_sync_dirname                                  | Dirname                                                     | /                                                                                | The directory within the Git repo containing the templates                      
content_disconnected                                   | Disconnected mode                                           | false                                                                            | A server operating in disconnected mode does not communicate with the Red Hat...
discovery_location                                     | Discovery location                                          |                                                                                  | The default location to place discovered hosts in                               
discovery_organization                                 | Discovery organization                                      |                                                                                  | The default organization to place discovered hosts in                           
dns_conflict_timeout                                   | DNS conflict timeout                                        | 3                                                                                | Timeout for DNS conflict validation (in seconds)                                
remote_execution_effective_user                        | Effective User                                              | root                                                                             | Default user to use for executing the script. If the user differs from the SS...
remote_execution_effective_user_method                 | Effective User Method                                       | sudo                                                                             | What command should be used to switch to the effective user. One of ["sudo", ...
email_reply_address                                    | Email reply address                                         | satellite-noreply@p1.lab                                                         | Email reply address for emails that Foreman is sending                          
email_subject_prefix                                   | Email subject prefix                                        | [satellite]                                                                      | Prefix to add to all outgoing email                                             
remote_execution_global_proxy                          | Enable Global Proxy                                         | true                                                                             | Search for remote execution proxy outside of the proxies assigned to the host...
enable_orchestration_on_fact_import                    | Enable orchestration on puppet fact import                  | false                                                                            | Enable host orchestration on puppet fact import. This could cause serious per...
Enable_Smart_Variables_in_ENC                          | Enable smart variables in ENC                               | true                                                                             | Foreman smart variables will be exposed via the ENC yaml output                 
enc_environment                                        | ENC environment                                             | true                                                                             | Foreman will explicitly set the puppet environment in the ENC yaml output. Th...
entries_per_page                                       | Entries per page                                            | 20                                                                               | Number of records shown per page in Foreman                                     
erratum_install_batch_size                             | Erratum Install Batch Size                                  | 0                                                                                | Errata installed via katello-agent will be triggered in batches of this size....
discovery_error_on_existing                            | Error on existing NIC                                       | false                                                                            | Do not allow to discover existing managed host matching MAC of a provisioning...
excluded_facts                                         | Exclude pattern for facts stored in foreman                 | ["lo", "en*v*", "usb*", "vnet*", "macvtap*", "_vdsmdummy_", "veth*", "docker*... | Exclude pattern for all types of imported facts (puppet, ansible, rhsm). Thos...
expire_soon_days                                       | Expire soon days                                            | 120                                                                              | The number of days remaining in a subscription before you will be reminded ab...
discovery_fact_column                                  | Fact columns                                                |                                                                                  | Extra facter columns to show in host lists (separate by comma)                  
failed_login_attempts_limit                            | Failed login attempts limit                                 | 30                                                                               | Foreman will block user login after this number of failed login attempts for ...
remote_execution_fallback_proxy                        | Fallback to Any Proxy                                       | false                                                                            | Search the host for any proxy with Remote Execution, useful when the host has...
template_sync_filter                                   | Filter                                                      |                                                                                  | Import or export names matching this regex (case-insensitive; snippets are no...
content_action_finish_timeout                          | Finish action timeout                                       | 3600                                                                             | Time in seconds to wait for a Host to finish a remote action                    
fix_db_cache                                           | Fix DB cache                                                | false                                                                            | Fix DB cache on next Foreman restart                                            
discovery_always_rebuild_dns                           | Force DNS                                                   | true                                                                             | Force DNS entries creation when provisioning discovered host                    
template_sync_force                                    | Force import                                                | false                                                                            | Should importing overwrite locked templates?                                    
foreman_url                                            | Foreman URL                                                 | https://sat-reporting.p1.lab                                                     | URL where your Foreman instance is reachable (see also Provisioning > unatten...
bootdisk_generic_host_template                         | Generic image template                                      | Boot disk iPXE - generic host                                                    | iPXE template to use for generic host boot disks                                
global_iPXE                                            | Global default iPXE template                                | iPXE global default                                                              | Global default iPXE template. This template gets deployed to all configured T...
global_PXEGrub2                                        | Global default PXEGrub2 template                            | PXEGrub2 global default                                                          | Global default PXEGrub2 template. This template gets deployed to all configur...
global_PXEGrub                                         | Global default PXEGrub template                             | PXEGrub global default                                                           | Global default PXEGrub template. This template gets deployed to all configure...
global_PXELinux                                        | Global default PXELinux template                            | PXELinux global default                                                          | Global default PXELinux template. This template gets deployed to all configur...
discovery_facts_hardware                               | Hardware facts                                              |                                                                                  | Regex to organize facts for hardware section                                    
discovery_facts_highlights                             | Highlighted facts                                           |                                                                                  | Regex to organize facts for highlights section - e.g. ^(abc|cde)$               
host_dmi_uuid_duplicates                               | Host Duplicate DMI UUIDs                                    | []                                                                               | If hosts fail to register because of duplicate DMI UUIDs add their comma-sepa...
host_group_matchers_inheritance                        | Host group matchers inheritance                             | true                                                                             | Foreman host group matchers will be inherited by children when evaluating sma...
bootdisk_host_template                                 | Host image template                                         | Boot disk iPXE - host                                                            | iPXE template to use for host-specific boot disks                               
discovery_hostname                                     | Hostname facts                                              | discovery_bootif                                                                 | List of facts to use for the hostname (separated by comma, first wins)          
discovery_prefix                                       | Hostname prefix                                             | mac                                                                              | The default prefix to use for the host name, must start with a letter           
host_owner                                             | Host owner                                                  |                                                                                  | Default owner on provisioned hosts, if empty Foreman will use current user      
host_profile_assume                                    | Host Profile Assume                                         | true                                                                             | Allow new Host registrations to assume registered profiles with matching host...
host_tasks_workers_pool_size                           | Host Tasks Workers Pool Size                                | 5                                                                                | Amount of workers in the pool to handle the execution of host-related tasks. ...
http_proxy                                             | HTTP(S) proxy                                               |                                                                                  | Sets a proxy for all outgoing HTTP connections.                                 
http_proxy_except_list                                 | HTTP(S) proxy except hosts                                  | []                                                                               | Set hostnames to which requests are not to be proxied. Requests to the local ...
idle_timeout                                           | Idle timeout                                                | 60                                                                               | Log out idle users after a certain number of minutes                            
ignore_facts_for_domain                                | Ignore facts for domain                                     | false                                                                            | Stop updating domain values from facts                                          
ignore_facts_for_operatingsystem                       | Ignore facts for operating system                           | false                                                                            | Stop updating Operating System from facts                                       
ignored_interface_identifiers                          | Ignore interfaces with matching identifier                  | ["lo", "en*v*", "usb*", "vnet*", "macvtap*", "_vdsmdummy_", "veth*", "docker*... | Ignore interfaces that match these values during facts importing, you can use...
ignore_puppet_facts_for_provisioning                   | Ignore Puppet facts for provisioning                        | false                                                                            | Stop updating IP address and MAC values from Puppet facts (affects all interf...
ansible_implementation                                 | Implementation for running Ansible                          | ansible-playbook                                                                 | Foreman will run Ansible playbooks using this implementation                    
errata_status_installable                              | Installable errata from Content View                        | false                                                                            | Calculate errata host status based only on errata in a Host's Content View an...
bootdisk_cache_media                                   | Installation media caching                                  | true                                                                             | Installation media files will be cached for full host images                    
discovery_fact                                         | Interface fact                                              | discovery_bootif                                                                 | Fact name to use for primary interface detection                                
interpolate_erb_in_parameters                          | Interpolate ERB in parameters                               | true                                                                             | Foreman will parse ERB in parameters value in the ENC output                    
discovery_facts_ipmi                                   | IPMI facts                                                  |                                                                                  | Regex to organize facts for ipmi section                                        
bootdisk_ipxe_dir                                      | iPXE directory                                              | /usr/share/ipxe                                                                  | Path to directory containing iPXE images                                        
intermediate_ipxe_script                               | iPXE intermediate script                                    | iPXE intermediate script                                                         | Intermediate iPXE script for unattended installations                           
bootdisk_mkiso_command                                 | ISO generation command                                      | genisoimage                                                                      | Command to generate ISO image, use genisoimage or mkisofs                       
bootdisk_isolinux_dir                                  | ISOLINUX directory                                          | /usr/share/syslinux                                                              | Path to directory containing isolinux images                                    
libvirt_default_console_address                        | Libvirt default console address                             | 0.0.0.0                                                                          | The IP address that should be used for the console listen address when provis...
local_boot_iPXE                                        | Local boot iPXE template                                    | iPXE default local boot                                                          | Template that will be selected as iPXE default for local boot.                  
local_boot_PXEGrub2                                    | Local boot PXEGrub2 template                                | PXEGrub2 default local boot                                                      | Template that will be selected as PXEGrub2 default for local boot.              
local_boot_PXEGrub                                     | Local boot PXEGrub template                                 | PXEGrub default local boot                                                       | Template that will be selected as PXEGrub default for local boot.               
local_boot_PXELinux                                    | Local boot PXELinux template                                | PXELinux default local boot                                                      | Template that will be selected as PXELinux default for local boot.              
location_fact                                          | Location fact                                               | foreman_location                                                                 | Hosts created after a puppet run will be placed in the location this fact dic...
discovery_pxegrub2_lock_template                       | Locked PXEGrub2 template name                               | pxegrub2_discovery                                                               | PXEGrub2 template to be used when pinning a host to discovery                   
discovery_pxegrub_lock_template                        | Locked PXEGrub template name                                | pxegrub_discovery                                                                | PXEGrub template to be used when pinning a host to discovery                    
discovery_pxelinux_lock_template                       | Locked PXELinux template name                               | pxelinux_discovery                                                               | PXELinux template to be used when pinning a host to discovery                   
discovery_lock                                         | Lock PXE                                                    | false                                                                            | Automatically generate PXE configuration to pin a newly discovered host to di...
template_sync_lock                                     | Lock templates                                              | false                                                                            | Should importing lock templates?                                                
login_delegation_logout_url                            | Login delegation logout URL                                 |                                                                                  | Redirect your users to this url on logout (authorize_login_delegation should ...
login_text                                             | Login page footer text                                      |                                                                                  | Text to be shown in the login-page footer                                       
manage_puppetca                                        | Manage PuppetCA                                             | true                                                                             | Foreman will automate certificate signing upon provision of new host            
manifest_refresh_timeout                               | Manifest refresh timeout                                    | 1200                                                                             | Timeout when refreshing a manifest (in seconds)                                 
max_trend                                              | Max trends                                                  | 30                                                                               | Max days for Trends graphs                                                      
template_sync_metadata_export_mode                     | Metadata export mode                                        | refresh                                                                          | Default metadata export mode, refresh re-renders metadata, keep will keep exi...
template_sync_negate                                   | Negate                                                      | false                                                                            | Negate the prefix (for purging) / filter (for importing/exporting)              
discovery_facts_network                                | Network facts                                               |                                                                                  | Regex to organize facts for network section                                     
oauth_active                                           | OAuth active                                                | true                                                                             | Foreman will use OAuth for API authorization                                    
oauth_consumer_key                                     | OAuth consumer key                                          | fz29L5H7uChn7fyRhvVyGScdNm9NbFGy                                                 | OAuth consumer key                                                              
oauth_consumer_secret                                  | OAuth consumer secret                                       | KZNzqmKx6cou9SCn3ExXfBG8GdhRd5Ak                                                 | OAuth consumer secret                                                           
oauth_map_users                                        | OAuth map users                                             | false                                                                            | Foreman will map users by username in request-header. If this is set to false...
organization_fact                                      | Organization fact                                           | foreman_organization                                                             | Hosts created after a puppet run will be placed in the organization this fact...
outofsync_interval                                     | Out of sync interval                                        | 30                                                                               | Duration in minutes after servers are classed as out of sync.                   
Parametrized_Classes_in_ENC                            | Parameterized classes in ENC                                | true                                                                             | Foreman will use the new (2.6.5+) format for classes in the ENC yaml output     
ansible_post_provision_timeout                         | Post-provision timeout                                      | 360                                                                              | Timeout (in seconds) to set when Foreman will trigger a play Ansible roles ta...
template_sync_prefix                                   | Prefix                                                      |                                                                                  | The string all imported templates should begin with                             
ansible_ssh_private_key_file                           | Private Key Path                                            |                                                                                  | Use this to supply a path to an SSH Private Key that Ansible will use in lieu...
proxy_request_timeout                                  | Proxy request timeout                                       | 60                                                                               | Max timeout for REST client requests to smart-proxy                             
pulp_client_cert                                       | Pulp client cert                                            | /etc/pki/katello/certs/pulp-client.crt                                           | Path for ssl cert used for pulp server auth                                     
pulp_client_key                                        | Pulp client key                                             | /etc/pki/katello/private/pulp-client.key                                         | Path for ssl key used for pulp server auth                                      
pulp_docker_registry_port                              | Pulp Docker registry port                                   | 5000                                                                             | The port used by Pulp Crane to provide Docker Registries                        
pulp_export_destination                                | Pulp export destination filepath                            | /var/lib/pulp/katello-export                                                     | On-disk location for exported repositories                                      
puppet_interval                                        | Puppet interval                                             | 35                                                                               | Duration in minutes after servers reporting via Puppet are classed as out of ...
puppet_out_of_sync_disabled                            | Puppet out of sync disabled                                 | false                                                                            | Disable host configuration status turning to out of sync for Puppet after rep...
puppetrun                                              | Puppetrun                                                   | false                                                                            | Enable puppetrun support                                                        
puppet_server                                          | Puppet server                                               | puppet                                                                           | Default Puppet server hostname                                                  
query_local_nameservers                                | Query local nameservers                                     | false                                                                            | Foreman will query the locally configured resolver instead of the SOA/NS auth...
discovery_reboot                                       | Reboot                                                      | true                                                                             | Automatically reboot or kexec discovered host during provisioning               
remote_addr                                            | Remote address                                              | 127.0.0.1                                                                        | If Foreman is running behind Passenger or a remote load balancer, the IP shou...
template_sync_repo                                     | Repo                                                        | https://github.com/theforeman/community-templates.git                            | Target path to import and export. Different protocols can be used, e.g. /tmp/...
require_ssl_smart_proxies                              | Require SSL for smart proxies                               | true                                                                             | Client SSL certificates are used to identify Smart Proxies (:require_ssl shou...
restrict_composite_view                                | Restrict Composite Content View promotion                   | false                                                                            | If set to true, a composite content view may not be published or promoted, un...
restrict_registered_smart_proxies                      | Restrict registered smart proxies                           | true                                                                             | Only known Smart Proxies may access features that use Smart Proxy authentication
root_pass                                              | Root password                                               |                                                                                  | Default encrypted root password on provisioned hosts                            
rss_enable                                             | RSS enable                                                  | true                                                                             | Whether to pull RSS notifications or not                                        
rss_url                                                | RSS URL                                                     | https://www.redhat.com/en/rss/blog/channel/red-hat-satellite                     | URL to fetch RSS notifications from                                             
safemode_render                                        | Safemode rendering                                          | true                                                                             | Enable safe mode config templates rendering (recommended)                       
sendmail_arguments                                     | Sendmail arguments                                          | -i                                                                               | Specify additional options to sendmail                                          
sendmail_location                                      | Sendmail location                                           | /usr/sbin/sendmail                                                               | The location of the sendmail executable                                         
send_welcome_email                                     | Send welcome email                                          | false                                                                            | Send a welcome email including username and URL to new users                    
lab_features                                           | Show Experimental Labs                                      | false                                                                            | Whether or not to show a menu to access experimental lab features (requires r...
host_power_status                                      | Show host power status                                      | true                                                                             | Show power status on host index page. This feature calls to compute resource ...
smtp_address                                           | SMTP address                                                |                                                                                  | Address to connect to                                                           
smtp_authentication                                    | SMTP authentication                                         |                                                                                  | Specify authentication type, if required                                        
smtp_enable_starttls_auto                              | SMTP enable StartTLS auto                                   | true                                                                             | SMTP automatic STARTTLS                                                         
smtp_domain                                            | SMTP HELO/EHLO domain                                       |                                                                                  | HELO/EHLO domain                                                                
smtp_openssl_verify_mode                               | SMTP OpenSSL verify mode                                    |                                                                                  | When using TLS, you can set how OpenSSL checks the certificate                  
smtp_password                                          | SMTP password                                               |                                                                                  | Password to use to authenticate, if required                                    
smtp_port                                              | SMTP port                                                   | 25                                                                               | Port to connect to                                                              
smtp_user_name                                         | SMTP username                                               |                                                                                  | Username to use to authenticate, if required                                    
discovery_facts_software                               | Software facts                                              |                                                                                  | Regex to organize facts for software section                                    
remote_execution_ssh_port                              | SSH Port                                                    | 22                                                                               | Port to use for SSH communication. Default port 22. You may override per host...
ssh_timeout                                            | SSH timeout                                                 | 120                                                                              | Time in seconds before SSH provisioning times out                               
remote_execution_ssh_user                              | SSH User                                                    | root                                                                             | Default user to use for SSH.  You may override per host by setting a paramete...
ssl_ca_file                                            | SSL CA file                                                 | /etc/foreman/proxy_ca.pem                                                        | SSL CA file that Foreman will use to communicate with its proxies               
ssl_certificate                                        | SSL certificate                                             | /etc/foreman/client_cert.pem                                                     | SSL Certificate path that Foreman would use to communicate with its proxies     
ssl_client_cert_env                                    | SSL client cert env                                         | SSL_CLIENT_CERT                                                                  | Environment variable containing a client's SSL certificate                      
ssl_client_dn_env                                      | SSL client DN env                                           | SSL_CLIENT_S_DN                                                                  | Environment variable containing the subject DN from a client SSL certificate    
ssl_client_verify_env                                  | SSL client verify env                                       | SSL_CLIENT_VERIFY                                                                | Environment variable containing the verification status of a client SSL certi...
ssl_priv_key                                           | SSL private key                                             | /etc/foreman/client_key.pem                                                      | SSL Private Key file that Foreman will use to communicate with its proxies      
discovery_facts_storage                                | Storage facts                                               |                                                                                  | Regex to organize facts for storage section                                     
register_hostname_fact                                 | Subscription manager name registration fact                 |                                                                                  | When registering a host via subscription-manager, force use the specified fac...
register_hostname_fact_strict_match                    | Subscription manager name registration fact strict matching | false                                                                            | If true, and register_hostname_fact is set and provided, registration will lo...
remote_execution_sudo_password                         | Sudo password                                               |                                                                                  | Sudo password                                                                   
remote_execution_sync_templates                        | Sync Job Templates                                          | true                                                                             | Whether we should sync templates from disk when running db:seed.                
foreman_proxy_content_auto_sync                        | Sync Smart Proxies after Content View promotion             | true                                                                             | Whether or not to auto sync the Smart Proxies after a Content View promotion.   
bootdisk_syslinux_dir                                  | SYSLINUX directory                                          | /usr/share/syslinux                                                              | Path to directory containing syslinux images                                    
token_duration                                         | Token duration                                              | 360                                                                              | Time in minutes installation tokens should be valid for, 0 to disable token g...
trusted_hosts                                          | Trusted hosts                                               | []                                                                               | Hosts that will be trusted in addition to Smart Proxies for access to fact/re...
name_generator_type                                    | Type of name generator                                      | Random-based                                                                     | Random gives unique names, MAC-based are longer but stable (and only works wi...
discovery_naming                                       | Type of name generator                                      | Fact                                                                             | Discovery hostname naming pattern                                               
unattended_url                                         | Unattended URL                                              | http://sat-reporting.p1.lab                                                      | URL hosts will retrieve templates from during build, when it starts with http...
update_environment_from_facts                          | Update environment from facts                               | false                                                                            | Foreman will update a host's environment from its facts                         
update_ip_from_built_request                           | Update IP from built request                                | false                                                                            | Foreman will update the host IP with the IP that made the built request         
update_subnets_from_facts                              | Update subnets from facts                                   | false                                                                            | Foreman will update a host's subnet from its facts                              
remote_execution_by_default                            | Use remote execution by default                             | false                                                                            | If set to true, use the remote execution over katello-agent for remote actions  
use_shortname_for_vms                                  | Use short name for VMs                                      | false                                                                            | Foreman will use the short hostname instead of the FQDN for creating new virt...
use_uuid_for_certificates                              | Use UUID for certificates                                   | false                                                                            | Foreman will use random UUIDs for certificate signing instead of hostnames      
template_sync_verbose                                  | Verbosity                                                   | false                                                                            | Choose verbosity for Rake task importing templates                              
websockets_encrypt                                     | Websockets encryption                                       | true                                                                             | VNC/SPICE websocket proxy console access encryption (websockets_ssl_key/cert ...
websockets_ssl_cert                                    | Websockets SSL certificate                                  | /etc/pki/katello/certs/katello-apache.crt                                        | Certificate that Foreman will use to encrypt websockets                         
websockets_ssl_key                                     | Websockets SSL key                                          | /etc/pki/katello/private/katello-apache.key                                      | Private key file that Foreman will use to encrypt websockets                    
ansible_winrm_server_cert_validation                   | WinRM cert Validation                                       | validate                                                                         | Enable/disable WinRM server certificate validation when running Ansible playb...
remote_execution_workers_pool_size                     | Workers pool size                                           | 5                                                                                | Amount of workers in the pool to handle the execution of the remote execution...
foreman_tasks_troubleshooting_url                      |                                                             | https://access.redhat.com/solutions/satellite6-tasks#%{label}                    | Url pointing to the task troubleshooting documentation. It should contain %{l...
foreman_tasks_proxy_batch_size                         |                                                             | 100                                                                              | Number of tasks which should be sent to the smart proxy in one request, if fo...
foreman_tasks_proxy_action_retry_interval              |                                                             | 15                                                                               | Time in seconds between retries                                                 
foreman_tasks_sync_task_timeout                        |                                                             | 120                                                                              | Number of seconds to wait for synchronous task to finish.                       
foreman_tasks_proxy_action_retry_count                 |                                                             | 4                                                                                | Number of attempts to start a task on the smart proxy before failing            
dynflow_console_require_auth                           |                                                             | true                                                                             | Require user to be authenticated as user with admin rights when accessing dyn...
dynflow_enable_console                                 |                                                             | true                                                                             | Enable the dynflow console (/foreman_tasks/dynflow) for debugging               
foreman_tasks_proxy_batch_trigger                      |                                                             | true                                                                             | Allow triggering tasks on the smart proxy in batches                            
dynflow_allow_dangerous_actions                        |                                                             | false                                                                            | Allow unlocking actions which can have dangerous consequences.                  
-------------------------------------------------------|-------------------------------------------------------------|----------------------------------------------------------------------------------|---------------------------------------------------------------------------------

```


### subnet 

```
---|------|---------------|----------------|---------------|---------|----------
ID | NAME | NETWORK ADDR  | NETWORK PREFIX | NETWORK MASK  | VLAN ID | BOOT MODE
---|------|---------------|----------------|---------------|---------|----------
1  | MGMT | 192.168.123.0 | 24             | 255.255.255.0 |         | Static   
---|------|---------------|----------------|---------------|---------|----------

```



```
Id:                1
Name:              MGMT
Description:       
  
Protocol:          IPv4
Priority:          
Network Addr:      192.168.123.0
Network Prefix:    24
Network Mask:      255.255.255.0
Gateway Addr:      192.168.123.0
Primary DNS:       192.168.123.1
Secondary DNS:     
Smart Proxies:     
    DNS:  
    TFTP: 
    DHCP:
IPAM:              Internal DB
Start of IP Range: 192.168.123.70
End of IP Range:   192.168.123.75
VLAN ID:           
MTU:               1500
Boot Mode:         Static
Domains:           
    p1.lab
Locations:         
    DefaultLocation
Organizations:     
    RHCI
Parameters:


```


### tailoring-file 

```
---|-----
ID | NAME
---|-----

```


### template 

```
----|--------------------------------------|-----------
ID  | NAME                                 | TYPE      
----|--------------------------------------|-----------
40  | Alterator default                    | provision 
27  | Alterator default finish             | finish    
10  | Alterator default PXELinux           | PXELinux  
54  | alterator_pkglist                    | snippet   
55  | ansible_provisioning_callback        | snippet   
56  | ansible_tower_callback_script        | snippet   
57  | ansible_tower_callback_service       | snippet   
41  | Atomic Kickstart default             | provision 
42  | AutoYaST default                     | provision 
34  | AutoYaST default iPXE                | iPXE      
11  | AutoYaST default PXELinux            | PXELinux  
92  | AutoYaST default user data           | user_data 
43  | AutoYaST SLES default                | provision 
58  | blacklist_kernel_modules             | snippet   
59  | bmc_nic_setup                        | snippet   
118 | Boot disk iPXE - generic host        | Bootdisk  
117 | Boot disk iPXE - host                | Bootdisk  
60  | built                                | snippet   
61  | chef_client                          | snippet   
26  | CloudInit default                    | cloud-init
62  | coreos_cloudconfig                   | snippet   
44  | CoreOS provision                     | provision 
12  | CoreOS PXELinux                      | PXELinux  
63  | create_users                         | snippet   
64  | csr_attributes.yaml                  | snippet   
120 | Discovery Debian kexec               | kexec     
119 | Discovery Red Hat kexec              | kexec     
65  | efibootmgr_netboot                   | snippet   
66  | epel                                 | snippet   
67  | fips_packages                        | snippet   
68  | fix_hosts                            | snippet   
28  | FreeBSD (mfsBSD) finish              | finish    
45  | FreeBSD (mfsBSD) provision           | provision 
13  | FreeBSD (mfsBSD) PXELinux            | PXELinux  
69  | freeipa_register                     | snippet   
53  | Grubby default                       | script    
70  | http_proxy                           | snippet   
35  | iPXE default local boot              | iPXE      
36  | iPXE global default                  | iPXE      
37  | iPXE intermediate script             | iPXE      
46  | Jumpstart default                    | provision 
29  | Jumpstart default finish             | finish    
2   | Jumpstart default PXEGrub            | PXEGrub   
30  | Junos default finish                 | finish    
47  | Junos default SLAX                   | provision 
25  | Junos default ZTP config             | ZTP       
48  | Kickstart default                    | provision 
31  | Kickstart default finish             | finish    
38  | Kickstart default iPXE               | iPXE      
3   | Kickstart default PXEGrub            | PXEGrub   
6   | Kickstart default PXEGrub2           | PXEGrub2  
14  | Kickstart default PXELinux           | PXELinux  
93  | Kickstart default user data          | user_data 
72  | kickstart_ifcfg_bonded_interface     | snippet   
71  | kickstart_ifcfg_bond_interface       | snippet   
73  | kickstart_ifcfg_generic_interface    | snippet   
74  | kickstart_ifcfg_get_identifier_names | snippet   
75  | kickstart_networking_setup           | snippet   
49  | Kickstart oVirt-RHVH                 | provision 
15  | Kickstart oVirt-RHVH PXELinux        | PXELinux  
1   | NX-OS default POAP setup             | POAP      
50  | Preseed default                      | provision 
32  | Preseed default finish               | finish    
39  | Preseed default iPXE                 | iPXE      
7   | Preseed default PXEGrub2             | PXEGrub2  
16  | Preseed default PXELinux             | PXELinux  
94  | Preseed default user data            | user_data 
76  | preseed_networking_setup             | snippet   
77  | puppet.conf                          | snippet   
79  | puppetlabs_repo                      | snippet   
78  | puppet_setup                         | snippet   
80  | pxegrub2_chainload                   | snippet   
8   | PXEGrub2 default local boot          | PXEGrub2  
81  | pxegrub2_discovery                   | snippet   
9   | PXEGrub2 global default              | PXEGrub2  
82  | pxegrub2_mac                         | snippet   
83  | pxegrub_chainload                    | snippet   
4   | PXEGrub default local boot           | PXEGrub   
84  | pxegrub_discovery                    | snippet   
5   | PXEGrub global default               | PXEGrub   
17  | PXELinux chain iPXE                  | PXELinux  
18  | PXELinux chain iPXE UNDI             | PXELinux  
85  | pxelinux_chainload                   | snippet   
19  | PXELinux default local boot          | PXELinux  
20  | PXELinux default memdisk             | PXELinux  
86  | pxelinux_discovery                   | snippet   
21  | PXELinux global default              | PXELinux  
87  | rancheros_cloudconfig                | snippet   
51  | RancherOS provision                  | provision 
22  | RancherOS PXELinux                   | PXELinux  
88  | redhat_register                      | snippet   
89  | remote_execution_ssh_keys            | snippet   
90  | saltstack_minion                     | snippet   
91  | saltstack_setup                      | snippet   
95  | UserData default                     | user_data 
96  | UserData open-vm-tools               | user_data 
23  | WAIK default PXELinux                | PXELinux  
52  | XenServer default answerfile         | provision 
33  | XenServer default finish             | finish    
24  | XenServer default PXELinux           | PXELinux  
----|--------------------------------------|-----------

```


### template-input 

```
Missing arguments for 'template_id'

```


### user 

```
---|-------|------------|-------------|-------|---------------------|--------------
ID | LOGIN | NAME       | EMAIL       | ADMIN | LAST LOGIN          | AUTHORIZED BY
---|-------|------------|-------------|-------|---------------------|--------------
4  | admin | Admin User | root@p1.lab | yes   | 2023/04/29 16:45:43 | Internal     
---|-------|------------|-------------|-------|---------------------|--------------

```



```
Id:                    4
Login:                 admin
Name:                  Admin User
Email:                 root@p1.lab
Admin:                 yes
Last login:            2023/04/29 16:45:43
Authorized by:         Internal
Effective admin:       yes
Locale:                default
Timezone:              default
Description:           
Default organization:  RHCI
Default location:      DefaultLocation
Roles:                 

User groups:           

Inherited User groups: 

Locations:             
    DefaultLocation
Organizations:         
    RHCI
Created at:            2023/04/29 00:18:08
Updated at:            2023/04/29 00:18:08


```


### user-group 

```
---|------|------
ID | NAME | ADMIN
---|------|------

```


### virt-who-config 

```
---|----------|----------------|--------|--------------------
ID | NAME     | INTERVAL       | STATUS | LAST REPORT AT     
---|----------|----------------|--------|--------------------
1  | vcenter1 | every 24 hours | OK     | 2023/04/29 11:03:06
---|----------|----------------|--------|--------------------

```



```
General information: 
    Id:                  1
    Name:                vcenter1
    Hypervisor type:     esx
    Hypervisor server:   vcenter.p1.lab
    Hypervisor username: administrator@vsphere.local
    Status:              OK
Schedule:            
    Interval:       every 24 hours
    Last Report At: 2023/04/29 11:03:06
Connection:          
    Satellite server:     sat-reporting.p1.lab
    Hypervisor ID:        hostname
    Filtering:            Unlimited
    Filter host parents:  
    Exclude host parents: 
    Debug mode:           no
    HTTP proxy:           
    Ignore proxy:


```


### webhook 

```
Error: No such sub-command 'webhook'.

See: 'hammer --help'.

```


### webhook-template 

```
Error: No such sub-command 'webhook-template'.

See: 'hammer --help'.

```


## Organization RHCI


### Org RHCI - activation-key

```
---|---------------|----------------|-----------------------|---------------
ID | NAME          | HOST LIMIT     | LIFECYCLE ENVIRONMENT | CONTENT VIEW  
---|---------------|----------------|-----------------------|---------------
2  | AK-RHEL8      | 0 of Unlimited | Library               | CCV_RHE8-XYMON
1  | AK-RHEL8XYMON | 0 of Unlimited | Library               | CCV_RHE8-XYMON
---|---------------|----------------|-----------------------|---------------
```



```
Name:                  AK-RHEL8
ID:                    2
Description:           
Host Limit:            Unlimited
Auto Attach:           true
Service Level:         
Release Version:       
Lifecycle Environment: Library
Content View:          CCV_RHE8-XYMON
Host Collections:      
 1) ID:   1
    Name: HC_RHEL8XYMON

```



```
Name:                  AK-RHEL8XYMON
ID:                    1
Description:           
Host Limit:            Unlimited
Auto Attach:           true
Service Level:         
Release Version:       
Lifecycle Environment: Library
Content View:          CCV_RHE8-XYMON
Host Collections:      
 1) ID:   1
    Name: HC_RHEL8XYMON

```


### Org RHCI - ansible roles

```
Association not found for organization
```


### Org RHCI - ansible variables

```
Association not found for organization
```


### Org RHCI - content-credentials

```
Error: No such sub-command 'content-credentials'.

See: 'hammer --help'.
```


### Org RHCI - content-view

```
----------------|-----------------------------------|-----------------------------------|-----------|---------------------|-------------------
CONTENT VIEW ID | NAME                              | LABEL                             | COMPOSITE | LAST PUBLISHED      | REPOSITORY IDS    
----------------|-----------------------------------|-----------------------------------|-----------|---------------------|-------------------
6               | CCV_RHE8-XYMON                    | CCV_RHE8-XYMON                    | true      | 2023/04/29 14:39:16 | 37, 38, 40, 39, 31
8               | CCV_RHEL8-XYMON-SPECIFIC-VERSIONS | CCV_RHEL8-XYMON-SPECIFIC-VERSIONS | true      | 2023/04/29 16:53:19 | 14, 16, 12, 18, 8 
3               | CV_RHEL8                          | CV_RHEL8                          |           | 2023/04/29 14:24:11 | 3, 1, 4, 2        
4               | CV_XYMON8                         | CV_XYMON8                         |           | 2023/04/29 14:23:21 | 7                 
1               | Default Organization View         | Default_Organization_View         |           | 2023/04/29 00:18:16 |                   
----------------|-----------------------------------|-----------------------------------|-----------|---------------------|-------------------
```



```
ID:                           6
Name:                         CCV_RHE8-XYMON
Label:                        CCV_RHE8-XYMON
Composite:                    true
Description:                  
Content Host Count:           0
Organization:                 RHCI
Yum Repositories:             
 1) ID:    37
    Name:  Red Hat Enterprise Linux 8 for x86_64 - AppStream RPMs 8
    Label: Red_Hat_Enterprise_Linux_8_for_x86_64_-_AppStream_RPMs_8
 2) ID:    38
    Name:  Red Hat Enterprise Linux 8 for x86_64 - BaseOS RPMs 8
    Label: Red_Hat_Enterprise_Linux_8_for_x86_64_-_BaseOS_RPMs_8
 3) ID:    40
    Name:  Red Hat Enterprise Linux 8 for x86_64 - BaseOS Kickstart 8.6
    Label: Red_Hat_Enterprise_Linux_8_for_x86_64_-_BaseOS_Kickstart_8_6
 4) ID:    39
    Name:  Red Hat Enterprise Linux 8 for x86_64 - AppStream Kickstart 8.6
    Label: Red_Hat_Enterprise_Linux_8_for_x86_64_-_AppStream_Kickstart_8_6
 5) ID:    31
    Name:  xymon8
    Label: xymon8
Container Image Repositories: 

OSTree Repositories:          

Puppet Modules:               

Lifecycle Environments:       
 1) ID:   1
    Name: Library
Versions:                     
 1) ID:        4
    Version:   1.0
    Published: 2023/04/29 10:40:26
 2) ID:        6
    Version:   2.0
    Published: 2023/04/29 10:48:01
 3) ID:        10
    Version:   3.0
    Published: 2023/04/29 14:23:30
 4) ID:        12
    Version:   4.0
    Published: 2023/04/29 14:39:16
Components:                   
 1) ID:   11
    Name: CV_RHEL8 2.0
 2) ID:   9
    Name: CV_XYMON8 2.0
Activation Keys:              
 1) AK-RHEL8
 2) AK-RHEL8XYMON

```



```
ID:                           8
Name:                         CCV_RHEL8-XYMON-SPECIFIC-VERSIONS
Label:                        CCV_RHEL8-XYMON-SPECIFIC-VERSIONS
Composite:                    true
Description:                  
Content Host Count:           0
Organization:                 RHCI
Yum Repositories:             
 1) ID:    14
    Name:  Red Hat Enterprise Linux 8 for x86_64 - BaseOS RPMs 8
    Label: Red_Hat_Enterprise_Linux_8_for_x86_64_-_BaseOS_RPMs_8
 2) ID:    16
    Name:  Red Hat Enterprise Linux 8 for x86_64 - BaseOS Kickstart 8.6
    Label: Red_Hat_Enterprise_Linux_8_for_x86_64_-_BaseOS_Kickstart_8_6
 3) ID:    12
    Name:  Red Hat Enterprise Linux 8 for x86_64 - AppStream RPMs 8
    Label: Red_Hat_Enterprise_Linux_8_for_x86_64_-_AppStream_RPMs_8
 4) ID:    18
    Name:  Red Hat Enterprise Linux 8 for x86_64 - AppStream Kickstart 8.6
    Label: Red_Hat_Enterprise_Linux_8_for_x86_64_-_AppStream_Kickstart_8_6
 5) ID:    8
    Name:  xymon8
    Label: xymon8
Container Image Repositories: 

OSTree Repositories:          

Puppet Modules:               

Lifecycle Environments:       
 1) ID:   1
    Name: Library
Versions:                     
 1) ID:        8
    Version:   1.0
    Published: 2023/04/29 14:22:56
 2) ID:        13
    Version:   2.0
    Published: 2023/04/29 16:53:19
Components:                   
 1) ID:   5
    Name: CV_RHEL8 1.0
 2) ID:   3
    Name: CV_XYMON8 1.0
Activation Keys:

```



```
ID:                           3
Name:                         CV_RHEL8
Label:                        CV_RHEL8
Composite:                    false
Description:                  
Content Host Count:           0
Organization:                 RHCI
Yum Repositories:             
 1) ID:    1
    Name:  Red Hat Enterprise Linux 8 for x86_64 - AppStream RPMs 8
    Label: Red_Hat_Enterprise_Linux_8_for_x86_64_-_AppStream_RPMs_8
 2) ID:    2
    Name:  Red Hat Enterprise Linux 8 for x86_64 - BaseOS RPMs 8
    Label: Red_Hat_Enterprise_Linux_8_for_x86_64_-_BaseOS_RPMs_8
 3) ID:    3
    Name:  Red Hat Enterprise Linux 8 for x86_64 - AppStream Kickstart 8.6
    Label: Red_Hat_Enterprise_Linux_8_for_x86_64_-_AppStream_Kickstart_8_6
 4) ID:    4
    Name:  Red Hat Enterprise Linux 8 for x86_64 - BaseOS Kickstart 8.6
    Label: Red_Hat_Enterprise_Linux_8_for_x86_64_-_BaseOS_Kickstart_8_6
Container Image Repositories: 

OSTree Repositories:          

Puppet Modules:               

Lifecycle Environments:       
 1) ID:   1
    Name: Library
Versions:                     
 1) ID:        5
    Version:   1.0
    Published: 2023/04/29 10:41:01
 2) ID:        11
    Version:   2.0
    Published: 2023/04/29 14:24:11
Components:                   

Activation Keys:

```



```
ID:                           4
Name:                         CV_XYMON8
Label:                        CV_XYMON8
Composite:                    false
Description:                  
Content Host Count:           0
Organization:                 RHCI
Yum Repositories:             
 1) ID:    7
    Name:  xymon8
    Label: xymon8
Container Image Repositories: 

OSTree Repositories:          

Puppet Modules:               

Lifecycle Environments:       
 1) ID:   1
    Name: Library
Versions:                     
 1) ID:        3
    Version:   1.0
    Published: 2023/04/29 10:40:10
 2) ID:        9
    Version:   2.0
    Published: 2023/04/29 14:23:21
Components:                   

Activation Keys:

```



```
ID:                           1
Name:                         Default Organization View
Label:                        Default_Organization_View
Composite:                    false
Description:                  
Content Host Count:           0
Organization:                 RHCI
Yum Repositories:             

Container Image Repositories: 

OSTree Repositories:          

Puppet Modules:               

Lifecycle Environments:       
 1) ID:   1
    Name: Library
Versions:                     
 1) ID:        1
    Version:   1.0
    Published: 2023/04/29 00:18:16
Components:                   

Activation Keys:

```


### Org RHCI - host-collection

```
---|---------------|-------|------------
ID | NAME          | LIMIT | DESCRIPTION
---|---------------|-------|------------
1  | HC_RHEL8XYMON | None  |            
---|---------------|-------|------------
```



```
ID:          1
Name:        HC_RHEL8XYMON
Limit:       None
Description: 
Total Hosts: 0

```


### Org RHCI - hostgroup

```
---|-----------------|----------------------------------|------------------|--------------------|------
ID | NAME            | TITLE                            | OPERATING SYSTEM | PUPPET ENVIRONMENT | MODEL
---|-----------------|----------------------------------|------------------|--------------------|------
1  | HG_ALL          | HG_ALL                           |                  |                    |      
3  | HG_PROD_LIVE    | HG_ALL/HG_PROD_LIVE              |                  |                    |      
2  | HG_PROD_STAGING | HG_ALL/HG_PROD_STAGING           |                  |                    |      
4  | SW-DELIVERY     | HG_ALL/SW-DELIVERY               |                  |                    |      
5  | DEV             | HG_ALL/SW-DELIVERY/DEV           |                  |                    |      
7  | PREPRODUCTION   | HG_ALL/SW-DELIVERY/PREPRODUCTION |                  |                    |      
8  | PRODUCTION      | HG_ALL/SW-DELIVERY/PRODUCTION    |                  |                    |      
6  | TEST            | HG_ALL/SW-DELIVERY/TEST          |                  |                    |      
---|-----------------|----------------------------------|------------------|--------------------|------
```



```
Id:                    1
Name:                  HG_ALL
Title:                 HG_ALL
Description:           
  
Network:               
    Domain: p1.lab
Operating system:      

Puppetclasses:         

Parameters:            

Locations:             
    DefaultLocation
Organizations:         
    RHCI
OpenSCAP Proxy:        
Content View:          
    ID:   1
    Name: Default Organization View
Lifecycle Environment: 
    ID:   1
    Name: Library
Content Source:        
    ID:   1
    Name: sat-reporting.p1.lab
Kickstart Repository:  
    ID:   
    Name:

```



```
Id:                    3
Name:                  HG_PROD_LIVE
Title:                 HG_ALL/HG_PROD_LIVE
Description:           
  
Parent:                HG_ALL
Network:               

Operating system:      

Puppetclasses:         

Parameters:            

Locations:             
    DefaultLocation
Organizations:         
    RHCI
OpenSCAP Proxy:        
Content View:          
    ID:   1
    Name: Default Organization View
Lifecycle Environment: 
    ID:   1
    Name: Library
Content Source:        
    ID:   1
    Name: sat-reporting.p1.lab
Kickstart Repository:  
    ID:   
    Name:

```



```
Id:                    2
Name:                  HG_PROD_STAGING
Title:                 HG_ALL/HG_PROD_STAGING
Description:           
  
Parent:                HG_ALL
Network:               

Operating system:      

Puppetclasses:         

Parameters:            

Locations:             
    DefaultLocation
Organizations:         
    RHCI
OpenSCAP Proxy:        
Content View:          
    ID:   
    Name: Default Organization View
Lifecycle Environment: 
    ID:   9
    Name: Production-Staging
Content Source:        
    ID:   1
    Name: sat-reporting.p1.lab
Kickstart Repository:  
    ID:   
    Name:

```



```
Id:                    4
Name:                  SW-DELIVERY
Title:                 HG_ALL/SW-DELIVERY
Description:           
  
Parent:                HG_ALL
Network:               

Operating system:      

Puppetclasses:         

Parameters:            

Locations:             
    DefaultLocation
Organizations:         
    RHCI
OpenSCAP Proxy:        
Content View:          
    ID:   
    Name: Default Organization View
Lifecycle Environment: 
    ID:   4
    Name: Internal-SwDelivery-Dev
Content Source:        
    ID:   1
    Name: sat-reporting.p1.lab
Kickstart Repository:  
    ID:   
    Name:

```



```
Id:                    5
Name:                  DEV
Title:                 HG_ALL/SW-DELIVERY/DEV
Description:           
  
Parent:                HG_ALL/SW-DELIVERY
Network:               

Operating system:      

Puppetclasses:         

Parameters:            

Locations:             
    DefaultLocation
Organizations:         
    RHCI
OpenSCAP Proxy:        
Content View:          
    ID:   
    Name: Default Organization View
Lifecycle Environment: 
    ID:   4
    Name: Internal-SwDelivery-Dev
Content Source:        
    ID:   1
    Name: sat-reporting.p1.lab
Kickstart Repository:  
    ID:   
    Name:

```



```
Id:                    7
Name:                  PREPRODUCTION
Title:                 HG_ALL/SW-DELIVERY/PREPRODUCTION
Description:           
  
Parent:                HG_ALL/SW-DELIVERY
Network:               

Operating system:      

Puppetclasses:         

Parameters:            

Locations:             
    DefaultLocation
Organizations:         
    RHCI
OpenSCAP Proxy:        
Content View:          
    ID:   
    Name: Default Organization View
Lifecycle Environment: 
    ID:   6
    Name: Internal-SwDelivery-Preproduction
Content Source:        
    ID:   1
    Name: sat-reporting.p1.lab
Kickstart Repository:  
    ID:   
    Name:

```



```
Id:                    8
Name:                  PRODUCTION
Title:                 HG_ALL/SW-DELIVERY/PRODUCTION
Description:           
  
Parent:                HG_ALL/SW-DELIVERY
Network:               

Operating system:      

Puppetclasses:         

Parameters:            

Locations:             
    DefaultLocation
Organizations:         
    RHCI
OpenSCAP Proxy:        
Content View:          
    ID:   
    Name: Default Organization View
Lifecycle Environment: 
    ID:   4
    Name: Internal-SwDelivery-Dev
Content Source:        
    ID:   1
    Name: sat-reporting.p1.lab
Kickstart Repository:  
    ID:   
    Name:

```



```
Id:                    6
Name:                  TEST
Title:                 HG_ALL/SW-DELIVERY/TEST
Description:           
  
Parent:                HG_ALL/SW-DELIVERY
Network:               

Operating system:      

Puppetclasses:         

Parameters:            

Locations:             
    DefaultLocation
Organizations:         
    RHCI
OpenSCAP Proxy:        
Content View:          
    ID:   
    Name: Default Organization View
Lifecycle Environment: 
    ID:   5
    Name: Internal-SwDelivery-Test
Content Source:        
    ID:   1
    Name: sat-reporting.p1.lab
Kickstart Repository:  
    ID:   
    Name:

```


### Org RHCI - lifecycle-environment

```
---|-----------------------------------|----------------------------------
ID | NAME                              | PRIOR                            
---|-----------------------------------|----------------------------------
4  | Internal-SwDelivery-Dev           | Library                          
6  | Internal-SwDelivery-Preproduction | Internal-SwDelivery-Test         
7  | Internal-SwDelivery-Production    | Internal-SwDelivery-Preproduction
5  | Internal-SwDelivery-Test          | Internal-SwDelivery-Dev          
1  | Library                           |                                  
10 | Production-Live                   | Production-Staging               
9  | Production-Staging                | Library                          
---|-----------------------------------|----------------------------------
```



```
ID:                          4
Name:                        Internal-SwDelivery-Dev
Label:                       Internal-SwDelivery-Dev
Description:                 
Organization:                RHCI
Library:                     false
Prior Lifecycle Environment: Library
Unauthenticated Pull:        false
Registry Name Pattern:

```



```
ID:                          6
Name:                        Internal-SwDelivery-Preproduction
Label:                       Internal-SwDelivery-Preproduction
Description:                 
Organization:                RHCI
Library:                     false
Prior Lifecycle Environment: Internal-SwDelivery-Test
Unauthenticated Pull:        false
Registry Name Pattern:

```



```
ID:                          7
Name:                        Internal-SwDelivery-Production
Label:                       Internal-SwDelivery-Production
Description:                 
Organization:                RHCI
Library:                     false
Prior Lifecycle Environment: Internal-SwDelivery-Preproduction
Unauthenticated Pull:        false
Registry Name Pattern:

```



```
ID:                          5
Name:                        Internal-SwDelivery-Test
Label:                       Internal-SwDelivery-Test
Description:                 
Organization:                RHCI
Library:                     false
Prior Lifecycle Environment: Internal-SwDelivery-Dev
Unauthenticated Pull:        false
Registry Name Pattern:

```



```
ID:                          1
Name:                        Library
Label:                       Library
Description:                 
Organization:                RHCI
Library:                     true
Prior Lifecycle Environment: 
Unauthenticated Pull:        false
Registry Name Pattern:

```



```
ID:                          10
Name:                        Production-Live
Label:                       Production-Live
Description:                 
Organization:                RHCI
Library:                     false
Prior Lifecycle Environment: Production-Staging
Unauthenticated Pull:        false
Registry Name Pattern:

```



```
ID:                          9
Name:                        Production-Staging
Label:                       Production-Staging
Description:                 
Organization:                RHCI
Library:                     false
Prior Lifecycle Environment: Library
Unauthenticated Pull:        false
Registry Name Pattern:

```


### Org RHCI - product

```
----|-------------------------------------|-----------------|--------------|--------------|------------------
ID  | NAME                                | DESCRIPTION     | ORGANIZATION | REPOSITORIES | SYNC STATE       
----|-------------------------------------|-----------------|--------------|--------------|------------------
18  | Red Hat Enterprise Linux for x86_64 |                 | RHCI         | 4            | Syncing Complete.
127 | Xymon8                              | Xymon for RHEL8 | RHCI         | 1            | Syncing Complete.
----|-------------------------------------|-----------------|--------------|--------------|------------------
```



```
ID:           18
Name:         Red Hat Enterprise Linux for x86_64
Label:        Red_Hat_Enterprise_Linux_for_x86_64
Description:  
Sync State:   Syncing Complete.
Sync Plan ID: 2
GPG:          
    GPG Key ID: 
    GPG Key:
Organization: RHCI
Content:      
 1) Repo Name:    Red Hat Enterprise Linux 8 for x86_64 - AppStream (Debug RPMs)
    URL:          /content/dist/rhel8/$releasever/x86_64/appstream/debug
    Content Type: yum
 2) Repo Name:    Red Hat Enterprise Linux 9 for x86_64 - Supplementary (Source RPMs)
    URL:          /content/dist/rhel9/$releasever/x86_64/supplementary/source/SRPMS
    Content Type: yum
 3) Repo Name:    Red Hat Enterprise Linux 8 for x86_64 - AppStream (RPMs)
    URL:          /content/dist/rhel8/$releasever/x86_64/appstream/os
    Content Type: yum
 4) Repo Name:    Red Hat Enterprise Linux 9 for x86_64 - Supplementary (Debug RPMs)
    URL:          /content/dist/rhel9/$releasever/x86_64/supplementary/debug
    Content Type: yum
 5) Repo Name:    Red Hat OpenStack Platform 16 Tools for RHEL 8 x86_64 (Source RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/openstack-tools/16/source/SRPMS
    Content Type: yum
 6) Repo Name:    Red Hat Enterprise Linux 8 for x86_64 - AppStream (Source RPMs)
    URL:          /content/dist/rhel8/$releasever/x86_64/appstream/source/SRPMS
    Content Type: yum
 7) Repo Name:    Red Hat Enterprise Linux 9 for x86_64 - Supplementary (ISOs)
    URL:          /content/dist/rhel9/$releasever/x86_64/supplementary/iso
    Content Type: file
 8) Repo Name:    Red Hat OpenStack Platform 16 Tools for RHEL 8 x86_64 (RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/openstack-tools/16/os
    Content Type: yum
 9) Repo Name:    Red Hat Enterprise Linux 8 for x86_64 - AppStream (Kickstart)
    URL:          /content/dist/rhel8/$releasever/x86_64/appstream/kickstart
    Content Type: kickstart
 10)Repo Name:    Red Hat OpenStack Platform 16 Tools for RHEL 8 x86_64 (Debug RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/openstack-tools/16/debug
    Content Type: yum
 11)Repo Name:    Red Hat Virtualization 4 Tools for RHEL 9 x86_64 (Source RPMs)
    URL:          /content/dist/layered/rhel9/x86_64/rhv-tools/4/source/SRPMS
    Content Type: yum
 12)Repo Name:    Red Hat Satellite Tools 6.9 for RHEL 8 x86_64 (Debug RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-tools/6.9/debug
    Content Type: yum
 13)Repo Name:    Red Hat Satellite Tools 6.9 for RHEL 8 x86_64 (RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-tools/6.9/os
    Content Type: yum
 14)Repo Name:    Red Hat Satellite Tools 6.9 for RHEL 8 x86_64 (Source RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-tools/6.9/source/SRPMS
    Content Type: yum
 15)Repo Name:    Red Hat Virtualization 4 Tools for RHEL 9 x86_64 (Debug RPMs)
    URL:          /content/dist/layered/rhel9/x86_64/rhv-tools/4/debug
    Content Type: yum
 16)Repo Name:    Red Hat Virtualization 4 Tools for RHEL 9 x86_64 (RPMs)
    URL:          /content/dist/layered/rhel9/x86_64/rhv-tools/4/os
    Content Type: yum
 17)Repo Name:    Red Hat OpenStack Platform 15 Tools for RHEL 8 x86_64 (Debug RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/openstack-tools/15/debug
    Content Type: yum
 18)Repo Name:    Red Hat Satellite Tools 6.10 for RHEL 8 x86_64 (Debug RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-tools/6.10/debug
    Content Type: yum
 19)Repo Name:    Red Hat Ceph Storage Tools 4 for RHEL 8 x86_64 (Source RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/rhceph-tools/4/source/SRPMS
    Content Type: yum
 20)Repo Name:    Red Hat Ceph Storage Tools 4 for RHEL 8 x86_64 (Debug RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/rhceph-tools/4/debug
    Content Type: yum
 21)Repo Name:    Red Hat Satellite Tools 6.10 for RHEL 8 x86_64 (RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-tools/6.10/os
    Content Type: yum
 22)Repo Name:    Red Hat OpenStack Platform 15 Tools for RHEL 8 x86_64 (Source RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/openstack-tools/15/source/SRPMS
    Content Type: yum
 23)Repo Name:    Red Hat Satellite Tools 6 Beta for RHEL 8 x86_64 (RPMs)
    URL:          /content/beta/layered/rhel8/x86_64/sat-tools/6/os
    Content Type: yum
 24)Repo Name:    Red Hat Ceph Storage Tools 4 for RHEL 8 x86_64 (RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/rhceph-tools/4/os
    Content Type: yum
 25)Repo Name:    Red Hat Satellite Tools 6.10 for RHEL 8 x86_64 (Source RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-tools/6.10/source/SRPMS
    Content Type: yum
 26)Repo Name:    Red Hat OpenStack Platform 15 Tools for RHEL 8 x86_64 (RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/openstack-tools/15/os
    Content Type: yum
 27)Repo Name:    Red Hat Satellite Tools 6 Beta for RHEL 8 x86_64 (Source RPMs)
    URL:          /content/beta/layered/rhel8/x86_64/sat-tools/6/source/SRPMS
    Content Type: yum
 28)Repo Name:    Red Hat Satellite Tools 6 Beta for RHEL 8 x86_64 (Debug RPMs)
    URL:          /content/beta/layered/rhel8/x86_64/sat-tools/6/debug
    Content Type: yum
 29)Repo Name:    Red Hat Satellite Maintenance 6.12 for RHEL 8 x86_64 (Debug RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-maintenance/6.12/debug
    Content Type: yum
 30)Repo Name:    Red Hat Satellite Maintenance 6.12 for RHEL 8 x86_64 (Source RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-maintenance/6.12/source/SRPMS
    Content Type: yum
 31)Repo Name:    Red Hat Satellite Maintenance 6.12 for RHEL 8 x86_64 (RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-maintenance/6.12/os
    Content Type: yum
 32)Repo Name:    Red Hat Satellite Utils 6.12 for RHEL 8 x86_64 (Source RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-utils/6.12/source/SRPMS
    Content Type: yum
 33)Repo Name:    Red Hat Satellite Utils 6.12 for RHEL 8 x86_64 (RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-utils/6.12/os
    Content Type: yum
 34)Repo Name:    Red Hat Satellite Utils 6.12 for RHEL 8 x86_64 (Debug RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-utils/6.12/debug
    Content Type: yum
 35)Repo Name:    Red Hat OpenStack Platform 17.1 Tools for RHEL 8 x86_64 (RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/openstack-tools/17.1/os
    Content Type: yum
 36)Repo Name:    Red Hat Enterprise Linux 9 for x86_64 - BaseOS (RPMs)
    URL:          /content/dist/rhel9/$releasever/x86_64/baseos/os
    Content Type: yum
 37)Repo Name:    Red Hat OpenStack Platform 17.1 Tools for RHEL 8 x86_64 (Debug RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/openstack-tools/17.1/debug
    Content Type: yum
 38)Repo Name:    Red Hat OpenStack Platform 17.1 Tools for RHEL 8 x86_64 (Source RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/openstack-tools/17.1/source/SRPMS
    Content Type: yum
 39)Repo Name:    Red Hat Enterprise Linux 9 for x86_64 - BaseOS (Debug RPMs)
    URL:          /content/dist/rhel9/$releasever/x86_64/baseos/debug
    Content Type: yum
 40)Repo Name:    Red Hat Virtualization 4 Tools for RHEL 8 x86_64 (RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/rhv-tools/4/os
    Content Type: yum
 41)Repo Name:    Red Hat Enterprise Linux 9 for x86_64 - BaseOS (ISOs)
    URL:          /content/dist/rhel9/$releasever/x86_64/baseos/iso
    Content Type: file
 42)Repo Name:    Red Hat Virtualization 4 Tools for RHEL 8 x86_64 (Debug RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/rhv-tools/4/debug
    Content Type: yum
 43)Repo Name:    Red Hat Enterprise Linux 9 for x86_64 - BaseOS (Source RPMs)
    URL:          /content/dist/rhel9/$releasever/x86_64/baseos/source/SRPMS
    Content Type: yum
 44)Repo Name:    Red Hat Enterprise Linux 9 for x86_64 - BaseOS (Kickstart)
    URL:          /content/dist/rhel9/$releasever/x86_64/baseos/kickstart
    Content Type: kickstart
 45)Repo Name:    Red Hat Enterprise Linux 9 for x86_64 - BaseOS (Source ISOs)
    URL:          /content/dist/rhel9/$releasever/x86_64/baseos/source/iso
    Content Type: file
 46)Repo Name:    Red Hat Enterprise Linux 9 for x86_64 - AppStream (Debug RPMs)
    URL:          /content/dist/rhel9/$releasever/x86_64/appstream/debug
    Content Type: yum
 47)Repo Name:    Red Hat Enterprise Linux 9 for x86_64 - AppStream (RPMs)
    URL:          /content/dist/rhel9/$releasever/x86_64/appstream/os
    Content Type: yum
 48)Repo Name:    Red Hat Ceph Storage Tools 5 for RHEL 8 x86_64 (Source RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/rhceph-tools/5/source/SRPMS
    Content Type: yum
 49)Repo Name:    Red Hat Enterprise Linux 9 for x86_64 - AppStream (Kickstart)
    URL:          /content/dist/rhel9/$releasever/x86_64/appstream/kickstart
    Content Type: kickstart
 50)Repo Name:    Red Hat Ceph Storage Tools 5 for RHEL 8 x86_64 (RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/rhceph-tools/5/os
    Content Type: yum
 51)Repo Name:    Red Hat Enterprise Linux 9 for x86_64 - AppStream (Source RPMs)
    URL:          /content/dist/rhel9/$releasever/x86_64/appstream/source/SRPMS
    Content Type: yum
 52)Repo Name:    Red Hat OpenStack Platform 17 Tools for RHEL 9 x86_64 (Debug RPMs)
    URL:          /content/dist/layered/rhel9/x86_64/openstack-tools/17/debug
    Content Type: yum
 53)Repo Name:    Red Hat Enterprise Linux 9 for x86_64 - Supplementary (RPMs)
    URL:          /content/dist/rhel9/$releasever/x86_64/supplementary/os
    Content Type: yum
 54)Repo Name:    Red Hat OpenStack Platform 17 Tools for RHEL 9 x86_64 (Source RPMs)
    URL:          /content/dist/layered/rhel9/x86_64/openstack-tools/17/source/SRPMS
    Content Type: yum
 55)Repo Name:    Red Hat Ceph Storage Tools 5 for RHEL 8 x86_64 (Debug RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/rhceph-tools/5/debug
    Content Type: yum
 56)Repo Name:    Red Hat OpenStack Platform 17 Tools for RHEL 9 x86_64 (RPMs)
    URL:          /content/dist/layered/rhel9/x86_64/openstack-tools/17/os
    Content Type: yum
 57)Repo Name:    Red Hat Satellite Tools 6.5 for RHEL 8 x86_64 (Source RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-tools/6.5/source/SRPMS
    Content Type: yum
 58)Repo Name:    Red Hat Virtualization 4 Tools Beta for RHEL 8 x86_64 (Debug RPMs)
    URL:          /content/beta/layered/rhel8/x86_64/rhv-tools/4/debug
    Content Type: yum
 59)Repo Name:    Red Hat Satellite Utils 6.13 for RHEL 8 x86_64 (Source RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-utils/6.13/source/SRPMS
    Content Type: yum
 60)Repo Name:    Red Hat Virtualization 4 Tools Beta for RHEL 8 x86_64 (Source RPMs)
    URL:          /content/beta/layered/rhel8/x86_64/rhv-tools/4/source/SRPMS
    Content Type: yum
 61)Repo Name:    Red Hat Satellite Utils 6.13 for RHEL 8 x86_64 (Debug RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-utils/6.13/debug
    Content Type: yum
 62)Repo Name:    Red Hat Storage Native Client for RHEL 8 (RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/rhgs-client/3.5/os
    Content Type: yum
 63)Repo Name:    Red Hat Satellite Tools 6.5 for RHEL 8 x86_64 (RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-tools/6.5/os
    Content Type: yum
 64)Repo Name:    Red Hat Satellite Utils 6.13 for RHEL 8 x86_64 (RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-utils/6.13/os
    Content Type: yum
 65)Repo Name:    Red Hat Satellite Maintenance 6.13 for RHEL 8 x86_64 (Source RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-maintenance/6.13/source/SRPMS
    Content Type: yum
 66)Repo Name:    Red Hat Virtualization 4 Tools Beta for RHEL 8 x86_64 (RPMs)
    URL:          /content/beta/layered/rhel8/x86_64/rhv-tools/4/os
    Content Type: yum
 67)Repo Name:    Red Hat Satellite Tools 6.5 for RHEL 8 x86_64 (Debug RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-tools/6.5/debug
    Content Type: yum
 68)Repo Name:    Red Hat Satellite Maintenance 6.13 for RHEL 8 x86_64 (Debug RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-maintenance/6.13/debug
    Content Type: yum
 69)Repo Name:    Red Hat Satellite Maintenance 6.13 for RHEL 8 x86_64 (RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-maintenance/6.13/os
    Content Type: yum
 70)Repo Name:    Red Hat Storage Native Client for RHEL 8 (Debug RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/rhgs-client/3.5/debug
    Content Type: yum
 71)Repo Name:    Red Hat Storage Native Client for RHEL 8 (Source RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/rhgs-client/3.5/source/SRPMS
    Content Type: yum
 72)Repo Name:    Red Hat Satellite Utils 6.11 for RHEL 8 x86_64 (Debug RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-utils/6.11/debug
    Content Type: yum
 73)Repo Name:    Red Hat Satellite Utils 6.11 for RHEL 8 x86_64 (Source RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-utils/6.11/source/SRPMS
    Content Type: yum
 74)Repo Name:    Red Hat OpenStack Platform 17.1 Tools for RHEL 9 x86_64 (Source RPMs)
    URL:          /content/dist/layered/rhel9/x86_64/openstack-tools/17.1/source/SRPMS
    Content Type: yum
 75)Repo Name:    Red Hat OpenStack Platform 17.1 Tools for RHEL 9 x86_64 (RPMs)
    URL:          /content/dist/layered/rhel9/x86_64/openstack-tools/17.1/os
    Content Type: yum
 76)Repo Name:    Red Hat Virtualization 4 Tools for RHEL 8 x86_64 (Source RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/rhv-tools/4/source/SRPMS
    Content Type: yum
 77)Repo Name:    Red Hat OpenStack Platform 17.1 Tools for RHEL 9 x86_64 (Debug RPMs)
    URL:          /content/dist/layered/rhel9/x86_64/openstack-tools/17.1/debug
    Content Type: yum
 78)Repo Name:    Red Hat Satellite Maintenance 6.11 for RHEL 8 x86_64 (Source RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-maintenance/6.11/source/SRPMS
    Content Type: yum
 79)Repo Name:    Red Hat Satellite Utils 6.11 for RHEL 8 x86_64 (RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-utils/6.11/os
    Content Type: yum
 80)Repo Name:    Red Hat Satellite Maintenance 6.11 for RHEL 8 x86_64 (RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-maintenance/6.11/os
    Content Type: yum
 81)Repo Name:    Red Hat Satellite Maintenance 6.11 for RHEL 8 x86_64 (Debug RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-maintenance/6.11/debug
    Content Type: yum
 82)Repo Name:    Red Hat Satellite Tools 6.6 for RHEL 8 x86_64 (Source RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-tools/6.6/source/SRPMS
    Content Type: yum
 83)Repo Name:    Red Hat Satellite Tools 6.6 for RHEL 8 x86_64 (Debug RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-tools/6.6/debug
    Content Type: yum
 84)Repo Name:    Red Hat Satellite Utils 6 Beta for RHEL 8 x86_64 (RPMs)
    URL:          /content/beta/layered/rhel8/x86_64/sat-utils/6/os
    Content Type: yum
 85)Repo Name:    Red Hat Satellite Utils 6 Beta for RHEL 8 x86_64 (Debug RPMs)
    URL:          /content/beta/layered/rhel8/x86_64/sat-utils/6/debug
    Content Type: yum
 86)Repo Name:    Red Hat Satellite Maintenance 6 Beta for RHEL 8 x86_64 (Debug RPMs)
    URL:          /content/beta/layered/rhel8/x86_64/sat-maintenance/6/debug
    Content Type: yum
 87)Repo Name:    Red Hat Satellite Tools 6.6 for RHEL 8 x86_64 (RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-tools/6.6/os
    Content Type: yum
 88)Repo Name:    Red Hat Satellite Maintenance 6 Beta for RHEL 8 x86_64 (Source RPMs)
    URL:          /content/beta/layered/rhel8/x86_64/sat-maintenance/6/source/SRPMS
    Content Type: yum
 89)Repo Name:    Red Hat Satellite Utils 6 Beta for RHEL 8 x86_64 (Source RPMs)
    URL:          /content/beta/layered/rhel8/x86_64/sat-utils/6/source/SRPMS
    Content Type: yum
 90)Repo Name:    Red Hat Satellite Maintenance 6 Beta for RHEL 8 x86_64 (RPMs)
    URL:          /content/beta/layered/rhel8/x86_64/sat-maintenance/6/os
    Content Type: yum
 91)Repo Name:    Red Hat Satellite Tools 6.7 for RHEL 8 x86_64 (Source RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-tools/6.7/source/SRPMS
    Content Type: yum
 92)Repo Name:    Red Hat Satellite Tools 6.7 for RHEL 8 x86_64 (RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-tools/6.7/os
    Content Type: yum
 93)Repo Name:    Red Hat Satellite Tools 6.7 for RHEL 8 x86_64 (Debug RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-tools/6.7/debug
    Content Type: yum
 94)Repo Name:    Red Hat Enterprise Linux 8 for x86_64 - BaseOS (Source ISOs)
    URL:          /content/dist/rhel8/$releasever/x86_64/baseos/source/iso
    Content Type: file
 95)Repo Name:    Red Hat Enterprise Linux 8 for x86_64 - BaseOS (Kickstart)
    URL:          /content/dist/rhel8/$releasever/x86_64/baseos/kickstart
    Content Type: kickstart
 96)Repo Name:    Red Hat Satellite Tools 6.8 for RHEL 8 x86_64 (Source RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-tools/6.8/source/SRPMS
    Content Type: yum
 97)Repo Name:    Red Hat Ceph Storage Tools 6 for RHEL 9 x86_64 (Source RPMs)
    URL:          /content/dist/layered/rhel9/x86_64/rhceph-tools/6/source/SRPMS
    Content Type: yum
 98)Repo Name:    Red Hat Enterprise Linux 8 for x86_64 - Supplementary (RPMs)
    URL:          /content/dist/rhel8/$releasever/x86_64/supplementary/os
    Content Type: yum
 99)Repo Name:    Red Hat Ceph Storage Tools 6 for RHEL 9 x86_64 (Debug RPMs)
    URL:          /content/dist/layered/rhel9/x86_64/rhceph-tools/6/debug
    Content Type: yum
 100)Repo Name:    Red Hat Enterprise Linux 8 for x86_64 - Supplementary (Source RPMs)
    URL:          /content/dist/rhel8/$releasever/x86_64/supplementary/source/SRPMS
    Content Type: yum
 101)Repo Name:    Red Hat Enterprise Linux 8 for x86_64 - BaseOS (Debug RPMs)
    URL:          /content/dist/rhel8/$releasever/x86_64/baseos/debug
    Content Type: yum
 102)Repo Name:    Red Hat OpenStack Platform 18 Tools for RHEL 9 x86_64 (Source RPMs)
    URL:          /content/dist/layered/rhel9/x86_64/openstack-tools/18/source/SRPMS
    Content Type: yum
 103)Repo Name:    Red Hat Enterprise Linux 8 for x86_64 - Supplementary (Debug RPMs)
    URL:          /content/dist/rhel8/$releasever/x86_64/supplementary/debug
    Content Type: yum
 104)Repo Name:    Red Hat Ceph Storage Tools 6 for RHEL 9 x86_64 (RPMs)
    URL:          /content/dist/layered/rhel9/x86_64/rhceph-tools/6/os
    Content Type: yum
 105)Repo Name:    Red Hat Enterprise Linux 8 for x86_64 - BaseOS (RPMs)
    URL:          /content/dist/rhel8/$releasever/x86_64/baseos/os
    Content Type: yum
 106)Repo Name:    Red Hat OpenStack Platform 18 Tools for RHEL 9 x86_64 (Debug RPMs)
    URL:          /content/dist/layered/rhel9/x86_64/openstack-tools/18/debug
    Content Type: yum
 107)Repo Name:    Red Hat OpenStack Platform 18 Tools for RHEL 9 x86_64 (RPMs)
    URL:          /content/dist/layered/rhel9/x86_64/openstack-tools/18/os
    Content Type: yum
 108)Repo Name:    Red Hat Enterprise Linux 8 for x86_64 - BaseOS (ISOs)
    URL:          /content/dist/rhel8/$releasever/x86_64/baseos/iso
    Content Type: file
 109)Repo Name:    Red Hat Enterprise Linux 8 for x86_64 - Supplementary (ISOs)
    URL:          /content/dist/rhel8/$releasever/x86_64/supplementary/iso
    Content Type: file
 110)Repo Name:    Red Hat Enterprise Linux 8 for x86_64 - BaseOS (Source RPMs)
    URL:          /content/dist/rhel8/$releasever/x86_64/baseos/source/SRPMS
    Content Type: yum
 111)Repo Name:    Red Hat Satellite Tools 6.8 for RHEL 8 x86_64 (Debug RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-tools/6.8/debug
    Content Type: yum
 112)Repo Name:    Red Hat Satellite Tools 6.8 for RHEL 8 x86_64 (RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-tools/6.8/os
    Content Type: yum
 113)Repo Name:    Red Hat Satellite Client 6 for RHEL 9 x86_64 (Debug RPMs)
    URL:          /content/dist/layered/rhel9/x86_64/sat-client/6/debug
    Content Type: yum
 114)Repo Name:    Red Hat Ceph Storage Tools 5 for RHEL 9 x86_64 (RPMs)
    URL:          /content/dist/layered/rhel9/x86_64/rhceph-tools/5/os
    Content Type: yum
 115)Repo Name:    Red Hat Satellite Client 6 for RHEL 9 x86_64 (Source RPMs)
    URL:          /content/dist/layered/rhel9/x86_64/sat-client/6/source/SRPMS
    Content Type: yum
 116)Repo Name:    Red Hat Ceph Storage Tools 5 for RHEL 9 x86_64 (Debug RPMs)
    URL:          /content/dist/layered/rhel9/x86_64/rhceph-tools/5/debug
    Content Type: yum
 117)Repo Name:    Red Hat Satellite Client 6 for RHEL 8 x86_64 (Source RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-client/6/source/SRPMS
    Content Type: yum
 118)Repo Name:    Red Hat Ceph Storage Tools 5 for RHEL 9 x86_64 (Source RPMs)
    URL:          /content/dist/layered/rhel9/x86_64/rhceph-tools/5/source/SRPMS
    Content Type: yum
 119)Repo Name:    Red Hat Satellite Client 6 for RHEL 9 x86_64 (RPMs)
    URL:          /content/dist/layered/rhel9/x86_64/sat-client/6/os
    Content Type: yum
 120)Repo Name:    Red Hat Satellite Client 6 for RHEL 8 x86_64 (RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-client/6/os
    Content Type: yum
 121)Repo Name:    Red Hat Satellite Client 6 for RHEL 8 x86_64 (Debug RPMs)
    URL:          /content/dist/layered/rhel8/x86_64/sat-client/6/debug
    Content Type: yum

```



```
ID:           127
Name:         Xymon8
Label:        Xymon8
Description:  Xymon for RHEL8
Sync State:   Syncing Complete.
Sync Plan ID: 1
GPG:          
    GPG Key ID: 
    GPG Key:
Organization: RHCI
Content:      
 1) Repo Name:    xymon8
    URL:          /custom/Xymon8/xymon8
    Content Type: yum

```


### Org RHCI - subscription

```
---|----------------------------------|------------------------------------------------|----------|----------|---------|--------------|---------------------|-----------|---------
ID | UUID                             | NAME                                           | TYPE     | CONTRACT | ACCOUNT | SUPPORT      | END DATE            | QUANTITY  | CONSUMED
---|----------------------------------|------------------------------------------------|----------|----------|---------|--------------|---------------------|-----------|---------
1  | 4028fbfb87ca5f9e0187cc71de5414ba | Red Hat Developer Subscription for Individuals | Physical | 14145856 | 1460290 | Self-Support | 2023/08/17 03:59:59 | 5         | 0       
3  | 4028fbfb87ca5f9e0187cc8d810c1a61 | Xymon8                                         | Physical |          |         |              | 2049/12/01 00:00:00 | Unlimited | 0       
---|----------------------------------|------------------------------------------------|----------|----------|---------|--------------|---------------------|-----------|---------
```


### Org RHCI - sync-plan

```
---|------------------|---------------------|----------|---------|-----------------|-------------------
ID | NAME             | START DATE          | INTERVAL | ENABLED | CRON EXPRESSION | RECURRING LOGIC ID
---|------------------|---------------------|----------|---------|-----------------|-------------------
2  | DisabledSyncPlan | 2023/04/29 05:00:00 | hourly   | no      |                 | 4                 
1  | SyncPlanForAll   | 2020/01/04 08:30:00 | weekly   | yes     |                 | 3                 
---|------------------|---------------------|----------|---------|-----------------|-------------------
```



```
ID:                 2
Name:               DisabledSyncPlan
Start Date:         2023/04/29 05:00:00
Interval:           hourly
Enabled:            no
Cron Expression:    
Recurring Logic ID: 4
Description:        
Created at:         2023/04/29 10:34:05
Updated at:         2023/04/29 10:34:05
Products:           
 1) ID:   18
    Name: Red Hat Enterprise Linux for x86_64

```



```
ID:                 1
Name:               SyncPlanForAll
Start Date:         2020/01/04 08:30:00
Interval:           weekly
Enabled:            yes
Cron Expression:    
Recurring Logic ID: 3
Description:        
Created at:         2023/04/29 10:31:15
Updated at:         2023/04/29 10:31:15
Products:           
 1) ID:   127
    Name: Xymon8

```


### Org RHCI - repository

```
---|-----------------------------------------------------------------|-------------------------------------|--------------|-------------------------------------------------------------------------
ID | NAME                                                            | PRODUCT                             | CONTENT TYPE | URL                                                                     
---|-----------------------------------------------------------------|-------------------------------------|--------------|-------------------------------------------------------------------------
3  | Red Hat Enterprise Linux 8 for x86_64 - AppStream Kickstart 8.6 | Red Hat Enterprise Linux for x86_64 | yum          | https://cdn.redhat.com/content/dist/rhel8/8.6/x86_64/appstream/kickstart
1  | Red Hat Enterprise Linux 8 for x86_64 - AppStream RPMs 8        | Red Hat Enterprise Linux for x86_64 | yum          | https://cdn.redhat.com/content/dist/rhel8/8/x86_64/appstream/os         
4  | Red Hat Enterprise Linux 8 for x86_64 - BaseOS Kickstart 8.6    | Red Hat Enterprise Linux for x86_64 | yum          | https://cdn.redhat.com/content/dist/rhel8/8.6/x86_64/baseos/kickstart   
2  | Red Hat Enterprise Linux 8 for x86_64 - BaseOS RPMs 8           | Red Hat Enterprise Linux for x86_64 | yum          | https://cdn.redhat.com/content/dist/rhel8/8/x86_64/baseos/os            
7  | xymon8                                                          | Xymon8                              | yum          | https://terabithia.org/rpms/xymon/el8/                                  
---|-----------------------------------------------------------------|-------------------------------------|--------------|-------------------------------------------------------------------------
```


## Organization Wëird Orgañization 鋼の錬金術師


### Org Wëird Orgañization 鋼の錬金術師 - activation-key

```
---|------|------------|-----------------------|-------------
ID | NAME | HOST LIMIT | LIFECYCLE ENVIRONMENT | CONTENT VIEW
---|------|------------|-----------------------|-------------
```


### Org Wëird Orgañization 鋼の錬金術師 - ansible roles

```
Association not found for organization
```


### Org Wëird Orgañization 鋼の錬金術師 - ansible variables

```
Association not found for organization
```


### Org Wëird Orgañization 鋼の錬金術師 - content-credentials

```
Error: No such sub-command 'content-credentials'.

See: 'hammer --help'.
```


### Org Wëird Orgañization 鋼の錬金術師 - content-view

```
----------------|---------------------------|--------------------------------------|-----------|---------------------|---------------
CONTENT VIEW ID | NAME                      | LABEL                                | COMPOSITE | LAST PUBLISHED      | REPOSITORY IDS
----------------|---------------------------|--------------------------------------|-----------|---------------------|---------------
7               | CV-WO-RHEL7               | CV-WO-RHEL7                          |           | 2023/04/29 13:36:05 | 5             
2               | Default Organization View | 03c6cbe8-d974-486f-8638-1421d97f2084 |           | 2023/04/29 09:57:53 |               
----------------|---------------------------|--------------------------------------|-----------|---------------------|---------------
```



```
ID:                           7
Name:                         CV-WO-RHEL7
Label:                        CV-WO-RHEL7
Composite:                    false
Description:                  
Content Host Count:           0
Organization:                 Wëird Orgañization 鋼の錬金術師
Yum Repositories:             
 1) ID:    5
    Name:  Red Hat Enterprise Linux 7 Server RPMs x86_64 7Server
    Label: Red_Hat_Enterprise_Linux_7_Server_RPMs_x86_64_7Server
Container Image Repositories: 

OSTree Repositories:          

Puppet Modules:               

Lifecycle Environments:       
 1) ID:   2
    Name: Library
Versions:                     
 1) ID:        7
    Version:   1.0
    Published: 2023/04/29 13:36:05
Components:                   

Activation Keys:

```



```
ID:                           2
Name:                         Default Organization View
Label:                        03c6cbe8-d974-486f-8638-1421d97f2084
Composite:                    false
Description:                  
Content Host Count:           0
Organization:                 Wëird Orgañization 鋼の錬金術師
Yum Repositories:             

Container Image Repositories: 

OSTree Repositories:          

Puppet Modules:               

Lifecycle Environments:       
 1) ID:   2
    Name: Library
Versions:                     
 1) ID:        2
    Version:   1.0
    Published: 2023/04/29 09:57:53
Components:                   

Activation Keys:

```


### Org Wëird Orgañization 鋼の錬金術師 - host-collection

```
---|------|-------|------------
ID | NAME | LIMIT | DESCRIPTION
---|------|-------|------------
```


### Org Wëird Orgañization 鋼の錬金術師 - hostgroup

```
---|------|-------|------------------|--------------------|------
ID | NAME | TITLE | OPERATING SYSTEM | PUPPET ENVIRONMENT | MODEL
---|------|-------|------------------|--------------------|------
```


### Org Wëird Orgañization 鋼の錬金術師 - lifecycle-environment

```
---|---------|------
ID | NAME    | PRIOR
---|---------|------
2  | Library |      
---|---------|------
```



```
ID:                          2
Name:                        Library
Label:                       Library
Description:                 
Organization:                Wëird Orgañization 鋼の錬金術師
Library:                     true
Prior Lifecycle Environment: 
Unauthenticated Pull:        false
Registry Name Pattern:

```


### Org Wëird Orgañization 鋼の錬金術師 - product

```
---|---------------------------------|-------------|---------------------------------|--------------|------------------
ID | NAME                            | DESCRIPTION | ORGANIZATION                    | REPOSITORIES | SYNC STATE       
---|---------------------------------|-------------|---------------------------------|--------------|------------------
88 | Red Hat Enterprise Linux Server |             | Wëird Orgañization 鋼の錬金術師 | 2            | Syncing Complete.
---|---------------------------------|-------------|---------------------------------|--------------|------------------
```



```
ID:           88
Name:         Red Hat Enterprise Linux Server
Label:        Red_Hat_Enterprise_Linux_Server
Description:  
Sync State:   Syncing Complete.
Sync Plan ID: 
GPG:          
    GPG Key ID: 
    GPG Key:
Organization: Wëird Orgañization 鋼の錬金術師
Content:      
 1) Repo Name:    Red Hat OpenStack Platform 8 Tools for RHEL 7 Server (Source RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/openstack-tools/8/source/SRPMS
    Content Type: yum
 2) Repo Name:    Red Hat Satellite Tools 6.9 (for RHEL 7 Server) (Source RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.9/source/SRPMS
    Content Type: yum
 3) Repo Name:    Red Hat Enterprise Virtualization Agents for RHEL 6 Server (RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/rhev-agent/3/os
    Content Type: yum
 4) Repo Name:    Red Hat Enterprise Linux 7 Server - RH Common Beta (Source RPMs)
    URL:          /content/beta/rhel/server/7/$basearch/rh-common/source/SRPMS
    Content Type: yum
 5) Repo Name:    Red Hat Enterprise Virtualization Agents for RHEL 6 Server (Debug RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/rhev-agent/3/debug
    Content Type: yum
 6) Repo Name:    Red Hat Enterprise Linux 7 Server - RH Common Beta (RPMs)
    URL:          /content/beta/rhel/server/7/$basearch/rh-common/os
    Content Type: yum
 7) Repo Name:    Red Hat Enterprise Virtualization Agents for RHEL 6 Server Beta (Source RPMs)
    URL:          /content/beta/rhel/server/6/$releasever/$basearch/rhev-agent/3/source/SRPMS
    Content Type: yum
 8) Repo Name:    Red Hat Enterprise Linux 7 Server - RH Common Beta (Debug RPMs)
    URL:          /content/beta/rhel/server/7/$basearch/rh-common/debug
    Content Type: yum
 9) Repo Name:    Red Hat Enterprise Virtualization Agents for RHEL 6 Server Beta (RPMs)
    URL:          /content/beta/rhel/server/6/$releasever/$basearch/rhev-agent/3/os
    Content Type: yum
 10)Repo Name:    Red Hat Enterprise Virtualization Agents for RHEL 6 Server Beta (Debug RPMs)
    URL:          /content/beta/rhel/server/6/$releasever/$basearch/rhev-agent/3/debug
    Content Type: yum
 11)Repo Name:    Red Hat Enterprise Linux 5 Server - Fastrack (RPMs)
    URL:          /content/fastrack/rhel/server/5/$basearch/os
    Content Type: yum
 12)Repo Name:    Red Hat OpenStack Platform 8 Tools for RHEL 7 Server (RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/openstack-tools/8/os
    Content Type: yum
 13)Repo Name:    Red Hat Satellite Tools 6.9 (for RHEL 7 Server) (RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.9/os
    Content Type: yum
 14)Repo Name:    Red Hat OpenStack Platform 8 Tools for RHEL 7 Server (Debug RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/openstack-tools/8/debug
    Content Type: yum
 15)Repo Name:    Red Hat Satellite Tools 6.9 (for RHEL 7 Server) (Debug RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.9/debug
    Content Type: yum
 16)Repo Name:    Red Hat Enterprise Linux 6 Server - Fastrack (RPMs)
    URL:          /content/fastrack/rhel/server/6/$basearch/os
    Content Type: yum
 17)Repo Name:    redhat-ent-linux-i386-es-2.1(Source RPMs)
    URL:          /content/dist/rhel/es/2/2.1ES/$basearch/source/SRPMS
    Content Type: yum
 18)Repo Name:    redhat-ent-linux-i386-es-2.1(RPMs)
    URL:          /content/dist/rhel/es/2/2.1ES/$basearch/os
    Content Type: yum
 19)Repo Name:    redhat-linux-as-2.1-IPF(Source RPMs)
    URL:          /content/dist/rhel/as/2/2.1AS/$basearch/source/SRPMS
    Content Type: yum
 20)Repo Name:    redhat-linux-as-2.1-IPF(RPMs)
    URL:          /content/dist/rhel/as/2/2.1AS/$basearch/os
    Content Type: yum
 21)Repo Name:    Red Hat Enterprise Linux 5 Server Beta - Optional Productivity Applications (Source RPMs)
    URL:          /content/beta/rhel/server/5/$releasever/$basearch/productivity/source/SRPMS
    Content Type: yum
 22)Repo Name:    Red Hat Enterprise Linux 5 Server Beta - Optional Productivity Applications (Debug RPMs)
    URL:          /content/beta/rhel/server/5/$releasever/$basearch/productivity/debug
    Content Type: yum
 23)Repo Name:    Red Hat Enterprise Linux 5 Server Beta - Optional Productivity Applications (RPMs)
    URL:          /content/beta/rhel/server/5/$releasever/$basearch/productivity/os
    Content Type: yum
 24)Repo Name:    Red Hat Satellite Tools 6.2 (for RHEL 5 Server) (Source RPMs)
    URL:          /content/dist/rhel/server/5/5Server/$basearch/sat-tools/6.2/source/SRPMS
    Content Type: yum
 25)Repo Name:    Red Hat Enterprise Linux 7 Server - Optional (RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/optional/os
    Content Type: yum
 26)Repo Name:    Red Hat Enterprise Linux 7 Server - Optional (Debug RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/optional/debug
    Content Type: yum
 27)Repo Name:    Red Hat Enterprise Linux 6 Server - Optional Fastrack (Source RPMs)
    URL:          /content/fastrack/rhel/server/6/$basearch/optional/source/SRPMS
    Content Type: yum
 28)Repo Name:    Red Hat Enterprise Linux 7 Server - Fastrack (Source RPMs)
    URL:          /content/fastrack/rhel/server/7/$basearch/source/SRPMS
    Content Type: yum
 29)Repo Name:    Red Hat Enterprise Linux 6 Server - Optional Fastrack (Debug RPMs)
    URL:          /content/fastrack/rhel/server/6/$basearch/optional/debug
    Content Type: yum
 30)Repo Name:    Red Hat Enterprise Linux 7 Server - Fastrack (RPMs)
    URL:          /content/fastrack/rhel/server/7/$basearch/os
    Content Type: yum
 31)Repo Name:    Red Hat OpenStack Platform 11 Tools for RHEL 7 Server (Source RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/openstack-tools/11/source/SRPMS
    Content Type: yum
 32)Repo Name:    Red Hat Enterprise Linux 7 Server - Fastrack (Debug RPMs)
    URL:          /content/fastrack/rhel/server/7/$basearch/debug
    Content Type: yum
 33)Repo Name:    Red Hat Enterprise Linux 7 Server (Source RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/source/SRPMS
    Content Type: yum
 34)Repo Name:    Red Hat Enterprise Linux 7 Server (Source ISOs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/source/iso
    Content Type: file
 35)Repo Name:    Red Hat Enterprise Linux 7 Server (RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/os
    Content Type: yum
 36)Repo Name:    Red Hat Enterprise Linux 7 Server (Kickstart)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/kickstart
    Content Type: kickstart
 37)Repo Name:    Red Hat Enterprise Linux 7 Server (ISOs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/iso
    Content Type: file
 38)Repo Name:    Red Hat Enterprise Linux 7 Server (Debug RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/debug
    Content Type: yum
 39)Repo Name:    RHN Tools for Red Hat Enterprise Linux 5 Server (Debug RPMs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/rhn-tools/debug
    Content Type: yum
 40)Repo Name:    Red Hat OpenStack Platform 11 Tools for RHEL 7 Server (RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/openstack-tools/11/os
    Content Type: yum
 41)Repo Name:    Red Hat Satellite Tools 6.2 (for RHEL 5 Server) (Debug RPMs)
    URL:          /content/dist/rhel/server/5/5Server/$basearch/sat-tools/6.2/debug
    Content Type: yum
 42)Repo Name:    Red Hat Satellite Tools 6.2 (for RHEL 5 Server) (RPMs)
    URL:          /content/dist/rhel/server/5/5Server/$basearch/sat-tools/6.2/os
    Content Type: yum
 43)Repo Name:    Red Hat OpenStack Platform 11 Tools for RHEL 7 Server (Debug RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/openstack-tools/11/debug
    Content Type: yum
 44)Repo Name:    Red Hat Satellite Tools 6.3 - Puppet 4 (for RHEL 6 Server) (Source RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/sat-tools/6.3-puppet4/source/SRPMS
    Content Type: yum
 45)Repo Name:    Red Hat Satellite Tools 6.3 - Puppet 4 (for RHEL 6 Server) (RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/sat-tools/6.3-puppet4/os
    Content Type: yum
 46)Repo Name:    RHN Tools for Red Hat Enterprise Linux 6 Server Beta (Debug RPMs)
    URL:          /content/beta/rhel/server/6/$releasever/$basearch/rhn-tools/debug
    Content Type: yum
 47)Repo Name:    Red Hat Enterprise Linux 7 Server - Supplementary (Debug RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/supplementary/debug
    Content Type: yum
 48)Repo Name:    RHN Tools for Red Hat Enterprise Linux 6 Server (Source RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/rhn-tools/source/SRPMS
    Content Type: yum
 49)Repo Name:    Red Hat Enterprise Linux 7 Server - RH Common (Source RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/rh-common/source/SRPMS
    Content Type: yum
 50)Repo Name:    Red Hat Enterprise Linux 7 Server - RH Common (RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/rh-common/os
    Content Type: yum
 51)Repo Name:    Red Hat Enterprise Linux 7 Server - RH Common (Debug RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/rh-common/debug
    Content Type: yum
 52)Repo Name:    Red Hat Enterprise Linux 7 Server - Optional Fastrack (Source RPMs)
    URL:          /content/fastrack/rhel/server/7/$basearch/optional/source/SRPMS
    Content Type: yum
 53)Repo Name:    RHN Tools for Red Hat Enterprise Linux 6 Server (Debug RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/rhn-tools/debug
    Content Type: yum
 54)Repo Name:    Red Hat Satellite Tools 6.3 - Puppet 4 (for RHEL 6 Server) (Debug RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/sat-tools/6.3-puppet4/debug
    Content Type: yum
 55)Repo Name:    Red Hat Enterprise Linux 7 Server - Optional Fastrack (RPMs)
    URL:          /content/fastrack/rhel/server/7/$basearch/optional/os
    Content Type: yum
 56)Repo Name:    RHN Tools for Red Hat Enterprise Linux 5 Server Beta (Source RPMs)
    URL:          /content/beta/rhel/server/5/$releasever/$basearch/rhn-tools/source/SRPMS
    Content Type: yum
 57)Repo Name:    Red Hat Enterprise Linux 7 Server - Optional Fastrack (Debug RPMs)
    URL:          /content/fastrack/rhel/server/7/$basearch/optional/debug
    Content Type: yum
 58)Repo Name:    RHN Tools for Red Hat Enterprise Linux 5 Server Beta (RPMs)
    URL:          /content/beta/rhel/server/5/$releasever/$basearch/rhn-tools/os
    Content Type: yum
 59)Repo Name:    Red Hat Enterprise Linux 7 Server - Optional Beta (Source RPMs)
    URL:          /content/beta/rhel/server/7/$basearch/optional/source/SRPMS
    Content Type: yum
 60)Repo Name:    RHN Tools for Red Hat Enterprise Linux 5 Server Beta (Debug RPMs)
    URL:          /content/beta/rhel/server/5/$releasever/$basearch/rhn-tools/debug
    Content Type: yum
 61)Repo Name:    Red Hat Enterprise Linux 7 Server - Optional Beta (RPMs)
    URL:          /content/beta/rhel/server/7/$basearch/optional/os
    Content Type: yum
 62)Repo Name:    Red Hat Enterprise Linux 7 Server - Optional Beta (Debug RPMs)
    URL:          /content/beta/rhel/server/7/$basearch/optional/debug
    Content Type: yum
 63)Repo Name:    RHN Tools for Red Hat Enterprise Linux 5 Server (Source RPMs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/rhn-tools/source/SRPMS
    Content Type: yum
 64)Repo Name:    RHN Tools for Red Hat Enterprise Linux 5 Server (RPMs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/rhn-tools/os
    Content Type: yum
 65)Repo Name:    Red Hat Enterprise Linux 7 Server - Optional (Source RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/optional/source/SRPMS
    Content Type: yum
 66)Repo Name:    RHN Tools for Red Hat Enterprise Linux 6 Server (RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/rhn-tools/os
    Content Type: yum
 67)Repo Name:    Red Hat OpenStack Tools 7.0 for Red Hat Enterprise Linux 7 Server (Debug RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/openstack-tools/7.0/debug
    Content Type: yum
 68)Repo Name:    Red Hat OpenStack Tools 7.0 for Red Hat Enterprise Linux 7 Server (Source RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/openstack-tools/7.0/source/SRPMS
    Content Type: yum
 69)Repo Name:    RHN Tools for Red Hat Enterprise Linux 7 Server Beta (Source RPMs)
    URL:          /content/beta/rhel/server/7/$basearch/rhn-tools/source/SRPMS
    Content Type: yum
 70)Repo Name:    Red Hat Enterprise Linux 7 Server Beta (Source ISOs)
    URL:          /content/beta/rhel/server/7/$basearch/source/iso
    Content Type: file
 71)Repo Name:    RHN Tools for Red Hat Enterprise Linux 7 Server Beta (RPMs)
    URL:          /content/beta/rhel/server/7/$basearch/rhn-tools/os
    Content Type: yum
 72)Repo Name:    Red Hat Enterprise Linux 7 Server Beta (RPMs)
    URL:          /content/beta/rhel/server/7/$basearch/os
    Content Type: yum
 73)Repo Name:    Red Hat Enterprise Linux 7 Server Beta (ISOs)
    URL:          /content/beta/rhel/server/7/$basearch/iso
    Content Type: file
 74)Repo Name:    Red Hat Enterprise Linux 6 Server - Fastrack (Source RPMs)
    URL:          /content/fastrack/rhel/server/6/$basearch/source/SRPMS
    Content Type: yum
 75)Repo Name:    Red Hat Enterprise Linux 7 Server Beta (Debug RPMs)
    URL:          /content/beta/rhel/server/7/$basearch/debug
    Content Type: yum
 76)Repo Name:    Red Hat Enterprise Linux 7 Server - Supplementary Beta (Source RPMs)
    URL:          /content/beta/rhel/server/7/$basearch/supplementary/source/SRPMS
    Content Type: yum
 77)Repo Name:    Red Hat Enterprise Linux 7 Server - Supplementary Beta (RPMs)
    URL:          /content/beta/rhel/server/7/$basearch/supplementary/os
    Content Type: yum
 78)Repo Name:    RHN Tools for Red Hat Enterprise Linux 7 Server Beta (Debug RPMs)
    URL:          /content/beta/rhel/server/7/$basearch/rhn-tools/debug
    Content Type: yum
 79)Repo Name:    RHN Tools for Red Hat Enterprise Linux 7 Server (Source RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/rhn-tools/source/SRPMS
    Content Type: yum
 80)Repo Name:    Red Hat Enterprise Linux 6 Server - Fastrack (Debug RPMs)
    URL:          /content/fastrack/rhel/server/6/$basearch/debug
    Content Type: yum
 81)Repo Name:    RHN Tools for Red Hat Enterprise Linux 7 Server (RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/rhn-tools/os
    Content Type: yum
 82)Repo Name:    Red Hat Enterprise Linux 7 Server - Supplementary Beta (ISOs)
    URL:          /content/beta/rhel/server/7/$basearch/supplementary/iso
    Content Type: file
 83)Repo Name:    Red Hat Enterprise Linux 7 Server - Supplementary Beta (Debug RPMs)
    URL:          /content/beta/rhel/server/7/$basearch/supplementary/debug
    Content Type: yum
 84)Repo Name:    RHN Tools for Red Hat Enterprise Linux 7 Server (Debug RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/rhn-tools/debug
    Content Type: yum
 85)Repo Name:    Red Hat Enterprise Linux 7 Server - Supplementary (Source RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/supplementary/source/SRPMS
    Content Type: yum
 86)Repo Name:    RHN Tools for Red Hat Enterprise Linux 6 Server Beta (Source RPMs)
    URL:          /content/beta/rhel/server/6/$releasever/$basearch/rhn-tools/source/SRPMS
    Content Type: yum
 87)Repo Name:    RHN Tools for Red Hat Enterprise Linux 6 Server Beta (RPMs)
    URL:          /content/beta/rhel/server/6/$releasever/$basearch/rhn-tools/os
    Content Type: yum
 88)Repo Name:    Red Hat Enterprise Linux 7 Server - Supplementary (RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/supplementary/os
    Content Type: yum
 89)Repo Name:    Red Hat Enterprise Linux 6 Server - Optional Fastrack (RPMs)
    URL:          /content/fastrack/rhel/server/6/$basearch/optional/os
    Content Type: yum
 90)Repo Name:    Red Hat Enterprise Linux 7 Server - Supplementary (ISOs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/supplementary/iso
    Content Type: file
 91)Repo Name:    Red Hat OpenStack Tools 7.0 for Red Hat Enterprise Linux 7 Server (RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/openstack-tools/7.0/os
    Content Type: yum
 92)Repo Name:    Red Hat Satellite Tools 6.2 (for RHEL 6 Server) (Debug RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/sat-tools/6.2/debug
    Content Type: yum
 93)Repo Name:    Red Hat Satellite Tools 6.2 (for RHEL 6 Server) (RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/sat-tools/6.2/os
    Content Type: yum
 94)Repo Name:    Red Hat Satellite Tools 6.3 - Puppet 4 (for RHEL 7 Server) (RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.3-puppet4/os
    Content Type: yum
 95)Repo Name:    Red Hat Satellite Tools 6.3 - Puppet 4 (for RHEL 7 Server) (Debug RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.3-puppet4/debug
    Content Type: yum
 96)Repo Name:    Red Hat Satellite Tools 6.2 (for RHEL 6 Server) (Source RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/sat-tools/6.2/source/SRPMS
    Content Type: yum
 97)Repo Name:    Red Hat Satellite Tools 6.3 - Puppet 4 (for RHEL 7 Server) (Source RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.3-puppet4/source/SRPMS
    Content Type: yum
 98)Repo Name:    Red Hat Enterprise Linux 4 AS (ISOs)
    URL:          /content/dist/rhel/as/4/4AS/$basearch/iso
    Content Type: file
 99)Repo Name:    Red Hat Enterprise Linux 4 AS (Debug RPMs)
    URL:          /content/dist/rhel/as/4/4AS/$basearch/debug
    Content Type: yum
 100)Repo Name:    Red Hat Enterprise Linux 4 AS Beta (Source ISOs)
    URL:          /content/beta/rhel/as/4/4AS/$basearch/source/iso
    Content Type: file
 101)Repo Name:    Red Hat Enterprise Linux 4 AS Beta (Source RPMs)
    URL:          /content/beta/rhel/as/4/4AS/$basearch/source/SRPMS
    Content Type: yum
 102)Repo Name:    Red Hat Enterprise Linux 4 AS Beta (RPMs)
    URL:          /content/beta/rhel/as/4/4AS/$basearch/os
    Content Type: yum
 103)Repo Name:    Red Hat Enterprise Linux 4 AS Beta (ISOs)
    URL:          /content/beta/rhel/as/4/4AS/$basearch/iso
    Content Type: file
 104)Repo Name:    Red Hat Satellite Tools 6.6 (for RHEL 6 Server) (RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/sat-tools/6.6/os
    Content Type: yum
 105)Repo Name:    Red Hat Satellite Tools 6.6 (for RHEL 6 Server) (Source RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/sat-tools/6.6/source/SRPMS
    Content Type: yum
 106)Repo Name:    Red Hat Enterprise Linux 4 AS Beta (Debug RPMs)
    URL:          /content/beta/rhel/as/4/4AS/$basearch/debug
    Content Type: yum
 107)Repo Name:    Red Hat CloudForms Tools for RHEL 6 (Debug RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/cf-tools/1/debug
    Content Type: yum
 108)Repo Name:    Red Hat CloudForms Tools for RHEL 6 (RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/cf-tools/1/os
    Content Type: yum
 109)Repo Name:    Red Hat Enterprise Linux 5 Server Beta (Debug RPMs)
    URL:          /content/beta/rhel/server/5/$releasever/$basearch/debug
    Content Type: yum
 110)Repo Name:    Red Hat Enterprise Linux 7 Server Beta (Source RPMs)
    URL:          /content/beta/rhel/server/7/$basearch/source/SRPMS
    Content Type: yum
 111)Repo Name:    Red Hat Enterprise Linux 5 Server Beta (ISOs)
    URL:          /content/beta/rhel/server/5/$releasever/$basearch/iso
    Content Type: file
 112)Repo Name:    Red Hat Satellite Maintenance 6 (for RHEL 7 Server) (RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-maintenance/6/os
    Content Type: yum
 113)Repo Name:    Red Hat Satellite Maintenance 6 (for RHEL 7 Server) (Debug RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-maintenance/6/debug
    Content Type: yum
 114)Repo Name:    Red Hat Satellite Maintenance 6 (for RHEL 7 Server) (Source RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-maintenance/6/source/SRPMS
    Content Type: yum
 115)Repo Name:    Red Hat Enterprise Linux 5 Server Beta (RPMs)
    URL:          /content/beta/rhel/server/5/$releasever/$basearch/os
    Content Type: yum
 116)Repo Name:    Red Hat Satellite Tools 6.6 (for RHEL 6 Server) (Debug RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/sat-tools/6.6/debug
    Content Type: yum
 117)Repo Name:    Red Hat Storage Native Client for RHEL 7 (RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/rhs-client/os
    Content Type: yum
 118)Repo Name:    Red Hat Storage Native Client for RHEL 7 (Debug RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/rhs-client/debug
    Content Type: yum
 119)Repo Name:    Red Hat Storage Native Client for RHEL 7 (Source RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/rhs-client/source/SRPMS
    Content Type: yum
 120)Repo Name:    Red Hat Enterprise Linux 4 ES (RPMs)
    URL:          /content/dist/rhel/es/4/4ES/$basearch/os
    Content Type: yum
 121)Repo Name:    Red Hat Virt V2V Tool for RHEL 6 (RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/v2vwin/os
    Content Type: yum
 122)Repo Name:    Red Hat Storage Native Client for RHEL 5 (Debug RPMs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/rhs-client/debug
    Content Type: yum
 123)Repo Name:    Red Hat Enterprise Linux 4 ES (ISOs)
    URL:          /content/dist/rhel/es/4/4ES/$basearch/iso
    Content Type: file
 124)Repo Name:    Red Hat Enterprise Linux 4 ES (Debug RPMs)
    URL:          /content/dist/rhel/es/4/4ES/$basearch/debug
    Content Type: yum
 125)Repo Name:    Red Hat Storage Native Client for RHEL 5 (Source RPMs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/rhs-client/source/SRPMS
    Content Type: yum
 126)Repo Name:    Red Hat Enterprise Linux 4 ES Beta (Source ISOs)
    URL:          /content/beta/rhel/es/4/4ES/$basearch/source/iso
    Content Type: file
 127)Repo Name:    Red Hat Storage Native Client for RHEL 5 (RPMs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/rhs-client/os
    Content Type: yum
 128)Repo Name:    Red Hat Storage Native Client for RHEL 6 (Source RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/rhs-client/source/SRPMS
    Content Type: yum
 129)Repo Name:    Red Hat Storage Native Client for RHEL 6 (Debug RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/rhs-client/debug
    Content Type: yum
 130)Repo Name:    Red Hat Storage Native Client for RHEL 6 (RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/rhs-client/os
    Content Type: yum
 131)Repo Name:    Red Hat Enterprise Linux 4 ES Beta (Source RPMs)
    URL:          /content/beta/rhel/es/4/4ES/$basearch/source/SRPMS
    Content Type: yum
 132)Repo Name:    Red Hat Enterprise Linux 4 ES Beta (RPMs)
    URL:          /content/beta/rhel/es/4/4ES/$basearch/os
    Content Type: yum
 133)Repo Name:    Red Hat Enterprise Linux 5 Server Beta (Source RPMs)
    URL:          /content/beta/rhel/server/5/$releasever/$basearch/source/SRPMS
    Content Type: yum
 134)Repo Name:    Red Hat Enterprise Linux 5 Server Beta (Source ISOs)
    URL:          /content/beta/rhel/server/5/$releasever/$basearch/source/iso
    Content Type: file
 135)Repo Name:    Red Hat Enterprise Linux 4 ES Beta (ISOs)
    URL:          /content/beta/rhel/es/4/4ES/$basearch/iso
    Content Type: file
 136)Repo Name:    Red Hat Enterprise Linux 5 Server (Debug RPMs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/debug
    Content Type: yum
 137)Repo Name:    Red Hat Enterprise Linux 4 ES Beta (Debug RPMs)
    URL:          /content/beta/rhel/es/4/4ES/$basearch/debug
    Content Type: yum
 138)Repo Name:    Red Hat Enterprise Linux 5 Server (ISOs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/iso
    Content Type: file
 139)Repo Name:    Red Hat Enterprise Linux 4 AS (Source ISOs)
    URL:          /content/dist/rhel/as/4/4AS/$basearch/source/iso
    Content Type: file
 140)Repo Name:    Red Hat Enterprise Linux 4 AS (Source RPMs)
    URL:          /content/dist/rhel/as/4/4AS/$basearch/source/SRPMS
    Content Type: yum
 141)Repo Name:    Red Hat Enterprise Linux 4 AS (RPMs)
    URL:          /content/dist/rhel/as/4/4AS/$basearch/os
    Content Type: yum
 142)Repo Name:    Red Hat Enterprise Linux 5 Server (RPMs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/os
    Content Type: yum
 143)Repo Name:    Red Hat Satellite Tools 6 Beta - Puppet Upgrade (for RHEL 7 Server) (Debug RPMs)
    URL:          /content/beta/rhel/server/7/$basearch/sat-tools/6-puppet-upgrade/debug
    Content Type: yum
 144)Repo Name:    Red Hat Enterprise Linux 5 Server (Source RPMs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/source/SRPMS
    Content Type: yum
 145)Repo Name:    Red Hat Enterprise Linux 5 Server (Source ISOs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/source/iso
    Content Type: file
 146)Repo Name:    Red Hat Satellite Tools 6 Beta - Puppet Upgrade (for RHEL 7 Server) (RPMs)
    URL:          /content/beta/rhel/server/7/$basearch/sat-tools/6-puppet-upgrade/os
    Content Type: yum
 147)Repo Name:    Red Hat Satellite Tools 6 Beta - Puppet Upgrade (for RHEL 7 Server) (Source RPMs)
    URL:          /content/beta/rhel/server/7/$basearch/sat-tools/6-puppet-upgrade/source/SRPMS
    Content Type: yum
 148)Repo Name:    Red Hat Enterprise Linux 5 Server - Fastrack (Source RPMs)
    URL:          /content/fastrack/rhel/server/5/$basearch/source/SRPMS
    Content Type: yum
 149)Repo Name:    Red Hat Enterprise Linux 6 Server - RH Common (Source RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/rh-common/source/SRPMS
    Content Type: yum
 150)Repo Name:    Red Hat Enterprise Linux 6 Server - RH Common (RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/rh-common/os
    Content Type: yum
 151)Repo Name:    Red Hat Enterprise Linux 5 Server - Fastrack (Debug RPMs)
    URL:          /content/fastrack/rhel/server/5/$basearch/debug
    Content Type: yum
 152)Repo Name:    Red Hat Enterprise Linux 6 Server - RH Common (Debug RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/rh-common/debug
    Content Type: yum
 153)Repo Name:    Red Hat Enterprise Linux 5 Server - Supplementary Beta (Debug RPMs)
    URL:          /content/beta/rhel/server/5/$releasever/$basearch/supplementary/debug
    Content Type: yum
 154)Repo Name:    Red Hat Satellite Tools 6.4 (for RHEL 6 Server) (Source RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/sat-tools/6.4/source/SRPMS
    Content Type: yum
 155)Repo Name:    Red Hat Enterprise Linux 5 Server - Supplementary Beta (ISOs)
    URL:          /content/beta/rhel/server/5/$releasever/$basearch/supplementary/iso
    Content Type: file
 156)Repo Name:    Red Hat Enterprise Linux 5 Server - Supplementary Beta (Source RPMs)
    URL:          /content/beta/rhel/server/5/$releasever/$basearch/supplementary/source/SRPMS
    Content Type: yum
 157)Repo Name:    Red Hat Enterprise Linux 4 ES (Source ISOs)
    URL:          /content/dist/rhel/es/4/4ES/$basearch/source/iso
    Content Type: file
 158)Repo Name:    Red Hat Enterprise Linux 5 Server - Supplementary (Debug RPMs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/supplementary/debug
    Content Type: yum
 159)Repo Name:    Red Hat Virt V2V Tool for RHEL 6 (Source RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/v2vwin/source/SRPMS
    Content Type: yum
 160)Repo Name:    Red Hat Enterprise Linux 4 ES (Source RPMs)
    URL:          /content/dist/rhel/es/4/4ES/$basearch/source/SRPMS
    Content Type: yum
 161)Repo Name:    Red Hat Virt V2V Tool for RHEL 6 (Debug RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/v2vwin/debug
    Content Type: yum
 162)Repo Name:    Red Hat Enterprise Linux 5 Server - Supplementary (ISOs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/supplementary/iso
    Content Type: file
 163)Repo Name:    Red Hat Enterprise Linux 5 Server - Supplementary (Source RPMs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/supplementary/source/SRPMS
    Content Type: yum
 164)Repo Name:    Red Hat Satellite Tools 6.4 (for RHEL 6 Server) (RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/sat-tools/6.4/os
    Content Type: yum
 165)Repo Name:    Red Hat Satellite Tools 6.4 (for RHEL 6 Server) (Debug RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/sat-tools/6.4/debug
    Content Type: yum
 166)Repo Name:    Red Hat Satellite Tools 6.1 (for RHEL 5 Server) (Source RPMs)
    URL:          /content/dist/rhel/server/5/5Server/$basearch/sat-tools/6.1/source/SRPMS
    Content Type: yum
 167)Repo Name:    Red Hat Satellite Tools 6 Beta (for RHEL 5 Server) (Debug RPMs)
    URL:          /content/beta/rhel/server/5/5Server/$basearch/sat-tools/6/debug
    Content Type: yum
 168)Repo Name:    Red Hat Ceph Storage Tools 1.3 for Red Hat Enterprise Linux 7 Server (RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/ceph-tools/1.3/os
    Content Type: yum
 169)Repo Name:    Red Hat Satellite Tools 6.6 (for RHEL 7 Server) (Debug RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.6/debug
    Content Type: yum
 170)Repo Name:    Red Hat Ceph Storage Tools 1.3 for Red Hat Enterprise Linux 7 Server (Debug RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/ceph-tools/1.3/debug
    Content Type: yum
 171)Repo Name:    Red Hat Satellite Tools 6.6 (for RHEL 7 Server) (RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.6/os
    Content Type: yum
 172)Repo Name:    Red Hat Ceph Storage Tools 1.3 for Red Hat Enterprise Linux 7 Server (Source RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/ceph-tools/1.3/source/SRPMS
    Content Type: yum
 173)Repo Name:    Red Hat Satellite Tools 6.8 (for RHEL 7 Server) (Debug RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.8/debug
    Content Type: yum
 174)Repo Name:    Red Hat Satellite Tools 6.1 (for RHEL 5 Server) (Debug RPMs)
    URL:          /content/dist/rhel/server/5/5Server/$basearch/sat-tools/6.1/debug
    Content Type: yum
 175)Repo Name:    Red Hat Satellite Tools 6.6 (for RHEL 7 Server) (Source RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.6/source/SRPMS
    Content Type: yum
 176)Repo Name:    Red Hat Satellite Tools 6.1 (for RHEL 5 Server) (RPMs)
    URL:          /content/dist/rhel/server/5/5Server/$basearch/sat-tools/6.1/os
    Content Type: yum
 177)Repo Name:    Red Hat Satellite Tools 6.8 (for RHEL 7 Server) (RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.8/os
    Content Type: yum
 178)Repo Name:    Red Hat Enterprise Linux 5 Server - Optional Productivity Applications (RPMs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/productivity/os
    Content Type: yum
 179)Repo Name:    Red Hat Ceph Storage Tools 3 for Red Hat Enterprise Linux 7 Server (RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/rhceph-tools/3/os
    Content Type: yum
 180)Repo Name:    Red Hat Satellite Tools 6.3 (for RHEL 6 Server) (Debug RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/sat-tools/6.3/debug
    Content Type: yum
 181)Repo Name:    Red Hat Ceph Storage Tools 3 for Red Hat Enterprise Linux 7 Server (Debug RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/rhceph-tools/3/debug
    Content Type: yum
 182)Repo Name:    Red Hat Ceph Storage Tools 3 for Red Hat Enterprise Linux 7 Server (Source RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/rhceph-tools/3/source/SRPMS
    Content Type: yum
 183)Repo Name:    Red Hat Satellite Tools 6.3 (for RHEL 6 Server) (RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/sat-tools/6.3/os
    Content Type: yum
 184)Repo Name:    Red Hat Enterprise Linux 6 Server - Extras (Debug RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/extras/debug
    Content Type: yum
 185)Repo Name:    Red Hat Enterprise Linux 5 Server - Optional Productivity Applications (Source RPMs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/productivity/source/SRPMS
    Content Type: yum
 186)Repo Name:    Red Hat Enterprise Linux 5 Server - Optional Productivity Applications (Debug RPMs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/productivity/debug
    Content Type: yum
 187)Repo Name:    Red Hat Satellite Tools 6 Beta (for RHEL 5 Server) (RPMs)
    URL:          /content/beta/rhel/server/5/5Server/$basearch/sat-tools/6/os
    Content Type: yum
 188)Repo Name:    Red Hat Satellite Tools 6 Beta (for RHEL 5 Server) (Source RPMs)
    URL:          /content/beta/rhel/server/5/5Server/$basearch/sat-tools/6/source/SRPMS
    Content Type: yum
 189)Repo Name:    Red Hat Satellite Tools 6.4 (for RHEL 7 Server) (Debug RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.4/debug
    Content Type: yum
 190)Repo Name:    Red Hat Satellite Tools 6 Beta (for RHEL 6 Server) (RPMs)
    URL:          /content/beta/rhel/server/6/6Server/$basearch/sat-tools/6/os
    Content Type: yum
 191)Repo Name:    Red Hat Enterprise Linux 4 ES for Itanium (RPMs)
    URL:          /content/dist/rhel/itanium/4/4ES/$basearch/os
    Content Type: yum
 192)Repo Name:    Red Hat Satellite Tools 6.4 (for RHEL 7 Server) (Source RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.4/source/SRPMS
    Content Type: yum
 193)Repo Name:    Red Hat Satellite Tools 6 Beta (for RHEL 6 Server) (Debug RPMs)
    URL:          /content/beta/rhel/server/6/6Server/$basearch/sat-tools/6/debug
    Content Type: yum
 194)Repo Name:    Red Hat Satellite Tools 6.4 (for RHEL 7 Server) (RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.4/os
    Content Type: yum
 195)Repo Name:    Red Hat Satellite Tools 6 Beta (for RHEL 6 Server) (Source RPMs)
    URL:          /content/beta/rhel/server/6/6Server/$basearch/sat-tools/6/source/SRPMS
    Content Type: yum
 196)Repo Name:    Red Hat Enterprise Linux 4 ES for Itanium (Debug RPMs)
    URL:          /content/dist/rhel/itanium/4/4ES/$basearch/debug
    Content Type: yum
 197)Repo Name:    Red Hat Enterprise Linux 5 Server - Retired Extended Life Cycle Support (Debug RPMs)
    URL:          /content/retired-els/rhel/server/5/5Server/$basearch/debug
    Content Type: yum
 198)Repo Name:    Red Hat Enterprise Linux 5 Server - Retired Extended Life Cycle Support (RPMs)
    URL:          /content/retired-els/rhel/server/5/5Server/$basearch/os
    Content Type: yum
 199)Repo Name:    Red Hat Enterprise Linux 4 ES for Itanium (Source RPMSs)
    URL:          /content/dist/rhel/itanium/4/4ES/$basearch/source/SRPMS
    Content Type: yum
 200)Repo Name:    Red Hat Enterprise Linux 7 Server - Extras (Source RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/extras/source/SRPMS
    Content Type: yum
 201)Repo Name:    Red Hat Enterprise Linux 7 Server - Extras (RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/extras/os
    Content Type: yum
 202)Repo Name:    Red Hat Satellite Tools 6.8 (for RHEL 6 Server) (Source RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/sat-tools/6.8/source/SRPMS
    Content Type: yum
 203)Repo Name:    Red Hat Enterprise Linux 7 Server - Extras (Debug RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/extras/debug
    Content Type: yum
 204)Repo Name:    Red Hat Enterprise Linux 6 Server - Extras (Source RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/extras/source/SRPMS
    Content Type: yum
 205)Repo Name:    Red Hat Enterprise Linux 6 Server - Extras (RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/extras/os
    Content Type: yum
 206)Repo Name:    Red Hat Enterprise Linux 5 Server - Retired Extended Life Cycle Support (Source RPMs)
    URL:          /content/retired-els/rhel/server/5/5Server/$basearch/source/SRPMS
    Content Type: yum
 207)Repo Name:    Red Hat Satellite Tools 6.3 (for RHEL 6 Server) (Source RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/sat-tools/6.3/source/SRPMS
    Content Type: yum
 208)Repo Name:    Red Hat Enterprise Linux 5 Server - Retired Extended Life Cycle Support (ISOs)
    URL:          /content/retired-els/rhel/server/5/5Server/$basearch/iso
    Content Type: file
 209)Repo Name:    Red Hat Satellite Tools 6.8 (for RHEL 6 Server) (RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/sat-tools/6.8/os
    Content Type: yum
 210)Repo Name:    Red Hat Satellite Tools 6.8 (for RHEL 6 Server) (Debug RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/sat-tools/6.8/debug
    Content Type: yum
 211)Repo Name:    Red Hat Insights 3 (for RHEL 6 Server) (RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/insights/3/os
    Content Type: yum
 212)Repo Name:    Red Hat Enterprise Linux 3 ES for Itanium - Extras (Source RPMSs)
    URL:          /content/dist/rhel/itanium/3/3ES/$basearch/extras/source/SRPMS
    Content Type: yum
 213)Repo Name:    Red Hat Enterprise Linux 3 ES for Itanium - Extras (RPMs)
    URL:          /content/dist/rhel/itanium/3/3ES/$basearch/extras/os
    Content Type: yum
 214)Repo Name:    Red Hat Enterprise Linux 6 Server - Supplementary Beta (Debug RPMs)
    URL:          /content/beta/rhel/server/6/$releasever/$basearch/supplementary/debug
    Content Type: yum
 215)Repo Name:    Red Hat Enterprise Linux 6 Server - Supplementary Beta (ISOs)
    URL:          /content/beta/rhel/server/6/$releasever/$basearch/supplementary/iso
    Content Type: file
 216)Repo Name:    Red Hat Enterprise Linux 6 Server - Supplementary Beta (Source RPMs)
    URL:          /content/beta/rhel/server/6/$releasever/$basearch/supplementary/source/SRPMS
    Content Type: yum
 217)Repo Name:    Red Hat Enterprise Linux 4 ES for Itanium - Extras (Source RPMSs)
    URL:          /content/dist/rhel/itanium/4/4ES/$basearch/extras/source/SRPMS
    Content Type: yum
 218)Repo Name:    Red Hat Insights 3 (for RHEL 7 Server) (RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/insights/3/os
    Content Type: yum
 219)Repo Name:    Red Hat Enterprise Linux 6 Server - Supplementary (Debug RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/supplementary/debug
    Content Type: yum
 220)Repo Name:    Red Hat Enterprise Linux 4 ES for Itanium - Extras (RPMs)
    URL:          /content/dist/rhel/itanium/4/4ES/$basearch/extras/os
    Content Type: yum
 221)Repo Name:    Red Hat Insights 3 (for RHEL 7 Server) (Debug RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/insights/3/debug
    Content Type: yum
 222)Repo Name:    Red Hat Enterprise Linux 4 ES for Itanium - Extras (Debug RPMs)
    URL:          /content/dist/rhel/itanium/4/4ES/$basearch/extras/debug
    Content Type: yum
 223)Repo Name:    Red Hat Insights 3 (for RHEL 7 Server) (Source RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/insights/3/source/SRPMS
    Content Type: yum
 224)Repo Name:    Red Hat Satellite Tools 6 Beta (for RHEL 7 Server) (Debug RPMs)
    URL:          /content/beta/rhel/server/7/$basearch/sat-tools/6/debug
    Content Type: yum
 225)Repo Name:    Red Hat Satellite Tools 6 Beta (for RHEL 7 Server) (Source RPMs)
    URL:          /content/beta/rhel/server/7/$basearch/sat-tools/6/source/SRPMS
    Content Type: yum
 226)Repo Name:    Red Hat OpenStack Platform 13 Tools for RHEL 7 Server (RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/openstack-tools/13/os
    Content Type: yum
 227)Repo Name:    Red Hat OpenStack Platform 13 Tools for RHEL 7 Server (Source RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/openstack-tools/13/source/SRPMS
    Content Type: yum
 228)Repo Name:    Red Hat Enterprise Linux 3 ES for Itanium (Source RPMSs)
    URL:          /content/dist/rhel/itanium/3/3ES/$basearch/source/SRPMS
    Content Type: yum
 229)Repo Name:    Red Hat Satellite Tools 6.5 (for RHEL 7 Server) (Debug RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.5/debug
    Content Type: yum
 230)Repo Name:    Red Hat Enterprise Linux 3 ES for Itanium (RPMs)
    URL:          /content/dist/rhel/itanium/3/3ES/$basearch/os
    Content Type: yum
 231)Repo Name:    Red Hat OpenStack Platform 13 Tools for RHEL 7 Server (Debug RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/openstack-tools/13/debug
    Content Type: yum
 232)Repo Name:    Red Hat Enterprise Linux 3 ES for Itanium (Debug RPMs)
    URL:          /content/dist/rhel/itanium/3/3ES/$basearch/debug
    Content Type: yum
 233)Repo Name:    Red Hat Enterprise Linux 6 Server - Supplementary (ISOs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/supplementary/iso
    Content Type: file
 234)Repo Name:    Red Hat Satellite Tools 6 Beta (for RHEL 7 Server) (RPMs)
    URL:          /content/beta/rhel/server/7/$basearch/sat-tools/6/os
    Content Type: yum
 235)Repo Name:    Red Hat Enterprise Linux 6 Server - Supplementary (Source RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/supplementary/source/SRPMS
    Content Type: yum
 236)Repo Name:    Red Hat Insights 3 (for RHEL 6 Server) (Debug RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/insights/3/debug
    Content Type: yum
 237)Repo Name:    Red Hat Enterprise Linux 3 ES for Itanium Developer Suite (RPMs)
    URL:          /content/dist/rhel/itanium/3/3ES/$basearch/devsuite/os
    Content Type: yum
 238)Repo Name:    Red Hat Enterprise Linux 3 ES for Itanium - Extras (Debug RPMs)
    URL:          /content/dist/rhel/itanium/3/3ES/$basearch/extras/debug
    Content Type: yum
 239)Repo Name:    Red Hat Insights 3 (for RHEL 6 Server) (Source RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/insights/3/source/SRPMS
    Content Type: yum
 240)Repo Name:    Red Hat Enterprise Linux 3 ES for Itanium Developer Suite (Debug RPMs)
    URL:          /content/dist/rhel/itanium/3/3ES/$basearch/devsuite/debug
    Content Type: yum
 241)Repo Name:    Red Hat Enterprise Linux 3 ES for Itanium Developer Suite (Source RPMSs)
    URL:          /content/dist/rhel/itanium/3/3ES/$basearch/devsuite/source/SRPMS
    Content Type: yum
 242)Repo Name:    Red Hat Satellite Tools 6.3 (for RHEL 7 Server) (Debug RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.3/debug
    Content Type: yum
 243)Repo Name:    Red Hat Satellite Maintenance 6 Beta (for RHEL 7 Server) (Source RPMs)
    URL:          /content/beta/rhel/server/7/$basearch/sat-maintenance/6/source/SRPMS
    Content Type: yum
 244)Repo Name:    Red Hat Satellite Tools 6.3 (for RHEL 7 Server) (RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.3/os
    Content Type: yum
 245)Repo Name:    Red Hat Virtualization 4 Agents for RHEL 5 Server (RPMs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/rhv-agent/4/os
    Content Type: yum
 246)Repo Name:    Red Hat Virtualization 4 Agents for RHEL 5 Server (Debug RPMs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/rhv-agent/4/debug
    Content Type: yum
 247)Repo Name:    Red Hat Satellite Tools 6.3 (for RHEL 7 Server) (Source RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.3/source/SRPMS
    Content Type: yum
 248)Repo Name:    Red Hat Satellite Maintenance 6 Beta (for RHEL 7 Server) (Debug RPMs)
    URL:          /content/beta/rhel/server/7/$basearch/sat-maintenance/6/debug
    Content Type: yum
 249)Repo Name:    Red Hat Virtualization 4 Agents for RHEL 5 Server (Source RPMs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/rhv-agent/4/source/SRPMS
    Content Type: yum
 250)Repo Name:    Red Hat Ceph Storage Tools 4 for Red Hat Enterprise Linux 7 Server (RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/rhceph-tools/4/os
    Content Type: yum
 251)Repo Name:    Red Hat Ceph Storage Tools 4 for Red Hat Enterprise Linux 7 Server (Source RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/rhceph-tools/4/source/SRPMS
    Content Type: yum
 252)Repo Name:    Red Hat Enterprise Linux 3 AS - Extras (Source RPMSs)
    URL:          /content/dist/rhel/as/3/3AS/$basearch/extras/source/SRPMS
    Content Type: yum
 253)Repo Name:    Red Hat Enterprise Linux 3 AS - Extras (RPMs)
    URL:          /content/dist/rhel/as/3/3AS/$basearch/extras/os
    Content Type: yum
 254)Repo Name:    Red Hat Enterprise Linux 4 AS - Extras (Source RPMSs)
    URL:          /content/dist/rhel/as/4/4AS/$basearch/extras/source/SRPMS
    Content Type: yum
 255)Repo Name:    Red Hat Enterprise Linux 4 AS - Extras (RPMs)
    URL:          /content/dist/rhel/as/4/4AS/$basearch/extras/os
    Content Type: yum
 256)Repo Name:    Red Hat Virtualization 4 Agents for RHEL 6 Server (RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/rhv-agent/4/os
    Content Type: yum
 257)Repo Name:    Red Hat Satellite Tools 6.5 (for RHEL 7 Server) (RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.5/os
    Content Type: yum
 258)Repo Name:    Red Hat Satellite Tools 6.5 (for RHEL 7 Server) (Source RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.5/source/SRPMS
    Content Type: yum
 259)Repo Name:    Red Hat Enterprise Linux 4 AS - Extras (Debug RPMs)
    URL:          /content/dist/rhel/as/4/4AS/$basearch/extras/debug
    Content Type: yum
 260)Repo Name:    Red Hat Virtualization 4 Agents for RHEL 6 Server (Debug RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/rhv-agent/4/debug
    Content Type: yum
 261)Repo Name:    Red Hat Virtualization 4 Agents for RHEL 6 Server (Source RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/rhv-agent/4/source/SRPMS
    Content Type: yum
 262)Repo Name:    Red Hat Satellite Maintenance 6 Beta (for RHEL 7 Server) (RPMs)
    URL:          /content/beta/rhel/server/7/$basearch/sat-maintenance/6/os
    Content Type: yum
 263)Repo Name:    Red Hat Enterprise Linux 4 AS for Itanium - Extras (Source RPMSs)
    URL:          /content/dist/rhel/itanium/4/4AS/$basearch/extras/source/SRPMS
    Content Type: yum
 264)Repo Name:    Red Hat Enterprise Linux 4 AS for Itanium - Extras (Debug RPMs)
    URL:          /content/dist/rhel/itanium/4/4AS/$basearch/extras/debug
    Content Type: yum
 265)Repo Name:    Red Hat Enterprise Linux 3 AS (Source RPMSs)
    URL:          /content/dist/rhel/as/3/3AS/$basearch/source/SRPMS
    Content Type: yum
 266)Repo Name:    Red Hat Enterprise Linux 3 AS (RPMs)
    URL:          /content/dist/rhel/as/3/3AS/$basearch/os
    Content Type: yum
 267)Repo Name:    Red Hat Virtualization 4 Agents for RHEL 6 Server Beta (RPMs)
    URL:          /content/beta/rhel/server/6/$releasever/$basearch/rhv-agent/4/os
    Content Type: yum
 268)Repo Name:    Red Hat Enterprise Linux 3 AS (Debug RPMs)
    URL:          /content/dist/rhel/as/3/3AS/$basearch/debug
    Content Type: yum
 269)Repo Name:    Red Hat Virtualization 4 Agents for RHEL 6 Server Beta (Debug RPMs)
    URL:          /content/beta/rhel/server/6/$releasever/$basearch/rhv-agent/4/debug
    Content Type: yum
 270)Repo Name:    Red Hat Enterprise Linux 6 Server - RH Common Beta (Source RPMs)
    URL:          /content/beta/rhel/server/6/6Server/$basearch/rh-common/source/SRPMS
    Content Type: yum
 271)Repo Name:    Red Hat Enterprise Linux 6 Server - RH Common Beta (RPMs)
    URL:          /content/beta/rhel/server/6/6Server/$basearch/rh-common/os
    Content Type: yum
 272)Repo Name:    Red Hat Enterprise Linux 6 Server - RH Common Beta (Debug RPMs)
    URL:          /content/beta/rhel/server/6/6Server/$basearch/rh-common/debug
    Content Type: yum
 273)Repo Name:    Red Hat Enterprise Linux 3 AS Developer Suite (RPMs)
    URL:          /content/dist/rhel/as/3/3AS/$basearch/devsuite/os
    Content Type: yum
 274)Repo Name:    Red Hat Enterprise Linux 4 AS for Itanium (Source RPMSs)
    URL:          /content/dist/rhel/itanium/4/4AS/$basearch/source/SRPMS
    Content Type: yum
 275)Repo Name:    Red Hat Enterprise Linux 4 AS for Itanium (RPMs)
    URL:          /content/dist/rhel/itanium/4/4AS/$basearch/os
    Content Type: yum
 276)Repo Name:    Red Hat Enterprise Linux 3 AS - Extras (Debug RPMs)
    URL:          /content/dist/rhel/as/3/3AS/$basearch/extras/debug
    Content Type: yum
 277)Repo Name:    Red Hat Ceph Storage Tools 4 for Red Hat Enterprise Linux 7 Server (Debug RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/rhceph-tools/4/debug
    Content Type: yum
 278)Repo Name:    Red Hat Enterprise Linux 3 AS Developer Suite (Debug RPMs)
    URL:          /content/dist/rhel/as/3/3AS/$basearch/devsuite/debug
    Content Type: yum
 279)Repo Name:    Red Hat Enterprise Linux 4 AS for Itanium - Extras (RPMs)
    URL:          /content/dist/rhel/itanium/4/4AS/$basearch/extras/os
    Content Type: yum
 280)Repo Name:    Red Hat Enterprise Linux 3 AS Developer Suite (Source RPMSs)
    URL:          /content/dist/rhel/as/3/3AS/$basearch/devsuite/source/SRPMS
    Content Type: yum
 281)Repo Name:    Red Hat Enterprise Linux 4 AS for Itanium (Debug RPMs)
    URL:          /content/dist/rhel/itanium/4/4AS/$basearch/debug
    Content Type: yum
 282)Repo Name:    Red Hat Enterprise Linux 3 AS for Itanium Developer Suite (RPMs)
    URL:          /content/dist/rhel/itanium/3/3AS/$basearch/devsuite/os
    Content Type: yum
 283)Repo Name:    Red Hat Enterprise Linux 3 AS for Itanium - Extras (Debug RPMs)
    URL:          /content/dist/rhel/itanium/3/3AS/$basearch/extras/debug
    Content Type: yum
 284)Repo Name:    Red Hat Enterprise Linux 3 AS for Itanium Developer Suite (Debug RPMs)
    URL:          /content/dist/rhel/itanium/3/3AS/$basearch/devsuite/debug
    Content Type: yum
 285)Repo Name:    Red Hat Satellite Tools 6 Beta - Puppet Upgrade (for RHEL 6 Server) (RPMs)
    URL:          /content/beta/rhel/server/6/6Server/$basearch/sat-tools/6-puppet-upgrade/os
    Content Type: yum
 286)Repo Name:    Red Hat Virtualization 4 Agents for RHEL 5 Server Beta (RPMs)
    URL:          /content/beta/rhel/server/5/$releasever/$basearch/rhv-agent/4/os
    Content Type: yum
 287)Repo Name:    Red Hat Enterprise Linux 3 AS for Itanium Developer Suite (Source RPMSs)
    URL:          /content/dist/rhel/itanium/3/3AS/$basearch/devsuite/source/SRPMS
    Content Type: yum
 288)Repo Name:    Red Hat Satellite Tools 6 Beta - Puppet Upgrade (for RHEL 6 Server) (Source RPMs)
    URL:          /content/beta/rhel/server/6/6Server/$basearch/sat-tools/6-puppet-upgrade/source/SRPMS
    Content Type: yum
 289)Repo Name:    Red Hat Virtualization 4 Agents for RHEL 5 Server Beta (Debug RPMs)
    URL:          /content/beta/rhel/server/5/$releasever/$basearch/rhv-agent/4/debug
    Content Type: yum
 290)Repo Name:    Red Hat Virtualization 4 Agents for RHEL 5 Server Beta (Source RPMs)
    URL:          /content/beta/rhel/server/5/$releasever/$basearch/rhv-agent/4/source/SRPMS
    Content Type: yum
 291)Repo Name:    Red Hat Satellite Tools 6 Beta - Puppet Upgrade (for RHEL 6 Server) (Debug RPMs)
    URL:          /content/beta/rhel/server/6/6Server/$basearch/sat-tools/6-puppet-upgrade/debug
    Content Type: yum
 292)Repo Name:    Red Hat Enterprise Linux 3 AS for Itanium (RPMs)
    URL:          /content/dist/rhel/itanium/3/3AS/$basearch/os
    Content Type: yum
 293)Repo Name:    Red Hat Enterprise Linux 3 AS for Itanium - Extras (RPMs)
    URL:          /content/dist/rhel/itanium/3/3AS/$basearch/extras/os
    Content Type: yum
 294)Repo Name:    Red Hat Virtualization 4 Agents for RHEL 6 Server Beta (Source RPMs)
    URL:          /content/beta/rhel/server/6/$releasever/$basearch/rhv-agent/4/source/SRPMS
    Content Type: yum
 295)Repo Name:    Red Hat Enterprise Linux 3 AS for Itanium - Extras (Source RPMSs)
    URL:          /content/dist/rhel/itanium/3/3AS/$basearch/extras/source/SRPMS
    Content Type: yum
 296)Repo Name:    Red Hat Satellite Tools 6.1 (for RHEL 6 Server) (RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/sat-tools/6.1/os
    Content Type: yum
 297)Repo Name:    Red Hat Satellite Tools 6.1 (for RHEL 6 Server) (Debug RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/sat-tools/6.1/debug
    Content Type: yum
 298)Repo Name:    Red Hat Satellite Tools 6.1 (for RHEL 6 Server) (Source RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/sat-tools/6.1/source/SRPMS
    Content Type: yum
 299)Repo Name:    Red Hat Satellite Tools 6.1 (for RHEL 7 Server) (RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.1/os
    Content Type: yum
 300)Repo Name:    Red Hat Satellite Tools 6.1 (for RHEL 7 Server) (Debug RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.1/debug
    Content Type: yum
 301)Repo Name:    Red Hat Enterprise Linux 3 AS for Itanium (Debug RPMs)
    URL:          /content/dist/rhel/itanium/3/3AS/$basearch/debug
    Content Type: yum
 302)Repo Name:    Red Hat Enterprise Linux 3 AS for Itanium (Source RPMSs)
    URL:          /content/dist/rhel/itanium/3/3AS/$basearch/source/SRPMS
    Content Type: yum
 303)Repo Name:    Red Hat Satellite Tools 6.7 (for RHEL 6 Server) (RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/sat-tools/6.7/os
    Content Type: yum
 304)Repo Name:    Red Hat Satellite Tools 6.7 (for RHEL 6 Server) (Source RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/sat-tools/6.7/source/SRPMS
    Content Type: yum
 305)Repo Name:    Red Hat Satellite Tools 6.7 (for RHEL 6 Server) (Debug RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/sat-tools/6.7/debug
    Content Type: yum
 306)Repo Name:    Red Hat OpenStack Platform 9 Tools for RHEL 7 Server (RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/openstack-tools/9/os
    Content Type: yum
 307)Repo Name:    Red Hat Satellite Tools 6.1 (for RHEL 7 Server) (Source RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.1/source/SRPMS
    Content Type: yum
 308)Repo Name:    Red Hat OpenStack Platform 9 Tools for RHEL 7 Server (Source RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/openstack-tools/9/source/SRPMS
    Content Type: yum
 309)Repo Name:    Red Hat OpenStack Platform 9 Tools for RHEL 7 Server (Debug RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/openstack-tools/9/debug
    Content Type: yum
 310)Repo Name:    Red Hat Satellite Tools 6.7 (for RHEL 7 Server) (Source RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.7/source/SRPMS
    Content Type: yum
 311)Repo Name:    Red Hat OpenStack Platform 10 Tools for RHEL 7 Server (RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/openstack-tools/10/os
    Content Type: yum
 312)Repo Name:    Red Hat OpenStack Platform 10 Tools for RHEL 7 Server (Debug RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/openstack-tools/10/debug
    Content Type: yum
 313)Repo Name:    Red Hat Satellite Tools 6.7 (for RHEL 7 Server) (Debug RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.7/debug
    Content Type: yum
 314)Repo Name:    Red Hat OpenStack Platform 10 Tools for RHEL 7 Server (Source RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/openstack-tools/10/source/SRPMS
    Content Type: yum
 315)Repo Name:    Red Hat Satellite Tools 6.7 (for RHEL 7 Server) (RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.7/os
    Content Type: yum
 316)Repo Name:    Red Hat Satellite Maintenance 6.11 (for RHEL 7 Server) (Debug RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-maintenance/6.11/debug
    Content Type: yum
 317)Repo Name:    Red Hat Enterprise Linux 4 ES - Extras (Source RPMSs)
    URL:          /content/dist/rhel/es/4/4ES/$basearch/extras/source/SRPMS
    Content Type: yum
 318)Repo Name:    Red Hat Satellite Maintenance 6.11 (for RHEL 7 Server) (Source RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-maintenance/6.11/source/SRPMS
    Content Type: yum
 319)Repo Name:    Red Hat Enterprise Linux 4 ES - Extras (RPMs)
    URL:          /content/dist/rhel/es/4/4ES/$basearch/extras/os
    Content Type: yum
 320)Repo Name:    Red Hat Satellite Maintenance 6.11 (for RHEL 7 Server) (RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-maintenance/6.11/os
    Content Type: yum
 321)Repo Name:    Red Hat Enterprise Linux 4 ES - Extras (Debug RPMs)
    URL:          /content/dist/rhel/es/4/4ES/$basearch/extras/debug
    Content Type: yum
 322)Repo Name:    Red Hat Enterprise Linux 6 Server Beta (Debug RPMs)
    URL:          /content/beta/rhel/server/6/$releasever/$basearch/debug
    Content Type: yum
 323)Repo Name:    Red Hat Enterprise Linux 6 Server Beta (ISOs)
    URL:          /content/beta/rhel/server/6/$releasever/$basearch/iso
    Content Type: file
 324)Repo Name:    Red Hat Enterprise Linux 6 Server - Optional Beta (Debug RPMs)
    URL:          /content/beta/rhel/server/6/$releasever/$basearch/optional/debug
    Content Type: yum
 325)Repo Name:    Red Hat Enterprise Linux 6 Server - Optional Beta (RPMs)
    URL:          /content/beta/rhel/server/6/$releasever/$basearch/optional/os
    Content Type: yum
 326)Repo Name:    Red Hat Enterprise Linux 6 Server - Optional Beta (Source RPMs)
    URL:          /content/beta/rhel/server/6/$releasever/$basearch/optional/source/SRPMS
    Content Type: yum
 327)Repo Name:    Red Hat Satellite Utils 6.11 (for RHEL 7 Server) (Source RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-utils/6.11/source/SRPMS
    Content Type: yum
 328)Repo Name:    Red Hat Satellite Utils 6.11 (for RHEL 7 Server) (RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-utils/6.11/os
    Content Type: yum
 329)Repo Name:    Red Hat Satellite Utils 6.11 (for RHEL 7 Server) (Debug RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-utils/6.11/debug
    Content Type: yum
 330)Repo Name:    Red Hat Enterprise Linux 3 ES - Extras (Source RPMSs)
    URL:          /content/dist/rhel/es/3/3ES/$basearch/extras/source/SRPMS
    Content Type: yum
 331)Repo Name:    Red Hat Enterprise Linux 3 ES - Extras (RPMs)
    URL:          /content/dist/rhel/es/3/3ES/$basearch/extras/os
    Content Type: yum
 332)Repo Name:    Red Hat Enterprise Linux 3 ES Developer Suite (RPMs)
    URL:          /content/dist/rhel/es/3/3ES/$basearch/devsuite/os
    Content Type: yum
 333)Repo Name:    Red Hat Enterprise Linux 3 ES - Extras (Debug RPMs)
    URL:          /content/dist/rhel/es/3/3ES/$basearch/extras/debug
    Content Type: yum
 334)Repo Name:    Red Hat Enterprise Linux 3 ES Developer Suite (Source RPMSs)
    URL:          /content/dist/rhel/es/3/3ES/$basearch/devsuite/source/SRPMS
    Content Type: yum
 335)Repo Name:    Red Hat Enterprise Linux 6 Server Beta (RPMs)
    URL:          /content/beta/rhel/server/6/$releasever/$basearch/os
    Content Type: yum
 336)Repo Name:    Red Hat Enterprise Linux 6 Server Beta (Source RPMs)
    URL:          /content/beta/rhel/server/6/$releasever/$basearch/source/SRPMS
    Content Type: yum
 337)Repo Name:    Red Hat Enterprise Linux 6 Server Beta (Source ISOs)
    URL:          /content/beta/rhel/server/6/$releasever/$basearch/source/iso
    Content Type: file
 338)Repo Name:    Red Hat Enterprise Linux 6 Server (Debug RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/debug
    Content Type: yum
 339)Repo Name:    Red Hat Enterprise Linux 6 Server (ISOs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/iso
    Content Type: file
 340)Repo Name:    Red Hat Enterprise Linux 6 Server - Optional (Debug RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/optional/debug
    Content Type: yum
 341)Repo Name:    Red Hat Enterprise Virtualization Agents for RHEL 6 Server (Source RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/rhev-agent/3/source/SRPMS
    Content Type: yum
 342)Repo Name:    Red Hat Enterprise Linux 6 Server - Optional (RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/optional/os
    Content Type: yum
 343)Repo Name:    Red Hat Enterprise Linux 6 Server - Optional (Source RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/optional/source/SRPMS
    Content Type: yum
 344)Repo Name:    Red Hat Enterprise Linux 6 Server (RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/os
    Content Type: yum
 345)Repo Name:    Red Hat Enterprise Linux 6 Server (Source RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/source/SRPMS
    Content Type: yum
 346)Repo Name:    Red Hat Enterprise Linux 3 ES (Source RPMSs)
    URL:          /content/dist/rhel/es/3/3ES/$basearch/source/SRPMS
    Content Type: yum
 347)Repo Name:    Red Hat Enterprise Linux 3 ES (RPMs)
    URL:          /content/dist/rhel/es/3/3ES/$basearch/os
    Content Type: yum
 348)Repo Name:    Red Hat Enterprise Linux 3 ES (Debug RPMs)
    URL:          /content/dist/rhel/es/3/3ES/$basearch/debug
    Content Type: yum
 349)Repo Name:    Red Hat Satellite Tools 6.8 (for RHEL 7 Server) (Source RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.8/source/SRPMS
    Content Type: yum
 350)Repo Name:    Red Hat Enterprise Linux 6 Server (Source ISOs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/source/iso
    Content Type: file
 351)Repo Name:    Red Hat Enterprise Linux 3 ES Developer Suite (Debug RPMs)
    URL:          /content/dist/rhel/es/3/3ES/$basearch/devsuite/debug
    Content Type: yum
 352)Repo Name:    Red Hat Enterprise Linux 6 Server (Kickstart)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/kickstart
    Content Type: kickstart
 353)Repo Name:    Red Hat Enterprise Linux 5 Server (Kickstart)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/kickstart
    Content Type: kickstart
 354)Repo Name:    Red Hat OpenStack Platform 14 Tools for RHEL 7 Server (Source RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/openstack-tools/14/source/SRPMS
    Content Type: yum
 355)Repo Name:    Red Hat Satellite Tools 6.5 (for RHEL 6 Server) (RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/sat-tools/6.5/os
    Content Type: yum
 356)Repo Name:    Red Hat Satellite Tools 6.5 (for RHEL 6 Server) (Source RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/sat-tools/6.5/source/SRPMS
    Content Type: yum
 357)Repo Name:    Red Hat OpenStack Platform 14 Tools for RHEL 7 Server (Debug RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/openstack-tools/14/debug
    Content Type: yum
 358)Repo Name:    Red Hat OpenStack Platform 14 Tools for RHEL 7 Server (RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/openstack-tools/14/os
    Content Type: yum
 359)Repo Name:    Red Hat Satellite Tools 6.5 (for RHEL 6 Server) (Debug RPMs)
    URL:          /content/dist/rhel/server/6/6Server/$basearch/sat-tools/6.5/debug
    Content Type: yum
 360)Repo Name:    Red Hat Satellite Client 6 (for RHEL 7 Server) (RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-client/6/os
    Content Type: yum
 361)Repo Name:    Red Hat Satellite Client 6 (for RHEL 7 Server) (Debug RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-client/6/debug
    Content Type: yum
 362)Repo Name:    Red Hat Satellite Client 6 (for RHEL 7 Server) (Source RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-client/6/source/SRPMS
    Content Type: yum
 363)Repo Name:    Red Hat Virt V2V Tool for RHEL 7 (RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/v2vwin/os
    Content Type: yum
 364)Repo Name:    Red Hat Virt V2V Tool for RHEL 7 (Debug RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/v2vwin/debug
    Content Type: yum
 365)Repo Name:    Red Hat Virt V2V Tool for RHEL 7 (Source RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/v2vwin/source/SRPMS
    Content Type: yum
 366)Repo Name:    Red Hat CloudForms Tools for RHEL 5 (RPMs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/cf-tools/1/os
    Content Type: yum
 367)Repo Name:    Red Hat Subscription Asset Manager (for RHEL 6 Server) Beta (Source RPMs)
    URL:          /content/beta/rhel/server/6/$releasever/$basearch/subscription-asset-manager/source/SRPMS
    Content Type: yum
 368)Repo Name:    Red Hat Subscription Asset Manager (for RHEL 6 Server) Beta (RPMs)
    URL:          /content/beta/rhel/server/6/$releasever/$basearch/subscription-asset-manager/os
    Content Type: yum
 369)Repo Name:    Red Hat Subscription Asset Manager (for RHEL 6 Server) Beta (Debug RPMs)
    URL:          /content/beta/rhel/server/6/$releasever/$basearch/subscription-asset-manager/debug
    Content Type: yum
 370)Repo Name:    Red Hat CloudForms Tools for RHEL 6 (Source RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/cf-tools/1/source/SRPMS
    Content Type: yum
 371)Repo Name:    Red Hat CloudForms Tools for RHEL 5 (Source RPMs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/cf-tools/1/source/SRPMS
    Content Type: yum
 372)Repo Name:    Red Hat Enterprise Linux 5 Server - Supplementary (RPMs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/supplementary/os
    Content Type: yum
 373)Repo Name:    Red Hat Enterprise Linux 5 Server - Supplementary Beta (RPMs)
    URL:          /content/beta/rhel/server/5/$releasever/$basearch/supplementary/os
    Content Type: yum
 374)Repo Name:    Red Hat Enterprise Linux 7 Server Beta (Kickstart)
    URL:          /content/beta/rhel/server/7/$basearch/kickstart
    Content Type: kickstart
 375)Repo Name:    Red Hat Ceph Storage Tools 2 for Red Hat Enterprise Linux 7 Server (RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/ceph-tools/2/os
    Content Type: yum
 376)Repo Name:    Red Hat Ceph Storage Tools 2 for Red Hat Enterprise Linux 7 Server (Debug RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/ceph-tools/2/debug
    Content Type: yum
 377)Repo Name:    Red Hat Ceph Storage Tools 2 for Red Hat Enterprise Linux 7 Server (Source RPMs)
    URL:          /content/dist/rhel/server/7/$releasever/$basearch/ceph-tools/2/source/SRPMS
    Content Type: yum
 378)Repo Name:    Red Hat Subscription Asset Manager (for RHEL 6 Server) (Debug RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/subscription-asset-manager/1/debug
    Content Type: yum
 379)Repo Name:    Red Hat Satellite Tools 6.10 (for RHEL 7 Server) (Debug RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.10/debug
    Content Type: yum
 380)Repo Name:    Red Hat Satellite Tools 6.10 (for RHEL 7 Server) (Source RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.10/source/SRPMS
    Content Type: yum
 381)Repo Name:    Red Hat Satellite Tools 6.10 (for RHEL 7 Server) (RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.10/os
    Content Type: yum
 382)Repo Name:    Red Hat Enterprise Linux 5 Server - RH Common Beta (Source RPMs)
    URL:          /content/beta/rhel/server/5/5Server/$basearch/rh-common/source/SRPMS
    Content Type: yum
 383)Repo Name:    Red Hat Enterprise Linux 5 Server - RH Common Beta (RPMs)
    URL:          /content/beta/rhel/server/5/5Server/$basearch/rh-common/os
    Content Type: yum
 384)Repo Name:    Red Hat OpenStack Platform 12 Tools for RHEL 7 Server (RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/openstack-tools/12/os
    Content Type: yum
 385)Repo Name:    Red Hat Enterprise Linux 5 Server - RH Common Beta (ISOs)
    URL:          /content/beta/rhel/server/5/5Server/$basearch/rh-common/iso
    Content Type: file
 386)Repo Name:    Red Hat OpenStack Platform 12 Tools for RHEL 7 Server (Debug RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/openstack-tools/12/debug
    Content Type: yum
 387)Repo Name:    Red Hat Enterprise Linux 5 Server - RH Common Beta (Debug RPMs)
    URL:          /content/beta/rhel/server/5/5Server/$basearch/rh-common/debug
    Content Type: yum
 388)Repo Name:    Red Hat OpenStack Platform 12 Tools for RHEL 7 Server (Source RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/openstack-tools/12/source/SRPMS
    Content Type: yum
 389)Repo Name:    Red Hat Enterprise Linux 5 Server - RH Common (Source RPMs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/rh-common/source/SRPMS
    Content Type: yum
 390)Repo Name:    Red Hat Enterprise Linux 5 Server - RH Common (RPMs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/rh-common/os
    Content Type: yum
 391)Repo Name:    Red Hat Enterprise Linux 5 Server - RH Common (ISOs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/rh-common/iso
    Content Type: file
 392)Repo Name:    Red Hat Enterprise Linux 5 Server - RH Common (Debug RPMs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/rh-common/debug
    Content Type: yum
 393)Repo Name:    Red Hat Enterprise Linux 6 Server - Supplementary (RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/supplementary/os
    Content Type: yum
 394)Repo Name:    Red Hat Subscription Asset Manager (for RHEL 6 Server) (Source RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/subscription-asset-manager/1/source/SRPMS
    Content Type: yum
 395)Repo Name:    Red Hat Enterprise Linux 6 Server - Supplementary Beta (RPMs)
    URL:          /content/beta/rhel/server/6/$releasever/$basearch/supplementary/os
    Content Type: yum
 396)Repo Name:    Red Hat Subscription Asset Manager (for RHEL 6 Server) (RPMs)
    URL:          /content/dist/rhel/server/6/$releasever/$basearch/subscription-asset-manager/1/os
    Content Type: yum
 397)Repo Name:    Red Hat Enterprise Linux 5 Server - Virtualization (Debug RPMs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/vt/debug
    Content Type: yum
 398)Repo Name:    Red Hat Enterprise Linux 5 Server - Virtualization Beta (Source RPMs)
    URL:          /content/beta/rhel/server/5/$releasever/$basearch/vt/source/SRPMS
    Content Type: yum
 399)Repo Name:    Red Hat Enterprise Virtualization Agents for RHEL 5 Server (Source RPMs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/rhev-agent/3/source/SRPMS
    Content Type: yum
 400)Repo Name:    Red Hat Enterprise Linux 5 Server - Virtualization Beta (RPMs)
    URL:          /content/beta/rhel/server/5/$releasever/$basearch/vt/os
    Content Type: yum
 401)Repo Name:    Red Hat Enterprise Linux 5 Server - Virtualization Beta (Debug RPMs)
    URL:          /content/beta/rhel/server/5/$releasever/$basearch/vt/debug
    Content Type: yum
 402)Repo Name:    Red Hat Enterprise Virtualization Agents for RHEL 5 Server (RPMs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/rhev-agent/3/os
    Content Type: yum
 403)Repo Name:    Red Hat Enterprise Virtualization Agents for RHEL 5 Server (Debug RPMs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/rhev-agent/3/debug
    Content Type: yum
 404)Repo Name:    Red Hat Enterprise Virtualization Agents for RHEL 5 Server Beta (Source RPMs)
    URL:          /content/beta/rhel/server/5/$releasever/$basearch/rhev-agent/3/source/SRPMS
    Content Type: yum
 405)Repo Name:    Red Hat Enterprise Virtualization Agents for RHEL 5 Server Beta (RPMs)
    URL:          /content/beta/rhel/server/5/$releasever/$basearch/rhev-agent/3/os
    Content Type: yum
 406)Repo Name:    Red Hat Enterprise Virtualization Agents for RHEL 5 Server Beta (Debug RPMs)
    URL:          /content/beta/rhel/server/5/$releasever/$basearch/rhev-agent/3/debug
    Content Type: yum
 407)Repo Name:    Red Hat Satellite Tools 6.2 (for RHEL 7 Server) (Debug RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.2/debug
    Content Type: yum
 408)Repo Name:    Red Hat Satellite Tools 6.2 (for RHEL 7 Server) (RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.2/os
    Content Type: yum
 409)Repo Name:    Red Hat Satellite Tools 6.2 (for RHEL 7 Server) (Source RPMs)
    URL:          /content/dist/rhel/server/7/7Server/$basearch/sat-tools/6.2/source/SRPMS
    Content Type: yum
 410)Repo Name:    Red Hat Enterprise Linux 5 Server - Virtualization (Source RPMs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/vt/source/SRPMS
    Content Type: yum
 411)Repo Name:    Red Hat Enterprise Linux 5 Server - Virtualization (RPMs)
    URL:          /content/dist/rhel/server/5/$releasever/$basearch/vt/os
    Content Type: yum

```


### Org Wëird Orgañization 鋼の錬金術師 - subscription

```
---|----------------------------------|--------------------------------------------------|----------|----------|---------|---------|---------------------|----------|---------
ID | UUID                             | NAME                                             | TYPE     | CONTRACT | ACCOUNT | SUPPORT | END DATE            | QUANTITY | CONSUMED
---|----------------------------------|--------------------------------------------------|----------|----------|---------|---------|---------------------|----------|---------
2  | 4028fbfb87ca5f9e0187cc73a06f1a50 | Red Hat OpenStack Platform for Service Providers | Physical | 16702524 | 1460290 | Premium | 2024/01/01 04:59:59 | 10       | 0       
---|----------------------------------|--------------------------------------------------|----------|----------|---------|---------|---------------------|----------|---------
```


### Org Wëird Orgañization 鋼の錬金術師 - sync-plan

```
---|------|------------|----------|---------|-----------------|-------------------
ID | NAME | START DATE | INTERVAL | ENABLED | CRON EXPRESSION | RECURRING LOGIC ID
---|------|------------|----------|---------|-----------------|-------------------
```


### Org Wëird Orgañization 鋼の錬金術師 - repository

```
---|--------------------------------------------------------|---------------------------------|--------------|-----------------------------------------------------------------------
ID | NAME                                                   | PRODUCT                         | CONTENT TYPE | URL                                                                   
---|--------------------------------------------------------|---------------------------------|--------------|-----------------------------------------------------------------------
6  | Red Hat Enterprise Linux 7 Server Kickstart x86_64 7.9 | Red Hat Enterprise Linux Server | yum          | https://cdn.redhat.com/content/dist/rhel/server/7/7.9/x86_64/kickstart
5  | Red Hat Enterprise Linux 7 Server RPMs x86_64 7Server  | Red Hat Enterprise Linux Server | yum          | https://cdn.redhat.com/content/dist/rhel/server/7/7Server/x86_64/os   
---|--------------------------------------------------------|---------------------------------|--------------|-----------------------------------------------------------------------
```


End of report.
