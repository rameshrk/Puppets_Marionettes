node 'demo' {
include nginx
$site_name = 'cat-pictures'
$site_domain = 'cat-pictures.com'
$site_address = '127.0.0.1'
file { '/etc/nginx/sites-enabled/cat-pictures.conf':
content => template('nginx/vhost.conf.erb'),
notify => Service['nginx'],
}
file { '/tmp/the_answer.txt':
content => inline_template("What do you get if you multiply six by nine? <%= 6 * 7 %>.\n")
}

file { '/tmp/the_facter.txt':
content => inline_template("My address is <%= @ipaddress %>.\n")
}

exec { 'Run my echo command':
command => 'echo I ran this command on ${site_address}',
path => ['/bin', '/usr/bin'],
}

file { '/etc/nginx/sites-enabled/time.txt':
content => template('nginx/vhost.conf.erb'),
notify => Service['nginx'],
}

}

