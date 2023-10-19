<?php
include 'conexao.php';

session_start (); //iniciando a sessão 
$Vemail = $_POST ['txtemail'];
$Vsenha = $_POST ['txtsenha'];

// echo $Vemail. '<br>';
// echo $Vsenha. '<br>';

$consulta = $cn->query("select codUsuario, nomeUsuario, dsEmail, dsSenha, dsStatus from tbUsuario where dsEmail = '$Vemail' and dsSenha = '$Vsenha'");
if ($consulta->rowCount() == 1){
   // echo 'Usuário ESTÁ cadastrado';
   $exibeUsuario = $consulta->fetch (PDO::FETCH_ASSOC);
   
   if($exibeUsuario['dsStatus'] == 0){
   $_SESSION['ID'] = $exibeUsuario['codUsuario'];
   $_SESSION['Status']=0;
   header('Location:index.php');
   }
   else{
   $_SESSION['ID'] = $exibeUsuario['codUsuario'];
   $_SESSION['Status']=1;
   header('Location:index.php');
   }
}
else {
    // echo 'Usuário NÃO cadastrado';
    header('Location:erro.php');
}
?>