<!doctype html>
<html lang ="pt-br">
<head>
    <meta charset="UTF-8"/>
    <meta name="description" content="Autor(a): Laura Cristine Silva - Data: 17/06/2023"/>
    <title>Loja de Quadrinhos</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- trabalhando com o bootstrtap e a jQuery-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> <!--css-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> <!--jQuery-->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> <!--javascript compilado-->

    <style type="text/css">
      .navbar {margin-bottom:0px;}
    </style>
</head>
<body>
     <?php 
     session_start();
     include 'conexao.php';
     include 'nav.php';
     include 'cabecalho.html';
     

     $consulta = $cn->query('select codHq, nomeHq, vl_preco, qtdEstoque, ds_capa from vmHQ;');
     ?>

     <div class="container-fluid">
      <div class="row">
      <?php while ($exibe = $consulta->fetch(PDO::FETCH_ASSOC)){ ?>  
        <div class="col-sm-3">
          <img src="imagens/<?php echo $exibe ['ds_capa']; ?>" class="img-responsive" style="width:100%">
          <div><h4><b><?php echo mb_strimwidth ($exibe ['nomeHq'],0,33,'...'); ?></b></h4></div>
          <div><h5>R$ <?php echo number_format ($exibe ['vl_preco'],2,',','.'); ?></h5></div>
          
          <div class="text-center">
            <a href="detalhes.php?cd=<?php echo $exibe['codHq']; ?>" >
            <button class="btn btn-lg btn-block btn-default">
              <span class="glyphicon glyphicon-info-sign" style="color:cadetblue" > Detalhes</span>
            </button></a>
          </div>
          <div class="text-center " style="margin-top:5px; margin-bottom:5px;">

          <?php if($exibe['qtdEstoque'] > 0) { ?>
            <button class="btn btn-lg btn-block btn-info">
              <span class="glyphicon glyphicon-carrinho de compras"> Comprar</span>
            </button>

            <?php } else { ?>
              <button class="btn btn-lg btn-block btn-danger" disabled>
              <span class="glyphicon glyphicon-remove-circle"> Indisponível</span>
            </button>
            <?php } ?>

          </div>
        </div>
      <?php } ?>
     
      </div> <!--fechamento class row-->
    </div> <!--fechamento container fluid-->
    <?php
    include 'rodape.html';
    ?>
</body>
</html>