﻿#!/bin/sh  -e
### BEGIN INIT INFO
# Provides: firewall rules
# Required-Start: $remote_fs $syslog
# Required-Stop: $remote_fs $syslog
# Default-Start: 2 3 4 5
# Default-Stop: 0 1 6
# Short-Description: Start daemon at boot time
# Description: Enable service provided by daemon.
### END INIT INFO





#table_INPUT



#table_OUTPUT
iptables -A OUTPUT -o eth0 -p udp --sport 53 -m state --state RELATED,ESTABLISHED -j REJECT




