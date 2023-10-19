<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mostrar Produtos</title>
</head>
<body>
    <?php
        include 'conexao.php';
        $consulta = $cn->query('select * from vmHQ');
        while ($exibe = $consulta->fetch(PDO::FETCH_ASSOC)){

        echo $exibe['nomeHq'].'<br>';
        echo $exibe['vl_preco'].'<br>';
        echo $exibe['descrCategoria'].'<br>';
        echo $exibe['qtdEstoque'].'<br>';
        echo '<hr>';
        }
    ?>
</body>
</html>