#!/bin/sh

echo "ENTRYPOINT"


### Start snmpd.
# /usr/sbin/snmpd -f -Lo -a -C -V -c /etc/snmp/snmpd.conf # verbose
/usr/sbin/snmpd -f -Lo -a -C -c /etc/snmp/snmpd.conf
# /usr/sbin/snmpd -f -Lo