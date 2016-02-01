#!/bin/bash
if  [[ -n "$TZ" ]]
then
    echo $TZ > /etc/timezone
    export DEBCONF_NONINTERACTIVE_SEEN=true DEBIAN_FRONTEND=noninteractive
    dpkg-reconfigure tzdata
fi
