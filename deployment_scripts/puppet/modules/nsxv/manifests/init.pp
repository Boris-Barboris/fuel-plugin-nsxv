class nsxv (
  # Do not remove unused variables: template nsx.ini.erb refers to them
  $nsxv_config_dirs = [ '/etc/neutron', '/etc/neutron/plugins', '/etc/neutron/plugins/vmware' ],
  $nsxv_config_dir = '/etc/neutron/plugins/vmware',
  $nsx_plugin_name = 'python-vmware-nsx',
  $lbaas_plugin_name = 'python-neutron-lbaas',
  $neutron_url_timeout = '600',
  $metadata_shared_secret,
  $settings,
  $nova_metadata_ips,
  $nova_metadata_port,
  $mgt_ip,
  $mgt_netmask,
  $mgt_gateway,
  $neutron_url_timeout,
) {

  $cluster_moid = get_vcenter_cluster_id($settings['nsxv_datacenter_moid'])

  if ! $settings['nsxv_insecure'] {
    $ca_certificate_content = $settings['nsxv_ca_file']['content']
    $ca_filename = $settings['nsxv_ca_file']['name']
    $ca_file = "${nsxv_config_dir}/${ca_filename}"

    file { $ca_file:
      ensure  => present,
      content => $ca_certificate_content,
      require => File[$nsxv_config_dirs],
    }
  }

  package { $nsx_plugin_name:
    ensure => latest,
  }
  package { $lbaas_plugin_name:
    ensure => latest,
  }
  package { 'tcl-testvm':
    ensure => latest,
  }

  file { $nsxv_config_dirs:
    ensure => directory
  }

  file { "${nsxv_config_dir}/nsx.ini":
    ensure  => file,
    content => template("${module_name}/nsx.ini.erb"),
    require => File[$nsxv_config_dirs],
  }
  file { '/etc/neutron/plugin.ini':
    ensure  => link,
    target  => "${nsxv_config_dir}/nsx.ini",
    replace => true,
    require => File[$nsxv_config_dirs]
  }

  # fix [neutron]/timeout in nova.conf
  nova_config { 'neutron/timeout': value => $neutron_url_timeout }
}
