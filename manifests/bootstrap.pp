class lei_wrapper::bootstrap {
  pe_ini_setting { 'disable-console-nc':
    ensure  => present,
    path    => '/etc/puppetlabs/puppet/puppet.conf',
    section => 'master',
    setting => 'node_terminus',
    value   => 'plain',
    notify  => Service['pe-puppetserver'],
  }

  service { 'pe-puppetserver':
    ensure => running,
  }
}
