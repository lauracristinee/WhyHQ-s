<?php
     $servidor = "Localhost";
     $usuario = "hq";
     $senha = "030506";
     $banco = "db_LojaDeQuadrinhos";

     $cn = new PDO ("mysql:host=$servidor;dbname=$banco", $usuario, $senha);
?>