<?php

$db_host = "localhost";
$db_user = "root";
$db_pass = "";

$db_name = "db_biblioteca";

$conn = new mysqli($db_host, $db_user, $db_pass, $db_name);

if ($conn->connect_error){

    die("conexão falhou:{$conn->connect_error}");
}
else{
    echo "Parabéns!!! A conexão ao banco de dados ocorreu muito bem!";
}

