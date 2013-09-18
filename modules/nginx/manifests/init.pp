class nginx {
package { 'nginx':
ensure => installed,
}

service { 'nginx':
ensure => running,
enable => true,
require => Package['nginx'],
}

file { '/etc/nginx/sites-enabled/default':
ensure => absent,
}

}

