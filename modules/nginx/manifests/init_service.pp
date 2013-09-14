# Manage nginx webserver
class nginx {
package { 'apache2.2-common':
ensure => absent,
}
package { 'nginx':
ensure => installed,
require => Package['apache2.2-common'],
}
service { 'nginx':
ensure => running,
require => Package['nginx'],
}
}

