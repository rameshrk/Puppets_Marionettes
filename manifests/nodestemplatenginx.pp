node 'demo' {
include nginx
$site_name = 'cat-pictures'
$site_domain = 'cat-pictures.com'
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


}

