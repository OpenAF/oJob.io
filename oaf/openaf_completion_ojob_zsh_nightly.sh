#!/bin/sh

# Flags
F__compile=1
F__tojson=1
F__json=1
F__gb64json=1
F__jobs=1
F__todo=1
F__deps=1
F__jobhelp=1
F__syntax=1
F__which=1
F__global=1
F__shortcuts=1
F_ojob_io_=1
F_ojob_io__ojob_io__common=0
F_ojob_io__ojob_io_check=0
F_ojob_io__ojob_io_clean=0
F_ojob_io__ojob_io_compile=0
F_ojob_io__ojob_io_doc=0
F_ojob_io__ojob_io_echo=0
F_ojob_io__ojob_io_envs=0
F_ojob_io__ojob_io_generate=0
F_ojob_io__ojob_io_get=0
F_ojob_io__ojob_io_hash=0
F_ojob_io__ojob_io_help=0
F_ojob_io__ojob_io_html=0
F_ojob_io__ojob_io_list=0
F_ojob_io__ojob_io_map=0
F_ojob_io__ojob_io_oafp_examples=0
F_ojob_io__ojob_io_oafp=0
F_ojob_io__ojob_io_pipe=0
F_ojob_io__ojob_io_ai_genImage=0
F_ojob_io__ojob_io_ai_ollamaOps=0
F_ojob_io__ojob_io_ai_openai=0
F_ojob_io__ojob_io_ai_prompt=0
F_ojob_io__ojob_io_ai_promptImage=0
F_ojob_io__ojob_io_aws_addEC2StartStopLambdas=0
F_ojob_io__ojob_io_aws_awscli=0
F_ojob_io__ojob_io_aws_buildLambdaOAFLayers=0
F_ojob_io__ojob_io_aws_costPerAccount=0
F_ojob_io__ojob_io_aws_docker2ECR=0
F_ojob_io__ojob_io_aws_installDockerInAmzn2=0
F_ojob_io__ojob_io_aws_listECRImages=0
F_ojob_io__ojob_io_aws_moveEKSPV4AZ=0
F_ojob_io__ojob_io_aws_route53update=0
F_ojob_io__ojob_io_aws_skopeo=0
F_ojob_io__ojob_io_aws_testRegions=0
F_ojob_io__ojob_io_cheatsheet_logSQLs=0
F_ojob_io__ojob_io_cheatsheet_ojob_langs=0
F_ojob_io__ojob_io_cheatsheet_ojob_shortcuts=0
F_ojob_io__ojob_io_common_oJobBasics=0
F_ojob_io__ojob_io_common_oJobCh=0
F_ojob_io__ojob_io_common_oJobDebug=0
F_ojob_io__ojob_io_common_oJobDirector=0
F_ojob_io__ojob_io_common_oJobES=0
F_ojob_io__ojob_io_common_oJobEmail=0
F_ojob_io__ojob_io_common_oJobGIT=0
F_ojob_io__ojob_io_common_oJobHBS=0
F_ojob_io__ojob_io_common_oJobHTTPd=0
F_ojob_io__ojob_io_common_oJobIO=0
F_ojob_io__ojob_io_common_oJobManager=0
F_ojob_io__ojob_io_common_oJobNet=0
F_ojob_io__ojob_io_common_oJobOPack=0
F_ojob_io__ojob_io_common_oJobQueue=0
F_ojob_io__ojob_io_common_oJobRAID=0
F_ojob_io__ojob_io_common_oJobRest=0
F_ojob_io__ojob_io_common_oJobSQL=0
F_ojob_io__ojob_io_common_oJobSSH=0
F_ojob_io__ojob_io_common_oJobSVN=0
F_ojob_io__ojob_io_common_oJobTest=0
F_ojob_io__ojob_io_common_oJobWatchDog=0
F_ojob_io__ojob_io_common_oJobXLS=0
F_ojob_io__ojob_io_common_oJobs=0
F_ojob_io__ojob_io_common_ojob=0
F_ojob_io__ojob_io_common_ojob=0
F_ojob_io__ojob_io_data_countries=0
F_ojob_io__ojob_io_data_itunes=0
F_ojob_io__ojob_io_db_data=0
F_ojob_io__ojob_io_db_getDriver=0
F_ojob_io__ojob_io_db_query=0
F_ojob_io__ojob_io_docker__common=0
F_ojob_io__ojob_io_docker_analyze=0
F_ojob_io__ojob_io_docker_buildMallocLibs=0
F_ojob_io__ojob_io_docker_carbonyl=0
F_ojob_io__ojob_io_docker_ceph=0
F_ojob_io__ojob_io_docker_checkKube=0
F_ojob_io__ojob_io_docker_collapse=0
F_ojob_io__ojob_io_docker_compose=0
F_ojob_io__ojob_io_docker_copy=0
F_ojob_io__ojob_io_docker_dind=0
F_ojob_io__ojob_io_docker_elastic=0
F_ojob_io__ojob_io_docker_etcd=0
F_ojob_io__ojob_io_docker_expand=0
F_ojob_io__ojob_io_docker_fontconfig=0
F_ojob_io__ojob_io_docker_fromADoc2=0
F_ojob_io__ojob_io_docker_fromMD2ADoc=0
F_ojob_io__ojob_io_docker_genSSHKeyGen=0
F_ojob_io__ojob_io_docker_genSocksServer=0
F_ojob_io__ojob_io_docker_github=0
F_ojob_io__ojob_io_docker_gitpod=0
F_ojob_io__ojob_io_docker_gpg=0
F_ojob_io__ojob_io_docker_hubListTags=0
F_ojob_io__ojob_io_docker_info=0
F_ojob_io__ojob_io_docker_install=0
F_ojob_io__ojob_io_docker_javaGClog2html=0
F_ojob_io__ojob_io_docker_jp2a=0
F_ojob_io__ojob_io_docker_k3d=0
F_ojob_io__ojob_io_docker_listHubRepo=0
F_ojob_io__ojob_io_docker_mc=0
F_ojob_io__ojob_io_docker_minio=0
F_ojob_io__ojob_io_docker_mitmproxy=0
F_ojob_io__ojob_io_docker_nginx=0
F_ojob_io__ojob_io_docker_ojobrt=0
F_ojob_io__ojob_io_docker_onedrive=0
F_ojob_io__ojob_io_docker_opensearch=0
F_ojob_io__ojob_io_docker_ovpnserver=0
F_ojob_io__ojob_io_docker_portainer=0
F_ojob_io__ojob_io_docker_prometheus=0
F_ojob_io__ojob_io_docker_redis=0
F_ojob_io__ojob_io_docker_runNetShoot=0
F_ojob_io__ojob_io_docker_sftp=0
F_ojob_io__ojob_io_docker_skopeo=0
F_ojob_io__ojob_io_docker_squash=0
F_ojob_io__ojob_io_docker_sshd=0
F_ojob_io__ojob_io_docker_update=0
F_ojob_io__ojob_io_docker_fake_smtp=0
F_ojob_io__ojob_io_docker_fun_matrix=0
F_ojob_io__ojob_io_docker_fun_vitetries=0
F_ojob_io__ojob_io_docker_ovpnserver_list=0
F_ojob_io__ojob_io_docsify_generateStatic=0
F_ojob_io__ojob_io_docsify_httpd=0
F_ojob_io__ojob_io_docsify_liveHttpd=0
F_ojob_io__ojob_io_email_send=0
F_ojob_io__ojob_io_es_export=0
F_ojob_io__ojob_io_es_import=0
F_ojob_io__ojob_io_files_htmlIndex=0
F_ojob_io__ojob_io_files_list=0
F_ojob_io__ojob_io_formats_csv2json=0
F_ojob_io__ojob_io_formats_fromBase64=0
F_ojob_io__ojob_io_formats_fromFile=0
F_ojob_io__ojob_io_formats_fromJSON=0
F_ojob_io__ojob_io_formats_fromMDTable=0
F_ojob_io__ojob_io_formats_fromNDJson=0
F_ojob_io__ojob_io_formats_fromNginx=0
F_ojob_io__ojob_io_formats_fromRes=0
F_ojob_io__ojob_io_formats_fromXLS=0
F_ojob_io__ojob_io_formats_fromXML=0
F_ojob_io__ojob_io_formats_fromYAML=0
F_ojob_io__ojob_io_formats_genPad=0
F_ojob_io__ojob_io_formats_html2pdf=0
F_ojob_io__ojob_io_formats_img2md=0
F_ojob_io__ojob_io_formats_json2yaml=0
F_ojob_io__ojob_io_formats_map=0
F_ojob_io__ojob_io_formats_md2html=0
F_ojob_io__ojob_io_formats_openmetrics2prometheus=0
F_ojob_io__ojob_io_formats_pad=0
F_ojob_io__ojob_io_formats_parseMD=0
F_ojob_io__ojob_io_formats_str2banner=0
F_ojob_io__ojob_io_formats_str2code=0
F_ojob_io__ojob_io_formats_text2yaml=0
F_ojob_io__ojob_io_formats_toBase64=0
F_ojob_io__ojob_io_formats_toHTML=0
F_ojob_io__ojob_io_formats_toJSON=0
F_ojob_io__ojob_io_formats_toLineChart=0
F_ojob_io__ojob_io_formats_toMDTable=0
F_ojob_io__ojob_io_formats_toOpenMetrics=0
F_ojob_io__ojob_io_formats_toOpenMetrics2=0
F_ojob_io__ojob_io_formats_toSQL=0
F_ojob_io__ojob_io_formats_toUTF8=0
F_ojob_io__ojob_io_formats_toXLS=0
F_ojob_io__ojob_io_formats_toYAML=0
F_ojob_io__ojob_io_formats_yaml2json=0
F_ojob_io__ojob_io_formats_yaml2text=0
F_ojob_io__ojob_io_fun_bored=0
F_ojob_io__ojob_io_fun_chuckNorris=0
F_ojob_io__ojob_io_fun_fortune=0
F_ojob_io__ojob_io_fun_insult=0
F_ojob_io__ojob_io_fun_joke=0
F_ojob_io__ojob_io_fun_zenquotes=0
F_ojob_io__ojob_io_gcp_testRegions=0
F_ojob_io__ojob_io_git_githubCheckIn=0
F_ojob_io__ojob_io_git_githubEmail=0
F_ojob_io__ojob_io_git_githubSSH=0
F_ojob_io__ojob_io_git_updateAll=0
F_ojob_io__ojob_io_git_hub_checkIn=0
F_ojob_io__ojob_io_git_hub_contentIn=0
F_ojob_io__ojob_io_git_hub_email=0
F_ojob_io__ojob_io_git_hub_genAction=0
F_ojob_io__ojob_io_git_hub_workflows=0
F_ojob_io__ojob_io_grid_generate=0
F_ojob_io__ojob_io_grid_show=0
F_ojob_io__ojob_io_grid_data_example=0
F_ojob_io__ojob_io_grid_data_gc=0
F_ojob_io__ojob_io_grid_data_gc2=0
F_ojob_io__ojob_io_grid_data_kubeNode=0
F_ojob_io__ojob_io_grid_data_kubePod=0
F_ojob_io__ojob_io_grid_data_oaf=0
F_ojob_io__ojob_io_h2_console=0
F_ojob_io__ojob_io_h2_export=0
F_ojob_io__ojob_io_h2_import=0
F_ojob_io__ojob_io_h2_onlineMigration=0
F_ojob_io__ojob_io_hello_world=0
F_ojob_io__ojob_io_httpServers_EasyHTTPSd=0
F_ojob_io__ojob_io_httpServers_EasyHTTPd=0
F_ojob_io__ojob_io_httpServers_EchoHTTPd=0
F_ojob_io__ojob_io_httpServers_HTTPd=0
F_ojob_io__ojob_io_httpServers_MetricsHTTPd=0
F_ojob_io__ojob_io_httpServers_RedirectHTTPd=0
F_ojob_io__ojob_io_httpServers_uploadHTTPSd=0
F_ojob_io__ojob_io_httpServers_uploadHTTPd=0
F_ojob_io__ojob_io_ignite_getStartEnv=0
F_ojob_io__ojob_io_java_addCert=0
F_ojob_io__ojob_io_java_certs=0
F_ojob_io__ojob_io_java_checkTLS=0
F_ojob_io__ojob_io_java_classVersions=0
F_ojob_io__ojob_io_java_download=0
F_ojob_io__ojob_io_java_findProc=0
F_ojob_io__ojob_io_java_gc=0
F_ojob_io__ojob_io_java_jmxExplorer=0
F_ojob_io__ojob_io_java_grafana_gc=0
F_ojob_io__ojob_io_kube_backup=0
F_ojob_io__ojob_io_kube_cmd=0
F_ojob_io__ojob_io_kube_criOps=0
F_ojob_io__ojob_io_kube_dash=0
F_ojob_io__ojob_io_kube_deployMetrics=0
F_ojob_io__ojob_io_kube_expandSecret=0
F_ojob_io__ojob_io_kube_findPod=0
F_ojob_io__ojob_io_kube_genConfigMap=0
F_ojob_io__ojob_io_kube_genOJobRT=0
F_ojob_io__ojob_io_kube_genRegUI=0
F_ojob_io__ojob_io_kube_genSecret=0
F_ojob_io__ojob_io_kube_genSocksServer=0
F_ojob_io__ojob_io_kube_getCriCtl=0
F_ojob_io__ojob_io_kube_getHelm=0
F_ojob_io__ojob_io_kube_getK0S=0
F_ojob_io__ojob_io_kube_getK3S=0
F_ojob_io__ojob_io_kube_getK9S=0
F_ojob_io__ojob_io_kube_getKrew=0
F_ojob_io__ojob_io_kube_getKubectl=0
F_ojob_io__ojob_io_kube_getKubectlConfig=0
F_ojob_io__ojob_io_kube_getSocksBrowser=0
F_ojob_io__ojob_io_kube_getUsedBytes=0
F_ojob_io__ojob_io_kube_nodeResources=0
F_ojob_io__ojob_io_kube_podResources=0
F_ojob_io__ojob_io_kube_podSec=0
F_ojob_io__ojob_io_kube_prometheus=0
F_ojob_io__ojob_io_kube_prometheus2=0
F_ojob_io__ojob_io_kube_query=0
F_ojob_io__ojob_io_kube_runNetShoot=0
F_ojob_io__ojob_io_kube_templates_echo=0
F_ojob_io__ojob_io_langs_yaml=0
F_ojob_io__ojob_io_ldap_get=0
F_ojob_io__ojob_io_mac_flushDNS=0
F_ojob_io__ojob_io_miniServices_HelloWorld=0
F_ojob_io__ojob_io_miniServices_TimeService=0
F_ojob_io__ojob_io_miniServices_bg_traefik=0
F_ojob_io__ojob_io_miniServices_lb_traefik=0
F_ojob_io__ojob_io_net_cSpeedTest=0
F_ojob_io__ojob_io_net_doh=0
F_ojob_io__ojob_io_net_getTermshark=0
F_ojob_io__ojob_io_net_jdbc=0
F_ojob_io__ojob_io_net_latency=0
F_ojob_io__ojob_io_net_publicIP=0
F_ojob_io__ojob_io_net_socksServer=0
F_ojob_io__ojob_io_net_speedtest=0
F_ojob_io__ojob_io_net_sslDates=0
F_ojob_io__ojob_io_net_testHosts=0
F_ojob_io__ojob_io_net_whois=0
F_ojob_io__ojob_io_news_adoptium=0
F_ojob_io__ojob_io_news_aws=0
F_ojob_io__ojob_io_news_awsnews=0
F_ojob_io__ojob_io_news_azure=0
F_ojob_io__ojob_io_news_bbc=0
F_ojob_io__ojob_io_news_cnet=0
F_ojob_io__ojob_io_news_engadget=0
F_ojob_io__ojob_io_news_fb=0
F_ojob_io__ojob_io_news_gcp=0
F_ojob_io__ojob_io_news_github=0
F_ojob_io__ojob_io_news_githubChangeLog=0
F_ojob_io__ojob_io_news_google=0
F_ojob_io__ojob_io_news_hackernews=0
F_ojob_io__ojob_io_news_helm=0
F_ojob_io__ojob_io_news_k8s=0
F_ojob_io__ojob_io_news_macrumors=0
F_ojob_io__ojob_io_news_microsoft=0
F_ojob_io__ojob_io_news_microsoftInsider=0
F_ojob_io__ojob_io_news_nytimes=0
F_ojob_io__ojob_io_news_openai=0
F_ojob_io__ojob_io_news_oraclecloud=0
F_ojob_io__ojob_io_news_ovh=0
F_ojob_io__ojob_io_news_redhatcloud=0
F_ojob_io__ojob_io_news_rss=0
F_ojob_io__ojob_io_news_scaleway=0
F_ojob_io__ojob_io_news_slashdot=0
F_ojob_io__ojob_io_news_techcrunch=0
F_ojob_io__ojob_io_news_theregister=0
F_ojob_io__ojob_io_news_theverge=0
F_ojob_io__ojob_io_news_tomshardware=0
F_ojob_io__ojob_io_news_wired=0
F_ojob_io__ojob_io_oaf_aPack=0
F_ojob_io__ojob_io_oaf_build=0
F_ojob_io__ojob_io_oaf_changeDist=0
F_ojob_io__ojob_io_oaf_checkOAFJars=0
F_ojob_io__ojob_io_oaf_colorFormats=0
F_ojob_io__ojob_io_oaf_colorMap=0
F_ojob_io__ojob_io_oaf_compile=0
F_ojob_io__ojob_io_oaf_completion=0
F_ojob_io__ojob_io_oaf_debug=0
F_ojob_io__ojob_io_oaf_genCh=0
F_ojob_io__ojob_io_oaf_genODoc=0
F_ojob_io__ojob_io_oaf_generate=0
F_ojob_io__ojob_io_oaf_info=0
F_ojob_io__ojob_io_oaf_javaUpdate=0
F_ojob_io__ojob_io_oaf_key=0
F_ojob_io__ojob_io_oaf_mavenGetJars=0
F_ojob_io__ojob_io_oaf_minidb=0
F_ojob_io__ojob_io_oaf_pack=0
F_ojob_io__ojob_io_oaf_packBin=0
F_ojob_io__ojob_io_oaf_parseCron=0
F_ojob_io__ojob_io_oaf_pyoaf=0
F_ojob_io__ojob_io_oaf_symlinks=0
F_ojob_io__ojob_io_oaf_versions=0
F_ojob_io__ojob_io_oaf_winTerm=0
F_ojob_io__ojob_io_obook_generate=0
F_ojob_io__ojob_io_obook_run=0
F_ojob_io__ojob_io_ojob_code=0
F_ojob_io__ojob_io_ojob_compile=0
F_ojob_io__ojob_io_ojob_genJob=0
F_ojob_io__ojob_io_ojob_genMD=0
F_ojob_io__ojob_io_ojob_gui=0
F_ojob_io__ojob_io_ojob_listCommon=0
F_ojob_io__ojob_io_ojob_logParser=0
F_ojob_io__ojob_io_ojob_ojobioHashList=0
F_ojob_io__ojob_io_ojob_script=0
F_ojob_io__ojob_io_ojob_service=0
F_ojob_io__ojob_io_ojob_templates_cron=0
F_ojob_io__ojob_io_ojob_templates_httpd=0
F_ojob_io__ojob_io_ojob_templates_pods=0
F_ojob_io__ojob_io_ojob_templates_ssh=0
F_ojob_io__ojob_io_ojob_templates_test=0
F_ojob_io__ojob_io_oneliner_generate=0
F_ojob_io__ojob_io_oneliner_httpd=0
F_ojob_io__ojob_io_oneliner_ojobc=0
F_ojob_io__ojob_io_opack_compileOPacks=0
F_ojob_io__ojob_io_opack_userRebuild=0
F_ojob_io__ojob_io_pi_createWiFi=0
F_ojob_io__ojob_io_pi_getTemp=0
F_ojob_io__ojob_io_raid__common=0
F_ojob_io__ojob_io_raid_checkFlowManager=0
F_ojob_io__ojob_io_raid_logParser=0
F_ojob_io__ojob_io_raid_logParser=0
F_ojob_io__ojob_io_raid_logParser2=0
F_ojob_io__ojob_io_raid_logParser2=0
F_ojob_io__ojob_io_raid_omtExplorer=0
F_ojob_io__ojob_io_raid_ping=0
F_ojob_io__ojob_io_raid_cir_ops=0
F_ojob_io__ojob_io_raid_formats_fromPrettyPrint=0
F_ojob_io__ojob_io_raid_formats_toPrettyPrint=0
F_ojob_io__ojob_io_raid_har_har2queries=0
F_ojob_io__ojob_io_raid_har_testQueries=0
F_ojob_io__ojob_io_raid_logicalfield_ops=0
F_ojob_io__ojob_io_raid_mashup_ops=0
F_ojob_io__ojob_io_rocksdb_stats=0
F_ojob_io__ojob_io_s3_getMC=0
F_ojob_io__ojob_io_s3_httpCheck=0
F_ojob_io__ojob_io_s3_ops=0
F_ojob_io__ojob_io_sec_genKeyPair=0
F_ojob_io__ojob_io_sec_genPassword=0
F_ojob_io__ojob_io_sec_genSecBadge=0
F_ojob_io__ojob_io_sec_ops=0
F_ojob_io__ojob_io_sec_trivy=0
F_ojob_io__ojob_io_sec_trivySummary=0
F_ojob_io__ojob_io_ssh_cleanHost=0
F_ojob_io__ojob_io_ssh_tunnel=0
F_ojob_io__ojob_io_telco_countryByCode=0
F_ojob_io__ojob_io_telco_phoneNumber=0
F_ojob_io__ojob_io_template_apply=0
F_ojob_io__ojob_io_time_current=0
F_ojob_io__ojob_io_time_eclipse=0
F_ojob_io__ojob_io_time_zone=0
F_ojob_io__ojob_io_time_zones=0
F_ojob_io__ojob_io_transfer_pastebin=0
F_ojob_io__ojob_io_unix_addSwap=0
F_ojob_io__ojob_io_unix_addUser=0
F_ojob_io__ojob_io_unix_bashDownload=0
F_ojob_io__ojob_io_unix_configVIM=0
F_ojob_io__ojob_io_unix_genSelfExtract=0
F_ojob_io__ojob_io_unix_getLinuxDistro=0
F_ojob_io__ojob_io_unix_hvscs=0
F_ojob_io__ojob_io_unix_listCrons=0
F_ojob_io__ojob_io_unix_ojobComplete=0
F_ojob_io__ojob_io_unix_parseCPUStats=0
F_ojob_io__ojob_io_unix_parseIOStats=0
F_ojob_io__ojob_io_unix_powerline_configPL=0
F_ojob_io__ojob_io_util_osArch=0
F_ojob_io__ojob_io_util_publicHolidays=0
F_ojob_io__ojob_io_util_randomData=0
F_ojob_io__ojob_io_util_toMDTree=0
F_ojob_io__ojob_io_util_vscTunnel=0
F_ojob_io__ojob_io_util_weather=0
F_ojob_io__ojob_io_util_weather2MD=0
F_ojob_io__ojob_io_win_moveWSL=0
F_ojob_io__ojob_io_win_netFirewall=0
F_ojob_io__ojob_io_win_netOptions=0
F_ojob_io__ojob_io_win_setPath=0
F_ojob_io__ojob_io_win_winTerm=0

# Iterate over the arguments
if [ $# -gt 0 ]; then
  FFOUND=0
  for arg in "$@"; do
    if [ "$arg" = "${!#}" ]; then FFOUND=1; break; fi
    # -compile single option
    if [ "$arg" = "-compile" ]; then FFOUND=1; F__compile=0; fi
    # -tojson single option
    if [ "$arg" = "-tojson" ]; then FFOUND=1; F__tojson=0; fi
    # -json single option
    if [ "$arg" = "-json" ]; then FFOUND=1; F__json=0; fi
    # -gb64json single option
    if [ "$arg" = "-gb64json" ]; then FFOUND=1; F__gb64json=0; fi
    # -jobs single option
    if [ "$arg" = "-jobs" ]; then FFOUND=1; F__jobs=0; fi
    # -todo single option
    if [ "$arg" = "-todo" ]; then FFOUND=1; F__todo=0; fi
    # -deps single option
    if [ "$arg" = "-deps" ]; then FFOUND=1; F__deps=0; fi
    # -jobhelp single option
    if [ "$arg" = "-jobhelp" ]; then FFOUND=1; F__jobhelp=0; fi
    # -syntax single option
    if [ "$arg" = "-syntax" ]; then FFOUND=1; F__syntax=0; fi
    # -which single option
    if [ "$arg" = "-which" ]; then FFOUND=1; F__which=0; fi
    # -global single option
    if [ "$arg" = "-global" ]; then FFOUND=1; F__global=0; fi
    # -shortcuts single option
    if [ "$arg" = "-shortcuts" ]; then FFOUND=1; F__shortcuts=0; fi
    # ojob.io/ options
    if [ "$arg" = "ojob.io/_common" ]; then FFOUND=1; F_ojob_io__ojob_io__common=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/check" ]; then FFOUND=1; F_ojob_io__ojob_io_check=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/clean" ]; then FFOUND=1; F_ojob_io__ojob_io_clean=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/compile" ]; then FFOUND=1; F_ojob_io__ojob_io_compile=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/doc" ]; then FFOUND=1; F_ojob_io__ojob_io_doc=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/echo" ]; then FFOUND=1; F_ojob_io__ojob_io_echo=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/envs" ]; then FFOUND=1; F_ojob_io__ojob_io_envs=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/generate" ]; then FFOUND=1; F_ojob_io__ojob_io_generate=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/get" ]; then FFOUND=1; F_ojob_io__ojob_io_get=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/hash" ]; then FFOUND=1; F_ojob_io__ojob_io_hash=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/help" ]; then FFOUND=1; F_ojob_io__ojob_io_help=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/html" ]; then FFOUND=1; F_ojob_io__ojob_io_html=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/list" ]; then FFOUND=1; F_ojob_io__ojob_io_list=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/map" ]; then FFOUND=1; F_ojob_io__ojob_io_map=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/oafp-examples" ]; then FFOUND=1; F_ojob_io__ojob_io_oafp_examples=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/oafp" ]; then FFOUND=1; F_ojob_io__ojob_io_oafp=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/pipe" ]; then FFOUND=1; F_ojob_io__ojob_io_pipe=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/ai/genImage" ]; then FFOUND=1; F_ojob_io__ojob_io_ai_genImage=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/ai/ollamaOps" ]; then FFOUND=1; F_ojob_io__ojob_io_ai_ollamaOps=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/ai/openai" ]; then FFOUND=1; F_ojob_io__ojob_io_ai_openai=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/ai/prompt" ]; then FFOUND=1; F_ojob_io__ojob_io_ai_prompt=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/ai/promptImage" ]; then FFOUND=1; F_ojob_io__ojob_io_ai_promptImage=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/aws/addEC2StartStopLambdas" ]; then FFOUND=1; F_ojob_io__ojob_io_aws_addEC2StartStopLambdas=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/aws/awscli" ]; then FFOUND=1; F_ojob_io__ojob_io_aws_awscli=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/aws/buildLambdaOAFLayers" ]; then FFOUND=1; F_ojob_io__ojob_io_aws_buildLambdaOAFLayers=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/aws/costPerAccount" ]; then FFOUND=1; F_ojob_io__ojob_io_aws_costPerAccount=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/aws/docker2ECR" ]; then FFOUND=1; F_ojob_io__ojob_io_aws_docker2ECR=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/aws/installDockerInAmzn2" ]; then FFOUND=1; F_ojob_io__ojob_io_aws_installDockerInAmzn2=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/aws/listECRImages" ]; then FFOUND=1; F_ojob_io__ojob_io_aws_listECRImages=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/aws/moveEKSPV4AZ" ]; then FFOUND=1; F_ojob_io__ojob_io_aws_moveEKSPV4AZ=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/aws/route53update" ]; then FFOUND=1; F_ojob_io__ojob_io_aws_route53update=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/aws/skopeo" ]; then FFOUND=1; F_ojob_io__ojob_io_aws_skopeo=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/aws/testRegions" ]; then FFOUND=1; F_ojob_io__ojob_io_aws_testRegions=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/cheatsheet/logSQLs" ]; then FFOUND=1; F_ojob_io__ojob_io_cheatsheet_logSQLs=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/cheatsheet/ojob/langs" ]; then FFOUND=1; F_ojob_io__ojob_io_cheatsheet_ojob_langs=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/cheatsheet/ojob/shortcuts" ]; then FFOUND=1; F_ojob_io__ojob_io_cheatsheet_ojob_shortcuts=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/common/oJobBasics" ]; then FFOUND=1; F_ojob_io__ojob_io_common_oJobBasics=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/common/oJobCh" ]; then FFOUND=1; F_ojob_io__ojob_io_common_oJobCh=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/common/oJobDebug" ]; then FFOUND=1; F_ojob_io__ojob_io_common_oJobDebug=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/common/oJobDirector" ]; then FFOUND=1; F_ojob_io__ojob_io_common_oJobDirector=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/common/oJobES" ]; then FFOUND=1; F_ojob_io__ojob_io_common_oJobES=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/common/oJobEmail" ]; then FFOUND=1; F_ojob_io__ojob_io_common_oJobEmail=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/common/oJobGIT" ]; then FFOUND=1; F_ojob_io__ojob_io_common_oJobGIT=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/common/oJobHBS" ]; then FFOUND=1; F_ojob_io__ojob_io_common_oJobHBS=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/common/oJobHTTPd" ]; then FFOUND=1; F_ojob_io__ojob_io_common_oJobHTTPd=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/common/oJobIO" ]; then FFOUND=1; F_ojob_io__ojob_io_common_oJobIO=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/common/oJobManager" ]; then FFOUND=1; F_ojob_io__ojob_io_common_oJobManager=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/common/oJobNet" ]; then FFOUND=1; F_ojob_io__ojob_io_common_oJobNet=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/common/oJobOPack" ]; then FFOUND=1; F_ojob_io__ojob_io_common_oJobOPack=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/common/oJobQueue" ]; then FFOUND=1; F_ojob_io__ojob_io_common_oJobQueue=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/common/oJobRAID" ]; then FFOUND=1; F_ojob_io__ojob_io_common_oJobRAID=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/common/oJobRest" ]; then FFOUND=1; F_ojob_io__ojob_io_common_oJobRest=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/common/oJobSQL" ]; then FFOUND=1; F_ojob_io__ojob_io_common_oJobSQL=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/common/oJobSSH" ]; then FFOUND=1; F_ojob_io__ojob_io_common_oJobSSH=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/common/oJobSVN" ]; then FFOUND=1; F_ojob_io__ojob_io_common_oJobSVN=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/common/oJobTest" ]; then FFOUND=1; F_ojob_io__ojob_io_common_oJobTest=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/common/oJobWatchDog" ]; then FFOUND=1; F_ojob_io__ojob_io_common_oJobWatchDog=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/common/oJobXLS" ]; then FFOUND=1; F_ojob_io__ojob_io_common_oJobXLS=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/common/oJobs" ]; then FFOUND=1; F_ojob_io__ojob_io_common_oJobs=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/common/ojob" ]; then FFOUND=1; F_ojob_io__ojob_io_common_ojob=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/common/ojob" ]; then FFOUND=1; F_ojob_io__ojob_io_common_ojob=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/data/countries" ]; then FFOUND=1; F_ojob_io__ojob_io_data_countries=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/data/itunes" ]; then FFOUND=1; F_ojob_io__ojob_io_data_itunes=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/db/data" ]; then FFOUND=1; F_ojob_io__ojob_io_db_data=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/db/getDriver" ]; then FFOUND=1; F_ojob_io__ojob_io_db_getDriver=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/db/query" ]; then FFOUND=1; F_ojob_io__ojob_io_db_query=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/_common" ]; then FFOUND=1; F_ojob_io__ojob_io_docker__common=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/analyze" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_analyze=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/buildMallocLibs" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_buildMallocLibs=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/carbonyl" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_carbonyl=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/ceph" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_ceph=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/checkKube" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_checkKube=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/collapse" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_collapse=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/compose" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_compose=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/copy" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_copy=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/dind" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_dind=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/elastic" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_elastic=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/etcd" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_etcd=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/expand" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_expand=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/fontconfig" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_fontconfig=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/fromADoc2" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_fromADoc2=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/fromMD2ADoc" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_fromMD2ADoc=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/genSSHKeyGen" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_genSSHKeyGen=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/genSocksServer" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_genSocksServer=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/github" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_github=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/gitpod" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_gitpod=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/gpg" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_gpg=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/hubListTags" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_hubListTags=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/info" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_info=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/install" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_install=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/javaGClog2html" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_javaGClog2html=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/jp2a" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_jp2a=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/k3d" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_k3d=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/listHubRepo" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_listHubRepo=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/mc" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_mc=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/minio" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_minio=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/mitmproxy" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_mitmproxy=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/nginx" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_nginx=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/ojobrt" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_ojobrt=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/onedrive" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_onedrive=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/opensearch" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_opensearch=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/ovpnserver" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_ovpnserver=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/portainer" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_portainer=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/prometheus" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_prometheus=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/redis" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_redis=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/runNetShoot" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_runNetShoot=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/sftp" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_sftp=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/skopeo" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_skopeo=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/squash" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_squash=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/sshd" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_sshd=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/update" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_update=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/fake/smtp" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_fake_smtp=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/fun/matrix" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_fun_matrix=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/fun/vitetries" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_fun_vitetries=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docker/ovpnserver/list" ]; then FFOUND=1; F_ojob_io__ojob_io_docker_ovpnserver_list=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docsify/generateStatic" ]; then FFOUND=1; F_ojob_io__ojob_io_docsify_generateStatic=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docsify/httpd" ]; then FFOUND=1; F_ojob_io__ojob_io_docsify_httpd=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/docsify/liveHttpd" ]; then FFOUND=1; F_ojob_io__ojob_io_docsify_liveHttpd=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/email/send" ]; then FFOUND=1; F_ojob_io__ojob_io_email_send=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/es/export" ]; then FFOUND=1; F_ojob_io__ojob_io_es_export=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/es/import" ]; then FFOUND=1; F_ojob_io__ojob_io_es_import=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/files/htmlIndex" ]; then FFOUND=1; F_ojob_io__ojob_io_files_htmlIndex=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/files/list" ]; then FFOUND=1; F_ojob_io__ojob_io_files_list=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/csv2json" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_csv2json=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/fromBase64" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_fromBase64=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/fromFile" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_fromFile=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/fromJSON" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_fromJSON=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/fromMDTable" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_fromMDTable=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/fromNDJson" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_fromNDJson=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/fromNginx" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_fromNginx=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/fromRes" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_fromRes=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/fromXLS" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_fromXLS=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/fromXML" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_fromXML=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/fromYAML" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_fromYAML=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/genPad" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_genPad=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/html2pdf" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_html2pdf=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/img2md" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_img2md=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/json2yaml" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_json2yaml=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/map" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_map=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/md2html" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_md2html=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/openmetrics2prometheus" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_openmetrics2prometheus=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/pad" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_pad=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/parseMD" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_parseMD=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/str2banner" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_str2banner=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/str2code" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_str2code=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/text2yaml" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_text2yaml=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/toBase64" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_toBase64=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/toHTML" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_toHTML=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/toJSON" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_toJSON=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/toLineChart" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_toLineChart=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/toMDTable" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_toMDTable=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/toOpenMetrics" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_toOpenMetrics=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/toOpenMetrics2" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_toOpenMetrics2=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/toSQL" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_toSQL=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/toUTF8" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_toUTF8=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/toXLS" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_toXLS=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/toYAML" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_toYAML=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/yaml2json" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_yaml2json=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/formats/yaml2text" ]; then FFOUND=1; F_ojob_io__ojob_io_formats_yaml2text=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/fun/bored" ]; then FFOUND=1; F_ojob_io__ojob_io_fun_bored=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/fun/chuckNorris" ]; then FFOUND=1; F_ojob_io__ojob_io_fun_chuckNorris=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/fun/fortune" ]; then FFOUND=1; F_ojob_io__ojob_io_fun_fortune=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/fun/insult" ]; then FFOUND=1; F_ojob_io__ojob_io_fun_insult=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/fun/joke" ]; then FFOUND=1; F_ojob_io__ojob_io_fun_joke=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/fun/zenquotes" ]; then FFOUND=1; F_ojob_io__ojob_io_fun_zenquotes=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/gcp/testRegions" ]; then FFOUND=1; F_ojob_io__ojob_io_gcp_testRegions=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/git/githubCheckIn" ]; then FFOUND=1; F_ojob_io__ojob_io_git_githubCheckIn=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/git/githubEmail" ]; then FFOUND=1; F_ojob_io__ojob_io_git_githubEmail=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/git/githubSSH" ]; then FFOUND=1; F_ojob_io__ojob_io_git_githubSSH=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/git/updateAll" ]; then FFOUND=1; F_ojob_io__ojob_io_git_updateAll=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/git/hub/checkIn" ]; then FFOUND=1; F_ojob_io__ojob_io_git_hub_checkIn=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/git/hub/contentIn" ]; then FFOUND=1; F_ojob_io__ojob_io_git_hub_contentIn=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/git/hub/email" ]; then FFOUND=1; F_ojob_io__ojob_io_git_hub_email=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/git/hub/genAction" ]; then FFOUND=1; F_ojob_io__ojob_io_git_hub_genAction=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/git/hub/workflows" ]; then FFOUND=1; F_ojob_io__ojob_io_git_hub_workflows=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/grid/generate" ]; then FFOUND=1; F_ojob_io__ojob_io_grid_generate=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/grid/show" ]; then FFOUND=1; F_ojob_io__ojob_io_grid_show=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/grid/data/example" ]; then FFOUND=1; F_ojob_io__ojob_io_grid_data_example=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/grid/data/gc" ]; then FFOUND=1; F_ojob_io__ojob_io_grid_data_gc=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/grid/data/gc2" ]; then FFOUND=1; F_ojob_io__ojob_io_grid_data_gc2=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/grid/data/kubeNode" ]; then FFOUND=1; F_ojob_io__ojob_io_grid_data_kubeNode=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/grid/data/kubePod" ]; then FFOUND=1; F_ojob_io__ojob_io_grid_data_kubePod=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/grid/data/oaf" ]; then FFOUND=1; F_ojob_io__ojob_io_grid_data_oaf=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/h2/console" ]; then FFOUND=1; F_ojob_io__ojob_io_h2_console=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/h2/export" ]; then FFOUND=1; F_ojob_io__ojob_io_h2_export=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/h2/import" ]; then FFOUND=1; F_ojob_io__ojob_io_h2_import=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/h2/onlineMigration" ]; then FFOUND=1; F_ojob_io__ojob_io_h2_onlineMigration=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/hello/world" ]; then FFOUND=1; F_ojob_io__ojob_io_hello_world=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/httpServers/EasyHTTPSd" ]; then FFOUND=1; F_ojob_io__ojob_io_httpServers_EasyHTTPSd=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/httpServers/EasyHTTPd" ]; then FFOUND=1; F_ojob_io__ojob_io_httpServers_EasyHTTPd=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/httpServers/EchoHTTPd" ]; then FFOUND=1; F_ojob_io__ojob_io_httpServers_EchoHTTPd=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/httpServers/HTTPd" ]; then FFOUND=1; F_ojob_io__ojob_io_httpServers_HTTPd=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/httpServers/MetricsHTTPd" ]; then FFOUND=1; F_ojob_io__ojob_io_httpServers_MetricsHTTPd=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/httpServers/RedirectHTTPd" ]; then FFOUND=1; F_ojob_io__ojob_io_httpServers_RedirectHTTPd=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/httpServers/uploadHTTPSd" ]; then FFOUND=1; F_ojob_io__ojob_io_httpServers_uploadHTTPSd=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/httpServers/uploadHTTPd" ]; then FFOUND=1; F_ojob_io__ojob_io_httpServers_uploadHTTPd=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/ignite/getStartEnv" ]; then FFOUND=1; F_ojob_io__ojob_io_ignite_getStartEnv=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/java/addCert" ]; then FFOUND=1; F_ojob_io__ojob_io_java_addCert=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/java/certs" ]; then FFOUND=1; F_ojob_io__ojob_io_java_certs=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/java/checkTLS" ]; then FFOUND=1; F_ojob_io__ojob_io_java_checkTLS=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/java/classVersions" ]; then FFOUND=1; F_ojob_io__ojob_io_java_classVersions=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/java/download" ]; then FFOUND=1; F_ojob_io__ojob_io_java_download=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/java/findProc" ]; then FFOUND=1; F_ojob_io__ojob_io_java_findProc=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/java/gc" ]; then FFOUND=1; F_ojob_io__ojob_io_java_gc=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/java/jmxExplorer" ]; then FFOUND=1; F_ojob_io__ojob_io_java_jmxExplorer=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/java/grafana/gc" ]; then FFOUND=1; F_ojob_io__ojob_io_java_grafana_gc=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/backup" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_backup=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/cmd" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_cmd=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/criOps" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_criOps=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/dash" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_dash=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/deployMetrics" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_deployMetrics=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/expandSecret" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_expandSecret=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/findPod" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_findPod=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/genConfigMap" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_genConfigMap=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/genOJobRT" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_genOJobRT=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/genRegUI" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_genRegUI=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/genSecret" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_genSecret=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/genSocksServer" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_genSocksServer=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/getCriCtl" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_getCriCtl=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/getHelm" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_getHelm=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/getK0S" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_getK0S=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/getK3S" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_getK3S=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/getK9S" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_getK9S=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/getKrew" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_getKrew=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/getKubectl" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_getKubectl=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/getKubectlConfig" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_getKubectlConfig=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/getSocksBrowser" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_getSocksBrowser=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/getUsedBytes" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_getUsedBytes=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/nodeResources" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_nodeResources=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/podResources" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_podResources=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/podSec" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_podSec=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/prometheus" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_prometheus=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/prometheus2" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_prometheus2=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/query" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_query=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/runNetShoot" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_runNetShoot=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/kube/templates/echo" ]; then FFOUND=1; F_ojob_io__ojob_io_kube_templates_echo=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/langs/yaml" ]; then FFOUND=1; F_ojob_io__ojob_io_langs_yaml=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/ldap/get" ]; then FFOUND=1; F_ojob_io__ojob_io_ldap_get=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/mac/flushDNS" ]; then FFOUND=1; F_ojob_io__ojob_io_mac_flushDNS=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/miniServices/HelloWorld" ]; then FFOUND=1; F_ojob_io__ojob_io_miniServices_HelloWorld=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/miniServices/TimeService" ]; then FFOUND=1; F_ojob_io__ojob_io_miniServices_TimeService=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/miniServices/bg-traefik" ]; then FFOUND=1; F_ojob_io__ojob_io_miniServices_bg_traefik=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/miniServices/lb-traefik" ]; then FFOUND=1; F_ojob_io__ojob_io_miniServices_lb_traefik=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/net/cSpeedTest" ]; then FFOUND=1; F_ojob_io__ojob_io_net_cSpeedTest=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/net/doh" ]; then FFOUND=1; F_ojob_io__ojob_io_net_doh=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/net/getTermshark" ]; then FFOUND=1; F_ojob_io__ojob_io_net_getTermshark=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/net/jdbc" ]; then FFOUND=1; F_ojob_io__ojob_io_net_jdbc=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/net/latency" ]; then FFOUND=1; F_ojob_io__ojob_io_net_latency=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/net/publicIP" ]; then FFOUND=1; F_ojob_io__ojob_io_net_publicIP=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/net/socksServer" ]; then FFOUND=1; F_ojob_io__ojob_io_net_socksServer=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/net/speedtest" ]; then FFOUND=1; F_ojob_io__ojob_io_net_speedtest=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/net/sslDates" ]; then FFOUND=1; F_ojob_io__ojob_io_net_sslDates=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/net/testHosts" ]; then FFOUND=1; F_ojob_io__ojob_io_net_testHosts=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/net/whois" ]; then FFOUND=1; F_ojob_io__ojob_io_net_whois=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/adoptium" ]; then FFOUND=1; F_ojob_io__ojob_io_news_adoptium=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/aws" ]; then FFOUND=1; F_ojob_io__ojob_io_news_aws=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/awsnews" ]; then FFOUND=1; F_ojob_io__ojob_io_news_awsnews=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/azure" ]; then FFOUND=1; F_ojob_io__ojob_io_news_azure=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/bbc" ]; then FFOUND=1; F_ojob_io__ojob_io_news_bbc=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/cnet" ]; then FFOUND=1; F_ojob_io__ojob_io_news_cnet=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/engadget" ]; then FFOUND=1; F_ojob_io__ojob_io_news_engadget=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/fb" ]; then FFOUND=1; F_ojob_io__ojob_io_news_fb=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/gcp" ]; then FFOUND=1; F_ojob_io__ojob_io_news_gcp=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/github" ]; then FFOUND=1; F_ojob_io__ojob_io_news_github=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/githubChangeLog" ]; then FFOUND=1; F_ojob_io__ojob_io_news_githubChangeLog=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/google" ]; then FFOUND=1; F_ojob_io__ojob_io_news_google=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/hackernews" ]; then FFOUND=1; F_ojob_io__ojob_io_news_hackernews=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/helm" ]; then FFOUND=1; F_ojob_io__ojob_io_news_helm=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/k8s" ]; then FFOUND=1; F_ojob_io__ojob_io_news_k8s=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/macrumors" ]; then FFOUND=1; F_ojob_io__ojob_io_news_macrumors=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/microsoft" ]; then FFOUND=1; F_ojob_io__ojob_io_news_microsoft=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/microsoftInsider" ]; then FFOUND=1; F_ojob_io__ojob_io_news_microsoftInsider=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/nytimes" ]; then FFOUND=1; F_ojob_io__ojob_io_news_nytimes=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/openai" ]; then FFOUND=1; F_ojob_io__ojob_io_news_openai=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/oraclecloud" ]; then FFOUND=1; F_ojob_io__ojob_io_news_oraclecloud=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/ovh" ]; then FFOUND=1; F_ojob_io__ojob_io_news_ovh=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/redhatcloud" ]; then FFOUND=1; F_ojob_io__ojob_io_news_redhatcloud=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/rss" ]; then FFOUND=1; F_ojob_io__ojob_io_news_rss=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/scaleway" ]; then FFOUND=1; F_ojob_io__ojob_io_news_scaleway=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/slashdot" ]; then FFOUND=1; F_ojob_io__ojob_io_news_slashdot=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/techcrunch" ]; then FFOUND=1; F_ojob_io__ojob_io_news_techcrunch=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/theregister" ]; then FFOUND=1; F_ojob_io__ojob_io_news_theregister=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/theverge" ]; then FFOUND=1; F_ojob_io__ojob_io_news_theverge=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/tomshardware" ]; then FFOUND=1; F_ojob_io__ojob_io_news_tomshardware=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/news/wired" ]; then FFOUND=1; F_ojob_io__ojob_io_news_wired=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/oaf/aPack" ]; then FFOUND=1; F_ojob_io__ojob_io_oaf_aPack=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/oaf/build" ]; then FFOUND=1; F_ojob_io__ojob_io_oaf_build=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/oaf/changeDist" ]; then FFOUND=1; F_ojob_io__ojob_io_oaf_changeDist=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/oaf/checkOAFJars" ]; then FFOUND=1; F_ojob_io__ojob_io_oaf_checkOAFJars=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/oaf/colorFormats" ]; then FFOUND=1; F_ojob_io__ojob_io_oaf_colorFormats=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/oaf/colorMap" ]; then FFOUND=1; F_ojob_io__ojob_io_oaf_colorMap=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/oaf/compile" ]; then FFOUND=1; F_ojob_io__ojob_io_oaf_compile=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/oaf/completion" ]; then FFOUND=1; F_ojob_io__ojob_io_oaf_completion=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/oaf/debug" ]; then FFOUND=1; F_ojob_io__ojob_io_oaf_debug=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/oaf/genCh" ]; then FFOUND=1; F_ojob_io__ojob_io_oaf_genCh=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/oaf/genODoc" ]; then FFOUND=1; F_ojob_io__ojob_io_oaf_genODoc=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/oaf/generate" ]; then FFOUND=1; F_ojob_io__ojob_io_oaf_generate=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/oaf/info" ]; then FFOUND=1; F_ojob_io__ojob_io_oaf_info=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/oaf/javaUpdate" ]; then FFOUND=1; F_ojob_io__ojob_io_oaf_javaUpdate=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/oaf/key" ]; then FFOUND=1; F_ojob_io__ojob_io_oaf_key=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/oaf/mavenGetJars" ]; then FFOUND=1; F_ojob_io__ojob_io_oaf_mavenGetJars=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/oaf/minidb" ]; then FFOUND=1; F_ojob_io__ojob_io_oaf_minidb=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/oaf/pack" ]; then FFOUND=1; F_ojob_io__ojob_io_oaf_pack=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/oaf/packBin" ]; then FFOUND=1; F_ojob_io__ojob_io_oaf_packBin=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/oaf/parseCron" ]; then FFOUND=1; F_ojob_io__ojob_io_oaf_parseCron=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/oaf/pyoaf" ]; then FFOUND=1; F_ojob_io__ojob_io_oaf_pyoaf=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/oaf/symlinks" ]; then FFOUND=1; F_ojob_io__ojob_io_oaf_symlinks=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/oaf/versions" ]; then FFOUND=1; F_ojob_io__ojob_io_oaf_versions=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/oaf/winTerm" ]; then FFOUND=1; F_ojob_io__ojob_io_oaf_winTerm=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/obook/generate" ]; then FFOUND=1; F_ojob_io__ojob_io_obook_generate=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/obook/run" ]; then FFOUND=1; F_ojob_io__ojob_io_obook_run=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/ojob/code" ]; then FFOUND=1; F_ojob_io__ojob_io_ojob_code=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/ojob/compile" ]; then FFOUND=1; F_ojob_io__ojob_io_ojob_compile=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/ojob/genJob" ]; then FFOUND=1; F_ojob_io__ojob_io_ojob_genJob=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/ojob/genMD" ]; then FFOUND=1; F_ojob_io__ojob_io_ojob_genMD=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/ojob/gui" ]; then FFOUND=1; F_ojob_io__ojob_io_ojob_gui=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/ojob/listCommon" ]; then FFOUND=1; F_ojob_io__ojob_io_ojob_listCommon=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/ojob/logParser" ]; then FFOUND=1; F_ojob_io__ojob_io_ojob_logParser=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/ojob/ojobioHashList" ]; then FFOUND=1; F_ojob_io__ojob_io_ojob_ojobioHashList=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/ojob/script" ]; then FFOUND=1; F_ojob_io__ojob_io_ojob_script=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/ojob/service" ]; then FFOUND=1; F_ojob_io__ojob_io_ojob_service=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/ojob/templates/cron" ]; then FFOUND=1; F_ojob_io__ojob_io_ojob_templates_cron=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/ojob/templates/httpd" ]; then FFOUND=1; F_ojob_io__ojob_io_ojob_templates_httpd=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/ojob/templates/pods" ]; then FFOUND=1; F_ojob_io__ojob_io_ojob_templates_pods=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/ojob/templates/ssh" ]; then FFOUND=1; F_ojob_io__ojob_io_ojob_templates_ssh=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/ojob/templates/test" ]; then FFOUND=1; F_ojob_io__ojob_io_ojob_templates_test=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/oneliner/generate" ]; then FFOUND=1; F_ojob_io__ojob_io_oneliner_generate=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/oneliner/httpd" ]; then FFOUND=1; F_ojob_io__ojob_io_oneliner_httpd=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/oneliner/ojobc" ]; then FFOUND=1; F_ojob_io__ojob_io_oneliner_ojobc=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/opack/compileOPacks" ]; then FFOUND=1; F_ojob_io__ojob_io_opack_compileOPacks=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/opack/userRebuild" ]; then FFOUND=1; F_ojob_io__ojob_io_opack_userRebuild=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/pi/createWiFi" ]; then FFOUND=1; F_ojob_io__ojob_io_pi_createWiFi=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/pi/getTemp" ]; then FFOUND=1; F_ojob_io__ojob_io_pi_getTemp=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/raid/_common" ]; then FFOUND=1; F_ojob_io__ojob_io_raid__common=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/raid/checkFlowManager" ]; then FFOUND=1; F_ojob_io__ojob_io_raid_checkFlowManager=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/raid/logParser" ]; then FFOUND=1; F_ojob_io__ojob_io_raid_logParser=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/raid/logParser" ]; then FFOUND=1; F_ojob_io__ojob_io_raid_logParser=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/raid/logParser2" ]; then FFOUND=1; F_ojob_io__ojob_io_raid_logParser2=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/raid/logParser2" ]; then FFOUND=1; F_ojob_io__ojob_io_raid_logParser2=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/raid/omtExplorer" ]; then FFOUND=1; F_ojob_io__ojob_io_raid_omtExplorer=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/raid/ping" ]; then FFOUND=1; F_ojob_io__ojob_io_raid_ping=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/raid/cir/ops" ]; then FFOUND=1; F_ojob_io__ojob_io_raid_cir_ops=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/raid/formats/fromPrettyPrint" ]; then FFOUND=1; F_ojob_io__ojob_io_raid_formats_fromPrettyPrint=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/raid/formats/toPrettyPrint" ]; then FFOUND=1; F_ojob_io__ojob_io_raid_formats_toPrettyPrint=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/raid/har/har2queries" ]; then FFOUND=1; F_ojob_io__ojob_io_raid_har_har2queries=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/raid/har/testQueries" ]; then FFOUND=1; F_ojob_io__ojob_io_raid_har_testQueries=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/raid/logicalfield/ops" ]; then FFOUND=1; F_ojob_io__ojob_io_raid_logicalfield_ops=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/raid/mashup/ops" ]; then FFOUND=1; F_ojob_io__ojob_io_raid_mashup_ops=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/rocksdb/stats" ]; then FFOUND=1; F_ojob_io__ojob_io_rocksdb_stats=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/s3/getMC" ]; then FFOUND=1; F_ojob_io__ojob_io_s3_getMC=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/s3/httpCheck" ]; then FFOUND=1; F_ojob_io__ojob_io_s3_httpCheck=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/s3/ops" ]; then FFOUND=1; F_ojob_io__ojob_io_s3_ops=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/sec/genKeyPair" ]; then FFOUND=1; F_ojob_io__ojob_io_sec_genKeyPair=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/sec/genPassword" ]; then FFOUND=1; F_ojob_io__ojob_io_sec_genPassword=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/sec/genSecBadge" ]; then FFOUND=1; F_ojob_io__ojob_io_sec_genSecBadge=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/sec/ops" ]; then FFOUND=1; F_ojob_io__ojob_io_sec_ops=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/sec/trivy" ]; then FFOUND=1; F_ojob_io__ojob_io_sec_trivy=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/sec/trivySummary" ]; then FFOUND=1; F_ojob_io__ojob_io_sec_trivySummary=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/ssh/cleanHost" ]; then FFOUND=1; F_ojob_io__ojob_io_ssh_cleanHost=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/ssh/tunnel" ]; then FFOUND=1; F_ojob_io__ojob_io_ssh_tunnel=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/telco/countryByCode" ]; then FFOUND=1; F_ojob_io__ojob_io_telco_countryByCode=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/telco/phoneNumber" ]; then FFOUND=1; F_ojob_io__ojob_io_telco_phoneNumber=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/template/apply" ]; then FFOUND=1; F_ojob_io__ojob_io_template_apply=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/time/current" ]; then FFOUND=1; F_ojob_io__ojob_io_time_current=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/time/eclipse" ]; then FFOUND=1; F_ojob_io__ojob_io_time_eclipse=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/time/zone" ]; then FFOUND=1; F_ojob_io__ojob_io_time_zone=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/time/zones" ]; then FFOUND=1; F_ojob_io__ojob_io_time_zones=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/transfer/pastebin" ]; then FFOUND=1; F_ojob_io__ojob_io_transfer_pastebin=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/unix/addSwap" ]; then FFOUND=1; F_ojob_io__ojob_io_unix_addSwap=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/unix/addUser" ]; then FFOUND=1; F_ojob_io__ojob_io_unix_addUser=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/unix/bashDownload" ]; then FFOUND=1; F_ojob_io__ojob_io_unix_bashDownload=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/unix/configVIM" ]; then FFOUND=1; F_ojob_io__ojob_io_unix_configVIM=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/unix/genSelfExtract" ]; then FFOUND=1; F_ojob_io__ojob_io_unix_genSelfExtract=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/unix/getLinuxDistro" ]; then FFOUND=1; F_ojob_io__ojob_io_unix_getLinuxDistro=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/unix/hvscs" ]; then FFOUND=1; F_ojob_io__ojob_io_unix_hvscs=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/unix/listCrons" ]; then FFOUND=1; F_ojob_io__ojob_io_unix_listCrons=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/unix/ojobComplete" ]; then FFOUND=1; F_ojob_io__ojob_io_unix_ojobComplete=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/unix/parseCPUStats" ]; then FFOUND=1; F_ojob_io__ojob_io_unix_parseCPUStats=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/unix/parseIOStats" ]; then FFOUND=1; F_ojob_io__ojob_io_unix_parseIOStats=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/unix/powerline/configPL" ]; then FFOUND=1; F_ojob_io__ojob_io_unix_powerline_configPL=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/util/osArch" ]; then FFOUND=1; F_ojob_io__ojob_io_util_osArch=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/util/publicHolidays" ]; then FFOUND=1; F_ojob_io__ojob_io_util_publicHolidays=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/util/randomData" ]; then FFOUND=1; F_ojob_io__ojob_io_util_randomData=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/util/toMDTree" ]; then FFOUND=1; F_ojob_io__ojob_io_util_toMDTree=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/util/vscTunnel" ]; then FFOUND=1; F_ojob_io__ojob_io_util_vscTunnel=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/util/weather" ]; then FFOUND=1; F_ojob_io__ojob_io_util_weather=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/util/weather2MD" ]; then FFOUND=1; F_ojob_io__ojob_io_util_weather2MD=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/win/moveWSL" ]; then FFOUND=1; F_ojob_io__ojob_io_win_moveWSL=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/win/netFirewall" ]; then FFOUND=1; F_ojob_io__ojob_io_win_netFirewall=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/win/netOptions" ]; then FFOUND=1; F_ojob_io__ojob_io_win_netOptions=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/win/setPath" ]; then FFOUND=1; F_ojob_io__ojob_io_win_setPath=1; F_ojob_io_=0; fi
    if [ "$arg" = "ojob.io/win/winTerm" ]; then FFOUND=1; F_ojob_io__ojob_io_win_winTerm=1; F_ojob_io_=0; fi
  done
fi

# Print completion for -compile
if [ $F__compile -eq 1 ]; then
  echo "-compile	Compile all includes and current file into a single yaml output."
  
fi
# Print completion for -tojson
if [ $F__tojson -eq 1 ]; then
  echo "-tojson	Outputs all includes and current file into a single json output."
  
fi
# Print completion for -json
if [ $F__json -eq 1 ]; then
  echo "-json	Sets argument __format to 'json' for used with ow.oJob.output."
  
fi
# Print completion for -gb64json
if [ $F__gb64json -eq 1 ]; then
  echo "-gb64json	Sets argument __format to 'gb64json' for used with ow.oJob.output."
  
fi
# Print completion for -jobs
if [ $F__jobs -eq 1 ]; then
  echo "-jobs	List all jobs available."
  
fi
# Print completion for -todo
if [ $F__todo -eq 1 ]; then
  echo "-todo	List the final todo list."
  
fi
# Print completion for -deps
if [ $F__deps -eq 1 ]; then
  echo "-deps	Draws a list of dependencies of todo jobs on a file."
  
fi
# Print completion for -jobhelp
if [ $F__jobhelp -eq 1 ]; then
  echo "-jobhelp	Display any available help information for a job."
  
fi
# Print completion for -syntax
if [ $F__syntax -eq 1 ]; then
  echo "-syntax	Display the ojob syntax in yaml."
  
fi
# Print completion for -which
if [ $F__which -eq 1 ]; then
  echo "-which	Determines from where an oJob will be loaded from."
  
fi
# Print completion for -global
if [ $F__global -eq 1 ]; then
  echo "-global	List global jobs for this installation."
  
fi
# Print completion for -shortcuts
if [ $F__shortcuts -eq 1 ]; then
  echo "-shortcuts	Lists the included ojob shortcuts."
  
fi
# Print completion for ojob.io/
if [ $F_ojob_io_ -eq 1 ]; then
  echo "ojob.io/	oJob.io online repository"
  
  echo "ojob.io/_common	"
  echo "ojob.io/check	"
  echo "ojob.io/clean	"
  echo "ojob.io/compile	"
  echo "ojob.io/doc	"
  echo "ojob.io/echo	"
  echo "ojob.io/envs	"
  echo "ojob.io/generate	"
  echo "ojob.io/get	"
  echo "ojob.io/hash	"
  echo "ojob.io/help	"
  echo "ojob.io/html	"
  echo "ojob.io/list	"
  echo "ojob.io/map	"
  echo "ojob.io/oafp-examples	"
  echo "ojob.io/oafp	"
  echo "ojob.io/pipe	"
  echo "ojob.io/ai/genImage	"
  echo "ojob.io/ai/ollamaOps	"
  echo "ojob.io/ai/openai	"
  echo "ojob.io/ai/prompt	"
  echo "ojob.io/ai/promptImage	"
  echo "ojob.io/aws/addEC2StartStopLambdas	"
  echo "ojob.io/aws/awscli	"
  echo "ojob.io/aws/buildLambdaOAFLayers	"
  echo "ojob.io/aws/costPerAccount	"
  echo "ojob.io/aws/docker2ECR	"
  echo "ojob.io/aws/installDockerInAmzn2	"
  echo "ojob.io/aws/listECRImages	"
  echo "ojob.io/aws/moveEKSPV4AZ	"
  echo "ojob.io/aws/route53update	"
  echo "ojob.io/aws/skopeo	"
  echo "ojob.io/aws/testRegions	"
  echo "ojob.io/cheatsheet/logSQLs	"
  echo "ojob.io/cheatsheet/ojob/langs	"
  echo "ojob.io/cheatsheet/ojob/shortcuts	"
  echo "ojob.io/common/oJobBasics	"
  echo "ojob.io/common/oJobCh	"
  echo "ojob.io/common/oJobDebug	"
  echo "ojob.io/common/oJobDirector	"
  echo "ojob.io/common/oJobES	"
  echo "ojob.io/common/oJobEmail	"
  echo "ojob.io/common/oJobGIT	"
  echo "ojob.io/common/oJobHBS	"
  echo "ojob.io/common/oJobHTTPd	"
  echo "ojob.io/common/oJobIO	"
  echo "ojob.io/common/oJobManager	"
  echo "ojob.io/common/oJobNet	"
  echo "ojob.io/common/oJobOPack	"
  echo "ojob.io/common/oJobQueue	"
  echo "ojob.io/common/oJobRAID	"
  echo "ojob.io/common/oJobRest	"
  echo "ojob.io/common/oJobSQL	"
  echo "ojob.io/common/oJobSSH	"
  echo "ojob.io/common/oJobSVN	"
  echo "ojob.io/common/oJobTest	"
  echo "ojob.io/common/oJobWatchDog	"
  echo "ojob.io/common/oJobXLS	"
  echo "ojob.io/common/oJobs	"
  echo "ojob.io/common/ojob	"
  echo "ojob.io/common/ojob	"
  echo "ojob.io/data/countries	"
  echo "ojob.io/data/itunes	"
  echo "ojob.io/db/data	"
  echo "ojob.io/db/getDriver	"
  echo "ojob.io/db/query	"
  echo "ojob.io/docker/_common	"
  echo "ojob.io/docker/analyze	"
  echo "ojob.io/docker/buildMallocLibs	"
  echo "ojob.io/docker/carbonyl	"
  echo "ojob.io/docker/ceph	"
  echo "ojob.io/docker/checkKube	"
  echo "ojob.io/docker/collapse	"
  echo "ojob.io/docker/compose	"
  echo "ojob.io/docker/copy	"
  echo "ojob.io/docker/dind	"
  echo "ojob.io/docker/elastic	"
  echo "ojob.io/docker/etcd	"
  echo "ojob.io/docker/expand	"
  echo "ojob.io/docker/fontconfig	"
  echo "ojob.io/docker/fromADoc2	"
  echo "ojob.io/docker/fromMD2ADoc	"
  echo "ojob.io/docker/genSSHKeyGen	"
  echo "ojob.io/docker/genSocksServer	"
  echo "ojob.io/docker/github	"
  echo "ojob.io/docker/gitpod	"
  echo "ojob.io/docker/gpg	"
  echo "ojob.io/docker/hubListTags	"
  echo "ojob.io/docker/info	"
  echo "ojob.io/docker/install	"
  echo "ojob.io/docker/javaGClog2html	"
  echo "ojob.io/docker/jp2a	"
  echo "ojob.io/docker/k3d	"
  echo "ojob.io/docker/listHubRepo	"
  echo "ojob.io/docker/mc	"
  echo "ojob.io/docker/minio	"
  echo "ojob.io/docker/mitmproxy	"
  echo "ojob.io/docker/nginx	"
  echo "ojob.io/docker/ojobrt	"
  echo "ojob.io/docker/onedrive	"
  echo "ojob.io/docker/opensearch	"
  echo "ojob.io/docker/ovpnserver	"
  echo "ojob.io/docker/portainer	"
  echo "ojob.io/docker/prometheus	"
  echo "ojob.io/docker/redis	"
  echo "ojob.io/docker/runNetShoot	"
  echo "ojob.io/docker/sftp	"
  echo "ojob.io/docker/skopeo	"
  echo "ojob.io/docker/squash	"
  echo "ojob.io/docker/sshd	"
  echo "ojob.io/docker/update	"
  echo "ojob.io/docker/fake/smtp	"
  echo "ojob.io/docker/fun/matrix	"
  echo "ojob.io/docker/fun/vitetries	"
  echo "ojob.io/docker/ovpnserver/list	"
  echo "ojob.io/docsify/generateStatic	"
  echo "ojob.io/docsify/httpd	"
  echo "ojob.io/docsify/liveHttpd	"
  echo "ojob.io/email/send	"
  echo "ojob.io/es/export	"
  echo "ojob.io/es/import	"
  echo "ojob.io/files/htmlIndex	"
  echo "ojob.io/files/list	"
  echo "ojob.io/formats/csv2json	"
  echo "ojob.io/formats/fromBase64	"
  echo "ojob.io/formats/fromFile	"
  echo "ojob.io/formats/fromJSON	"
  echo "ojob.io/formats/fromMDTable	"
  echo "ojob.io/formats/fromNDJson	"
  echo "ojob.io/formats/fromNginx	"
  echo "ojob.io/formats/fromRes	"
  echo "ojob.io/formats/fromXLS	"
  echo "ojob.io/formats/fromXML	"
  echo "ojob.io/formats/fromYAML	"
  echo "ojob.io/formats/genPad	"
  echo "ojob.io/formats/html2pdf	"
  echo "ojob.io/formats/img2md	"
  echo "ojob.io/formats/json2yaml	"
  echo "ojob.io/formats/map	"
  echo "ojob.io/formats/md2html	"
  echo "ojob.io/formats/openmetrics2prometheus	"
  echo "ojob.io/formats/pad	"
  echo "ojob.io/formats/parseMD	"
  echo "ojob.io/formats/str2banner	"
  echo "ojob.io/formats/str2code	"
  echo "ojob.io/formats/text2yaml	"
  echo "ojob.io/formats/toBase64	"
  echo "ojob.io/formats/toHTML	"
  echo "ojob.io/formats/toJSON	"
  echo "ojob.io/formats/toLineChart	"
  echo "ojob.io/formats/toMDTable	"
  echo "ojob.io/formats/toOpenMetrics	"
  echo "ojob.io/formats/toOpenMetrics2	"
  echo "ojob.io/formats/toSQL	"
  echo "ojob.io/formats/toUTF8	"
  echo "ojob.io/formats/toXLS	"
  echo "ojob.io/formats/toYAML	"
  echo "ojob.io/formats/yaml2json	"
  echo "ojob.io/formats/yaml2text	"
  echo "ojob.io/fun/bored	"
  echo "ojob.io/fun/chuckNorris	"
  echo "ojob.io/fun/fortune	"
  echo "ojob.io/fun/insult	"
  echo "ojob.io/fun/joke	"
  echo "ojob.io/fun/zenquotes	"
  echo "ojob.io/gcp/testRegions	"
  echo "ojob.io/git/githubCheckIn	"
  echo "ojob.io/git/githubEmail	"
  echo "ojob.io/git/githubSSH	"
  echo "ojob.io/git/updateAll	"
  echo "ojob.io/git/hub/checkIn	"
  echo "ojob.io/git/hub/contentIn	"
  echo "ojob.io/git/hub/email	"
  echo "ojob.io/git/hub/genAction	"
  echo "ojob.io/git/hub/workflows	"
  echo "ojob.io/grid/generate	"
  echo "ojob.io/grid/show	"
  echo "ojob.io/grid/data/example	"
  echo "ojob.io/grid/data/gc	"
  echo "ojob.io/grid/data/gc2	"
  echo "ojob.io/grid/data/kubeNode	"
  echo "ojob.io/grid/data/kubePod	"
  echo "ojob.io/grid/data/oaf	"
  echo "ojob.io/h2/console	"
  echo "ojob.io/h2/export	"
  echo "ojob.io/h2/import	"
  echo "ojob.io/h2/onlineMigration	"
  echo "ojob.io/hello/world	"
  echo "ojob.io/httpServers/EasyHTTPSd	"
  echo "ojob.io/httpServers/EasyHTTPd	"
  echo "ojob.io/httpServers/EchoHTTPd	"
  echo "ojob.io/httpServers/HTTPd	"
  echo "ojob.io/httpServers/MetricsHTTPd	"
  echo "ojob.io/httpServers/RedirectHTTPd	"
  echo "ojob.io/httpServers/uploadHTTPSd	"
  echo "ojob.io/httpServers/uploadHTTPd	"
  echo "ojob.io/ignite/getStartEnv	"
  echo "ojob.io/java/addCert	"
  echo "ojob.io/java/certs	"
  echo "ojob.io/java/checkTLS	"
  echo "ojob.io/java/classVersions	"
  echo "ojob.io/java/download	"
  echo "ojob.io/java/findProc	"
  echo "ojob.io/java/gc	"
  echo "ojob.io/java/jmxExplorer	"
  echo "ojob.io/java/grafana/gc	"
  echo "ojob.io/kube/backup	"
  echo "ojob.io/kube/cmd	"
  echo "ojob.io/kube/criOps	"
  echo "ojob.io/kube/dash	"
  echo "ojob.io/kube/deployMetrics	"
  echo "ojob.io/kube/expandSecret	"
  echo "ojob.io/kube/findPod	"
  echo "ojob.io/kube/genConfigMap	"
  echo "ojob.io/kube/genOJobRT	"
  echo "ojob.io/kube/genRegUI	"
  echo "ojob.io/kube/genSecret	"
  echo "ojob.io/kube/genSocksServer	"
  echo "ojob.io/kube/getCriCtl	"
  echo "ojob.io/kube/getHelm	"
  echo "ojob.io/kube/getK0S	"
  echo "ojob.io/kube/getK3S	"
  echo "ojob.io/kube/getK9S	"
  echo "ojob.io/kube/getKrew	"
  echo "ojob.io/kube/getKubectl	"
  echo "ojob.io/kube/getKubectlConfig	"
  echo "ojob.io/kube/getSocksBrowser	"
  echo "ojob.io/kube/getUsedBytes	"
  echo "ojob.io/kube/nodeResources	"
  echo "ojob.io/kube/podResources	"
  echo "ojob.io/kube/podSec	"
  echo "ojob.io/kube/prometheus	"
  echo "ojob.io/kube/prometheus2	"
  echo "ojob.io/kube/query	"
  echo "ojob.io/kube/runNetShoot	"
  echo "ojob.io/kube/templates/echo	"
  echo "ojob.io/langs/yaml	"
  echo "ojob.io/ldap/get	"
  echo "ojob.io/mac/flushDNS	"
  echo "ojob.io/miniServices/HelloWorld	"
  echo "ojob.io/miniServices/TimeService	"
  echo "ojob.io/miniServices/bg-traefik	"
  echo "ojob.io/miniServices/lb-traefik	"
  echo "ojob.io/net/cSpeedTest	"
  echo "ojob.io/net/doh	"
  echo "ojob.io/net/getTermshark	"
  echo "ojob.io/net/jdbc	"
  echo "ojob.io/net/latency	"
  echo "ojob.io/net/publicIP	"
  echo "ojob.io/net/socksServer	"
  echo "ojob.io/net/speedtest	"
  echo "ojob.io/net/sslDates	"
  echo "ojob.io/net/testHosts	"
  echo "ojob.io/net/whois	"
  echo "ojob.io/news/adoptium	"
  echo "ojob.io/news/aws	"
  echo "ojob.io/news/awsnews	"
  echo "ojob.io/news/azure	"
  echo "ojob.io/news/bbc	"
  echo "ojob.io/news/cnet	"
  echo "ojob.io/news/engadget	"
  echo "ojob.io/news/fb	"
  echo "ojob.io/news/gcp	"
  echo "ojob.io/news/github	"
  echo "ojob.io/news/githubChangeLog	"
  echo "ojob.io/news/google	"
  echo "ojob.io/news/hackernews	"
  echo "ojob.io/news/helm	"
  echo "ojob.io/news/k8s	"
  echo "ojob.io/news/macrumors	"
  echo "ojob.io/news/microsoft	"
  echo "ojob.io/news/microsoftInsider	"
  echo "ojob.io/news/nytimes	"
  echo "ojob.io/news/openai	"
  echo "ojob.io/news/oraclecloud	"
  echo "ojob.io/news/ovh	"
  echo "ojob.io/news/redhatcloud	"
  echo "ojob.io/news/rss	"
  echo "ojob.io/news/scaleway	"
  echo "ojob.io/news/slashdot	"
  echo "ojob.io/news/techcrunch	"
  echo "ojob.io/news/theregister	"
  echo "ojob.io/news/theverge	"
  echo "ojob.io/news/tomshardware	"
  echo "ojob.io/news/wired	"
  echo "ojob.io/oaf/aPack	"
  echo "ojob.io/oaf/build	"
  echo "ojob.io/oaf/changeDist	"
  echo "ojob.io/oaf/checkOAFJars	"
  echo "ojob.io/oaf/colorFormats	"
  echo "ojob.io/oaf/colorMap	"
  echo "ojob.io/oaf/compile	"
  echo "ojob.io/oaf/completion	"
  echo "ojob.io/oaf/debug	"
  echo "ojob.io/oaf/genCh	"
  echo "ojob.io/oaf/genODoc	"
  echo "ojob.io/oaf/generate	"
  echo "ojob.io/oaf/info	"
  echo "ojob.io/oaf/javaUpdate	"
  echo "ojob.io/oaf/key	"
  echo "ojob.io/oaf/mavenGetJars	"
  echo "ojob.io/oaf/minidb	"
  echo "ojob.io/oaf/pack	"
  echo "ojob.io/oaf/packBin	"
  echo "ojob.io/oaf/parseCron	"
  echo "ojob.io/oaf/pyoaf	"
  echo "ojob.io/oaf/symlinks	"
  echo "ojob.io/oaf/versions	"
  echo "ojob.io/oaf/winTerm	"
  echo "ojob.io/obook/generate	"
  echo "ojob.io/obook/run	"
  echo "ojob.io/ojob/code	"
  echo "ojob.io/ojob/compile	"
  echo "ojob.io/ojob/genJob	"
  echo "ojob.io/ojob/genMD	"
  echo "ojob.io/ojob/gui	"
  echo "ojob.io/ojob/listCommon	"
  echo "ojob.io/ojob/logParser	"
  echo "ojob.io/ojob/ojobioHashList	"
  echo "ojob.io/ojob/script	"
  echo "ojob.io/ojob/service	"
  echo "ojob.io/ojob/templates/cron	"
  echo "ojob.io/ojob/templates/httpd	"
  echo "ojob.io/ojob/templates/pods	"
  echo "ojob.io/ojob/templates/ssh	"
  echo "ojob.io/ojob/templates/test	"
  echo "ojob.io/oneliner/generate	"
  echo "ojob.io/oneliner/httpd	"
  echo "ojob.io/oneliner/ojobc	"
  echo "ojob.io/opack/compileOPacks	"
  echo "ojob.io/opack/userRebuild	"
  echo "ojob.io/pi/createWiFi	"
  echo "ojob.io/pi/getTemp	"
  echo "ojob.io/raid/_common	"
  echo "ojob.io/raid/checkFlowManager	"
  echo "ojob.io/raid/logParser	"
  echo "ojob.io/raid/logParser	"
  echo "ojob.io/raid/logParser2	"
  echo "ojob.io/raid/logParser2	"
  echo "ojob.io/raid/omtExplorer	"
  echo "ojob.io/raid/ping	"
  echo "ojob.io/raid/cir/ops	"
  echo "ojob.io/raid/formats/fromPrettyPrint	"
  echo "ojob.io/raid/formats/toPrettyPrint	"
  echo "ojob.io/raid/har/har2queries	"
  echo "ojob.io/raid/har/testQueries	"
  echo "ojob.io/raid/logicalfield/ops	"
  echo "ojob.io/raid/mashup/ops	"
  echo "ojob.io/rocksdb/stats	"
  echo "ojob.io/s3/getMC	"
  echo "ojob.io/s3/httpCheck	"
  echo "ojob.io/s3/ops	"
  echo "ojob.io/sec/genKeyPair	"
  echo "ojob.io/sec/genPassword	"
  echo "ojob.io/sec/genSecBadge	"
  echo "ojob.io/sec/ops	"
  echo "ojob.io/sec/trivy	"
  echo "ojob.io/sec/trivySummary	"
  echo "ojob.io/ssh/cleanHost	"
  echo "ojob.io/ssh/tunnel	"
  echo "ojob.io/telco/countryByCode	"
  echo "ojob.io/telco/phoneNumber	"
  echo "ojob.io/template/apply	"
  echo "ojob.io/time/current	"
  echo "ojob.io/time/eclipse	"
  echo "ojob.io/time/zone	"
  echo "ojob.io/time/zones	"
  echo "ojob.io/transfer/pastebin	"
  echo "ojob.io/unix/addSwap	"
  echo "ojob.io/unix/addUser	"
  echo "ojob.io/unix/bashDownload	"
  echo "ojob.io/unix/configVIM	"
  echo "ojob.io/unix/genSelfExtract	"
  echo "ojob.io/unix/getLinuxDistro	"
  echo "ojob.io/unix/hvscs	"
  echo "ojob.io/unix/listCrons	"
  echo "ojob.io/unix/ojobComplete	"
  echo "ojob.io/unix/parseCPUStats	"
  echo "ojob.io/unix/parseIOStats	"
  echo "ojob.io/unix/powerline/configPL	"
  echo "ojob.io/util/osArch	"
  echo "ojob.io/util/publicHolidays	"
  echo "ojob.io/util/randomData	"
  echo "ojob.io/util/toMDTree	"
  echo "ojob.io/util/vscTunnel	"
  echo "ojob.io/util/weather	"
  echo "ojob.io/util/weather2MD	"
  echo "ojob.io/win/moveWSL	"
  echo "ojob.io/win/netFirewall	"
  echo "ojob.io/win/netOptions	"
  echo "ojob.io/win/setPath	"
  echo "ojob.io/win/winTerm	"
fi

# end
if [ $FFOUND -eq 0 ]; then
  echo :4
else
  echo :2
fi