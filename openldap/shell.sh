#!/bin/sh
# docker entrypoint script
# configures and starts LDAP

SLAPD_CONF="/etc/openldap/slapd.conf"
ORG_CONF="/etc/openldap/org.ldif"
USER_CONF="/etc/openldap/users.ldif"

echo "Adding Organization"
slapadd -l "$ORG_CONF"

echo "Adding Users"
slapadd -l "$USER_CONF"


echo "Starting LDAP"
nohup slapd -d "$LOG_LEVEL" -h "ldap:///" &
nohup pyxtermjs --command sh  &

cat /tmp/msg

# run command passed to docker run
exec "$@"
