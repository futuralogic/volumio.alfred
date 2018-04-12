# Toggles play/pause

VOLUMIO_HOST=$volumio_host
API_BASE=$"http://$VOLUMIO_HOST/api/v1/commands/?cmd"

#echo Host: $VOLUMIO_HOST
#echo API Base: $API_BASE

GETSTATE_OUTPUT="$(curl -G http://$VOLUMIO_HOST/api/v1/getstate)"

#echo $GETSTATE_OUTPUT

if [[ $GETSTATE_OUTPUT = '{"status":"play'* ]]; then
#	echo Pausing...
	curl -G $API_BASE=pause
else
#	echo Playing...
	curl -G $API_BASE=play
fi