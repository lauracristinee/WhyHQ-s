<!doctype html>

<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>WhyHQ's</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	
	<style>
	
	.navbar{
		margin-bottom: 0;
	}
	
	
	</style>
	
	
	
</head>

<body>	
	
	<?php
	
	session_start();
	
	include 'conexao.php';	
	include 'nav.php';
	include 'cabecalho.html';

	if(!empty($_GET['cd'])){ //se não estiver vazia a variável cd
    
	$cd_Hq = $_GET['cd'];
	$consulta = $cn->query("select * from vmHQ where codHQ='$cd_Hq'");
	$exibe = $consulta->fetch(PDO::FETCH_ASSOC);
	}
	else{
		header("location:index.php");
	}
	?>
	
<div class="container-fluid">
	
	
	
	<div class="row">
		
		 <div class="col-sm-4 col-sm-offset-1">
			 
			 <h1>Detalhes do Produto</h1>
			 
			 <img src="imagens/<?php echo $exibe['ds_capa']; ?>" class="img-responsive" style="width:100%;">
			
		</div>
		
				
 		 <div class="col-sm-7"><h1><?php echo $exibe['nomeHq']; ?></h1>
		
		<p><b>Descrição:</b><?php echo $exibe['descr_resumo_hq']; ?></p>
		
		<p><b>Número de páginas:</b><?php echo $exibe['numPag']; ?></p>
		
		<p><b>Preço:</b> R$ <?php echo number_format ($exibe ['vl_preco'],2,',','.'); ?></p>
		
		<p><b>Autor:</b><?php echo $exibe['nomeAutor']; ?></p>

		<p><b>ISBN:</b><?php echo $exibe['numisbn']; ?></p>

		<button class="btn btn-lg btn-success">Comprar</button>
				
		</div>		
	

	
</div>
	
	<?php
	
	include 'rodape.html';
	
	?>
	
</body>
</html>