#define an exec resource to fix the issue
exec { 'fix-wp':
  command     => 'sudo sed -i "s/phpp/php/" /var/www/html/wp-settings.php',
  path        => ['/usr/bin', '/bin'],
  returns     => [0, 1],
  refreshonly => true,
  notify      => Service['apache2'],
}