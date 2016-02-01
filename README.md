#elk-beats
Full ELK stack, with the Beats platform installed for docker host monitoring. This image has been validated to work with unRaid as a host server logging facility, but it is fully capable of being used as a self-contained single ELK box for any deployment environment.

Versions:
Elasticsearch: 2.2.1
Logstash: 2.2.1
Kibana: 4.3.1
Beats: 1.0.1

VOLUMES:
/var/lib/elasticsearch - Map this if you want your logs to persist through destroys, this is a base volume for restart persistance
/var/log/dockerhost - Map this to /var/log on the docker host, filebeat is configured to montior the host syslog in this folder by default

ENVIRONMENT VARIABLE:
TZ - Pass in TZ as your timezone (i.e. America/New_York) in order to have the syslogs reported in the correct offset time
