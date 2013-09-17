node 'demo' {
cron { 'Back up cat-pictures':
command => '/usr/bin/rsync -az /var/www/cat-pictures/ /cat-pictures-backup/',
hour => '04',
minute => '00',
}
}

