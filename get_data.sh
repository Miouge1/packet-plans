#!/bin/sh
if [ -z "$PACKET_AUTH_TOKEN" ]
then
      echo "\$PACKET_AUTH_TOKEN is required"
      exit 1
fi
  
curl -H "X-Auth-Token: $PACKET_AUTH_TOKEN" https://api.packet.net/facilities > api/facilities
curl -H "X-Auth-Token: $PACKET_AUTH_TOKEN" https://api.packet.net/plans > api/plans