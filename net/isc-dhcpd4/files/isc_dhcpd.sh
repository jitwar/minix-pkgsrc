#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: isc_dhcpd.sh,v 1.1.1.1 2008/02/13 22:03:58 adrianp Exp $
#

# PROVIDE: dhcpd
# REQUIRE: DAEMON
# BEFORE:  LOGIN

if [ -f /etc/rc.subr ]; then
        . /etc/rc.subr
fi

name="isc_dhcpd"
rcvar="${name}"
command="@PREFIX@/sbin/dhcpd"
pidfile="@VARBASE@/run/isc-dhcp/isc-dhcpd.pid"
required_files="@PKG_SYSCONFDIR@/dhcpd.conf"
start_precmd="isc_dhcpd_precmd"

isc_dhcpd_precmd()
{
	if [ ! -d @VARBASE@/run/isc-dhcp ]; then
		@MKDIR@ @VARBASE@/run/isc-dhcp
		@CHMOD@ 0770 @VARBASE@/run/isc-dhcp
	fi

	if [ ! -f @DHCP_HOME@/dhcpd.leases ]; then
		@MKDIR@ @DHCP_HOME@
		@TOUCH@ @DHCP_HOME@/dhcpd.leases
		@CHMOD@ 0640 @DHCP_HOME@/dhcpd.leases
	fi
}

load_rc_config $rcvar
run_rc_command "$1"
