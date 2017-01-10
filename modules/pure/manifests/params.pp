# == Class pure::params
class pure::params
{
  $repo                 = 'http://base.splendiddata.com/postgrespure'
  $version              = '4'
  $package_name         = 'postgrespure-release'
  $package_version      = 'latest'
  $pg_version           = $version ?
  {
    '1' => '9.3',
    '2' => '9.4',
    '3' => '9.5',
    '4' => '9.6'    
  }  
}
