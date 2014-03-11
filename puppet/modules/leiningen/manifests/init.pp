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
} 
