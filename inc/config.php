<?php

$config =  [
	'openmenu-api-key' => '994e8105-5926-11e8-8dcc-525400552a35',
	'google-maps-api-key' => 'AIzaSyCCHDapgc3aQZQCFcSfZm4Ze7cHNt5u3J0',
	'google-maps-api-url' => 'https://maps.googleapis.com/maps/api/js?key=AIzaSyCCHDapgc3aQZQCFcSfZm4Ze7cHNt5u3J0&libraries=places',
	'conn' => [
		'mysql' => 'mysql:host=localhost;dbname=pearsqua_menuvox;charset=utf8;',
		'username' => 'pearsqua_menuvox',
		'password' => '88pAMX1aLls9cnwR'
	]
];

$g = $_GET;
$p = $_POST;

require_once __DIR__ .  '/../vendor/idiorm.php';
require_once __DIR__ .  '/../inc/functions.php';

$dbMysql = $config['conn']['mysql'];
$dbUsername = $config['conn']['username'];
$dbPassword = $config['conn']['password'];

ORM::configure($dbMysql);
ORM::configure('username', $dbUsername);
ORM::configure('password', $dbPassword);
ORM::configure('return_result_sets', true);
ORM::configure('error_mode', PDO::ERRMODE_WARNING);



// openmenu api url that works
// https://openmenu.com/api/v2/search.php?key=994e8105-5926-11e8-8dcc-525400552a35&s=five%20guys&city=toronto&country=CA

// USA search
// https://openmenu.com/api/v2/search.php?key=994e8105-5926-11e8-8dcc-525400552a35&s=mcdonald%27s&city=new%20york&country=US
