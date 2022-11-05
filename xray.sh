#!/bin/sh
if [ ! -f UUID ]; then
  UUID="a151b8bb-7f5c-4b93-b72f-c4343e829375"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

