#!/bin/sh /etc/rc.common

START=99

USE_PROCD=1
NAME=mtkhqos
PROG=/sbin/mtkiappd

start_service() {
    procd_open_instance mtkiappd
    procd_set_param command /usr/sbin/mtkiappd -e br-lan WIRELESS_IOCTL_PARAM
    procd_set_param respawn
    procd_set_param netdev br-lan
    procd_set_param netdev rax0
    procd_set_param netdev apclix0
    procd_set_param netdev apcli0
    procd_set_param netdev ra0
    procd_close_instance
}

reload_service() {
    stop
    start
}
