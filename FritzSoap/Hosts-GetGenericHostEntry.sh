#!/bin/bash
if [ $# -lt 1 ]
then
	NUM=1
else
	NUM=$1
fi
curl "http://fritz.box:49000/upnp/control/hosts" -H "Content-Type: text/xml; charset="utf-8"" -H "SoapAction:urn:dslforum-org:service:Hosts:1#GetGenericHostEntry" -d "<?xml version='1.0' encoding='utf-8'?> <s:Envelope s:encodingStyle='http://schemas.xmlsoap.org/soap/encoding/' xmlns:s='http://schemas.xmlsoap.org/soap/envelope/'> <s:Body> <u:GetGenericHostEntry xmlns:u="urn:dslforum-org:service:Hosts:1"> <NewIndex>$NUM</NewIndex> </u:GetGenericHostEntry></s:Body> </s:Envelope>" -s 
