local_ips=$(hostname --all-ip-addresses 2> /dev/null | tr ' ' ',') || local_ips=""
export APP_PAPERCLIP_LOCAL_IPS="${local_ips}"

origins=""
for ip in $(hostname --all-ip-addresses 2> /dev/null); do
  origins="${origins}http://${ip}:8870,https://${ip}:8870,"
done
export APP_PAPERCLIP_TRUSTED_ORIGINS="${origins%,}"
