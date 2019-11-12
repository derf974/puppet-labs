
class database {
    package { 'mysql-server':
        ensure => 'present',
        name => 'mysql-server',
    }

    service { 'mysql':
        ensure => 'running',
    }
}
