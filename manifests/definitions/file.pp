/*

Define: logrotate::file

*/
define logrotate::file (
$log,
$compress=true,
$compresscmd=false,
$uncompresscmd=false,
$compressext=false,
$compressoptions=false,
$logcopy=false,
$copytruncate=false,
$create=false,
$period='daily',
$dateext=false,
$delaycompress=false,
$extension=false,
$ifempty=true,
$includefile=false,
$mail=false,
$mailfirst=false,
$maillast=false,
$maxage=false,
$minsize=false,
$missingok=false,
$olddir=false,
$postrotate=false,
$prerotate=false,
$firstaction=false,
$lastaction=false,
$rotate=false,
$size=false,
$sharedscripts=false,
$start=false,
$tabooext=false
){
  include logrotate::common
  
  # Configure
  file {
    "/etc/logrotate.d/${name}":
      owner	=> 'root',
      group	=> 'root',
      mode	=> 0444,
      content	=> template('logrotate/file.erb');
  }
}
