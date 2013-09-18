node 'demo' {
include nginx
$site_name = 'cat-pictures'
$site_domain = 'cat-pictures.com'
file { '/etc/nginx/sites-enabled/cat-pictures.conf':
content => template('nginx/vhost.conf.erb'),
notify => Service['nginx'],
}
}

