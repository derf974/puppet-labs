node default {
   file { '/tmp/toto.txt' :
        ensure => file,
        content => "toto is alive",
  }
}

node web {

    package { 'apache2':
        ensure => "present",
        name => "apache2",
    }

    service { 'apache2':
        ensure => 'running',
    }

}

node db {
    package { 'mysql-server':
        ensure => 'present',
        name => 'mysql-server',
    }

    service { 'mysql':
        ensure => 'running',
    }
}
