#to download flask from pip3

package { 'python3-pip':
  ensure => 'present',
}

exec { 'install_flask':
  command => 'pip3 install flask==2.1.0',
  unless  => 'pip3 show flask | grep -q "^Version: 2.1.0"',
  require => Package['python3-pip'],
  path    => '/usr/bin',
}
