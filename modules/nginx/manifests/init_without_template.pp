class nginx {
package { 'nginx':
ensure => installed,
}
service { 'nginx':
ensure => running,
enable => true,
require => Package['nginx'],
}
file { '/etc/nginx/conf.d/default.conf':
source => 'puppet:///modules/nginx/cat-pictures.conf',
notify => Service['nginx'],
}
}

