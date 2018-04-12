VOLUMIO_HOST=$volumio_host
API_BASE=$"http://$VOLUMIO_HOST/api/v1/commands/?cmd"

curl -G $API_BASE=next