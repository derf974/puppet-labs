node default {
   file { '/tmp/toto.txt' :
        ensure => file,
        content => "toto is alive",
  }
}
