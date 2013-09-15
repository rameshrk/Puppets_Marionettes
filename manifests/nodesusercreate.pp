node 'demo' {
user { 'art':
ensure => present,
comment => 'Art Vandelay',
home => '/home/art',
managehome => true,
}
ssh_authorized_key { 'art_ssh':
user => 'art',
type => 'rsa',
key => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAr2r++ngsyuClQdvWqOAUWkUGt0YdPziClHAq9EzEYZK3ZhHhy1CFB0jL/d6GX0YA/jcRrp0qLQJnNLze47F2lUwM+P4dNLgHHpsS+wYI99ZQ5Q8o6UxA8YrX455WZdFtn9xMtiiH7etOkD1vvejlAQ4kJ5gU5KQUDUJOu/Fd7q1+R48snmM9Ddj/j8uc2npnQbtrjktlYTJzRBhYFb8WENxMcnBkSi+bnWHYitPSY0mFfmqr6g6co+FAkyyKpkMDDld6IY/JAQpDJSUgry7LFaGwyQhN+wGZ5vC43k0Tlc0qa/A4baPz/ux3WzS2ZCTi3sgScPPStarKWNWUzaPiyQ==',
}
}

