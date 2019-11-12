node default {
   file { '/tmp/status' :
        ensure => file,
        content => "toto is alive",
  }
}

node web {

    include webserver
}

node db {
    include database
}
