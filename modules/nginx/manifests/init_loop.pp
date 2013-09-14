class nginx {

file { '/tmp/file1':
require => File['/tmp/file2'],
}
file { '/tmp/file2':
require => File['/tmp/file3'],
}
file { '/tmp/file3':
require => File['/tmp/file1'],
}
}
