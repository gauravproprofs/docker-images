<?php
// Define the variable $i
$i = 0;

$cfg['Servers'] = array(
  0 => array(
    'host'          => 'default',  // Corrected typo here
    'port'          => '3306',
    'socket'        => '',
    'user'          => '',  // Username will be entered during login
    'password'      => '',  // Password will be entered during login
    'bookmarktable' => 'pma__bookmark',
    'relation'      => '',
    'db'            => '',
    'auth_type'     => 'cookie',
    'auth_param'    => '',
    'goinsecure'     => '1',
    'designer_settings' => array('AllowLoginErrorCount' => 5),
  ),
  1 => array(
    'host'          => 'db01',
    'port'          => '3306',
    'socket'        => '',
    'user'          => '',  // Username will be entered during login
    'password'      => '',  // Password will be entered during login
    'bookmarktable' => 'pma__bookmark',
    'relation'      => '',
    'db'            => '',
    'auth_type'     => 'cookie',
    'auth_param'    => '',
    'goinsecure'     => '1',
    'designer_settings' => array('AllowLoginErrorCount' => 5),
  ),
  2 => array(
    'host'          => 'db02',
    'port'          => '3306',
    'socket'        => '',
    'user'          => '',  // Username will be entered during login
    'password'      => '',  // Password will be entered during login
    'bookmarktable' => 'pma__bookmark',
    'relation'      => '',
    'db'            => '',
    'auth_type'     => 'cookie',
    'auth_param'    => '',
    'goinsecure'     => '1',
    'designer_settings' => array('AllowLoginErrorCount' => 5),
  ),
  3 => array(
    'host'          => 'db03',
    'port'          => '3306',
    'socket'        => '',
    'user'          => '',  // Username will be entered during login
    'password'      => '',  // Password will be entered during login
    'bookmarktable' => 'pma__bookmark',
    'relation'      => '',
    'db'            => '',
    'auth_type'     => 'cookie',
    'auth_param'    => '',
    'goinsecure'     => '1',
    'designer_settings' => array('AllowLoginErrorCount' => 5),
  ),
  4 => array(
    'host'          => 'db04',
    'port'          => '3306',
    'socket'        => '',
    'user'          => '',  // Username will be entered during login
    'password'      => '',  // Password will be entered during login
    'bookmarktable' => 'pma__bookmark',
    'relation'      => '',
    'db'            => '',
    'auth_type'     => 'cookie',
    'auth_param'    => '',
    'goinsecure'     => '1',
    'designer_settings' => array('AllowLoginErrorCount' => 5),
  ),
);

$cfg['PmaAbsoluteUri'] = 'https://myadmin2.proprofs.com/';
$cfg['Servers'][$i]['pmadb'] = '';  // Disable configuration storage
$cfg['Servers'][$i]['bookmarktable'] = '';  // Disable bookmarks
$cfg['blowfish_secret'] = 'ESQEXJEfPSelTjVW9LDvskFmdWZoKCYYu6IqzAWjgEI=';  // Generate a strong secret and update here
$cfg['LoginCookieValidity'] = 86400; // Set cookie validity to 1 day
?>
