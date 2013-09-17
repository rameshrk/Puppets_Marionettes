node 'demo' {
file { '/var/www/cat-pictures':
ensure => directory,
}
file { "/var/www/cat-pictures/img":
source => "puppet:///modules/cat-pictures/img",
recurse => true,
require => File['/var/www/cat-pictures'],
}
}

