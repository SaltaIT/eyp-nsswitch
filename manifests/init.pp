class nsswitch (
	$passwd = $nsswitch::params::passwd_default,
	$shadow = $nsswitch::params::shadow_default,
	$group = $nsswitch::params::group_default,
	$hosts = $nsswitch::params::hosts_default,
	$bootparams = $nsswitch::params::bootparams_default,
	$ethers = $nsswitch::params::ethers_default,
	$netmasks = $nsswitch::params::netmasks_default,
	$networks = $nsswitch::params::networks_default,
	$protocols = $nsswitch::params::protocols_default,
	$rpc = $nsswitch::params::rpc_default,
	$services = $nsswitch::params::services_default,
	$netgroup = $nsswitch::params::netgroup_default,
	$publickey = $nsswitch::params::publickey_default,
	$automount = $nsswitch::params::automount_default,
	$aliases = $nsswitch::params::aliases_default,
	$sudoers = $nsswitch::params::sudoers_default,
	$gshadow = $nsswitch::params::gshadow_default,
) inherits nsswitch::params {

	if $passwd {
		validate_array($passwd)
	}
	if $shadow {
		validate_array($shadow)
	}
	if $group {
		validate_array($group)
	}
	if $hosts {
		validate_array($hosts)
	}
	if $bootparams {
		validate_array($bootparams)
	}
	if $ethers {
		validate_array($ethers)
	}
	if $netmasks {
		validate_array($netmasks)
	}
	if $networks {
		validate_array($networks)
	}
	if $protocols {
		validate_array($protocols)
	}
	if $rpc {
		validate_array($rpc)
	}
	if $services {
		validate_array($services)
	}
	if $netgroup {
		validate_array($netgroup)
	}
	if $publickey {
		validate_array($publickey)
	}
	if $automount {
		validate_array($automount)
	}
	if $aliases {
		validate_array($aliases)
	}
	if $sudoers {
		validate_array($sudoers)
	}

	file { '/etc/nsswitch.conf':
		ensure  => present,
		owner   => 'root',
		group   => 'root',
		mode    => '0644',
		content => template("${module_name}/nsswitch.conf.erb"),
	}

}
