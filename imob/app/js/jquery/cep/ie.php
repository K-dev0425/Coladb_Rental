<?php
@header( 'Content-Type: text/html; charset=UTF-8' );
$cep = $_POST['cep'];
$url = "https://xtends.com.br/webservices/cep/json/$cep/";
$ch = curl_init(); 
curl_setopt ($ch, CURLOPT_URL, $url); 
curl_setopt ($ch, CURLOPT_RETURNTRANSFER, 1); 
echo curl_exec($ch); 
curl_close($ch); 

?>