node 'demo' {
user { 'art':
ensure => present,
comment => 'Art Vandelay',
home => '/home/art',
managehome => true,
}
}

