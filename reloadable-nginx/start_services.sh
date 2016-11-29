set -e
service nginx start
/consul-template -config=/consul-template-config
