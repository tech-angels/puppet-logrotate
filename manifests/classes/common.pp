/*

Class: logrotate::common

*/
class logrotate::common {
  package {
    logrotate:
      ensure	=> installed;
  }
}
