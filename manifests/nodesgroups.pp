file { [ '/var/www/myapp',
'/var/www/myapp/releases',
'/var/www/myapp/shared',
'/var/www/myapp/shared/config',
'/var/www/myapp/shared/log',
'/var/www/myapp/shared/pids',
'/var/www/myapp/shared/system' ]:
ensure => directory,
}

