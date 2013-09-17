node 'demo' {
exec { 'Run my arbitrary command':
command => '/bin/echo I ran this command on `/bin/date` >/tmp/command.output.tx',
}
exec { 'Download public key for John':
cwd => '/tmp',
command => '/usr/bin/wget http://bitfieldconsulting.com/files/john.pub',
creates => '/tmp/john.pub',
}
exec { 'add-cloudera-apt-key':
command => '/usr/bin/apt-key add /tmp/cloudera.pub',
unless => '/usr/bin/apt-key list |grep Cloudera',
}
#exec { 'icinga-config-check':
#command => '/usr/sbin/icinga -v /etc/icinga/icinga.cfg && /usr/sbin/service icinga restart',
#refreshonly => true,
#subscribe => File['/etc/icinga/icinga.cfg'],
#}
exec { 'command-1':
command => '/bin/echo Step 1',
}
exec { 'command-2':
command => '/bin/echo Step 2',
require => Exec['command-1'],
}
exec { 'command-3':
command => '/bin/echo Step 3',
require => Exec['command-2'],
}

exec { 'Run my arbitrary command after searching':
command => 'echo Finding echo and ran this command on `date` >/tmp/command.output.txt',
path => ['/bin', '/usr/bin'],
require => Exec['Run my arbitrary command']
}



}

