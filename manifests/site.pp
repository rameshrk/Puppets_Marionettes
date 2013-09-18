import 'nodestemplatenginx.pp'
#import 'nodesdistribute.pp'
#import 'nodesbackup.pp'
#import 'nodesexec.pp'
#import 'nodesusercreate.pp'
#import 'nodesmodulesnginx.pp'
#import 'nodeslatestnginx.pp'
#import 'nodesremovenginx.pp'
#import 'nodesnginx.pp'
#import 'nodes.pp'
Exec {
path => ['/bin', '/usr/bin'],
}

