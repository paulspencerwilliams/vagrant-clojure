class leiningen {
  case $operatingsystem {
    /(Ubuntu|Debian)/: {
      $jreinstaller = 'default-jre'
    }
    /(RedHat|CentOS|Fedora)/: {
      $jreinstaller = 'java-1.6.0-openjdk'
    }
  } 
   package {
    "${jreinstaller}":
      ensure  => installed;
  } 
  exec{'retrieve_leiningen':
    command => "/usr/bin/wget -q https://raw.github.com/technomancy/leiningen/stable/bin/lein -O /usr/local/bin/lein",
    creates => "/usr/local/bin/lein",
  }

  file{'/usr/local/bin/lein':
    mode => 0755,
    require => Exec["retrieve_leiningen"],
  }

  exec{'retrieve_six_degrees_clj':
    command => "/usr/bin/wget -q https://github.com/paulspencerwilliams/six-degrees-clj/archive/master.tar.gz -O /home/vagrant/six-degrees-clj.tar.gz",
    creates => "/home/vagrant/six-degrees-clj.tar.gz",
  }

  exec{'extract_six_degrees_clj':
    command => "/usr/bin/tar -xzf /home/vagrant/six-degrees-clj.tar.gz",
    creates => "/home/vagrant/six-degrees-clj",
    require => Exec['retrieve_six_degrees_clj'],
  }
 
} 
