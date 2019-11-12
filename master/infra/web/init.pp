
class webserver {
    package { 'apache2':
        ensure => "present",
        name => "apache2",
    }

    service { 'apache2':
        ensure => 'running',
    }
}
