<?php 
include 'conexao.php';

$nome = $_POST['txtnome'];
$email = $_POST['txtemail'];
$senha = $_POST['txtsenha'];
$end = $_POST['txtendereco'];
$cidade = $_POST['txtcidade'];
$cep = $_POST['txtcep'];

// testando variáveis
/* echo $nome.'<br>';
echo $email.'<br>';
echo $senha.'<br>';
echo $end.'<br>';
echo $cidade.'<br>';
echo $cep.'<br>'; */

$consulta = $cn->query("select dsEmail from tbUsuario where dsEmail='$email'");
$exibe = $consulta->fetch (PDO::FETCH_ASSOC);

if($consulta->rowCount() == 1){
    header('location:erro1.php');
}
else{
    $incluir = $cn->query("
    insert into tbUsuario(nomeUsuario, dsEmail, dsSenha, dsStatus, dsEndereco, dsCidade, CEP)
    values('$nome', '$email', '$senha', '0', '$end', '$cidade', '$cep')
    ");
    header('location:ok.php');
}

?>