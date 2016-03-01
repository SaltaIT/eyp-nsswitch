class nsswitch::params {

  case $::osfamily {
    'redhat': {
      $passwd_default = ['files']
      $shadow_default = ['files']
      $group_default = ['files']
      $hosts_default = ['files','dns']
      $bootparams_default = ['nisplus [NOTFOUND=return]','files']
      $ethers_default = ['files']
      $netmasks_default = ['files']
      $networks_default = ['files']
      $protocols_default = ['files']
      $rpc_default = ['files']
      $services_default = ['files']
      $netgroup_default = ['nisplus']
      $publickey_default = ['nisplus']
      $automount_default = ['files','nisplus']
      $aliases_default = ['files','nisplus']
      $sudoers_default = undef
      $gshadow_default = undef
    }

    default: {
      fail("${::operatingsystem} is not a supported -_-")
    }

  }
}
