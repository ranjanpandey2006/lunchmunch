<?php
function getDB() {
	$dbhost="sql111.byethost5.com";
	$dbuser="b5_16105207";
	$dbpass="sambalpur9";
	$dbname="b5_16105207_lm";
	$dbConnection = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass);
	$dbConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	return $dbConnection;
}
?>