-- WhyHQ's Loja de Quadrinhos LAURA 2DS --
CREATE DATABASE db_LojaDeQuadrinhos
default character set utf8
default collate utf8_general_ci;
USE db_LojaDeQuadrinhos;

-- tabela categoria Quadrinhos --
create table tbCategoria(	
    codCategoria int primary key auto_increment,
    descrCategoria varchar(25) not null    
)
default charset utf8;

-- tabela autor --
create table tbAutor(	
    codAutor int primary key auto_increment,
    nomeAutor varchar(45) not null    
)
default charset utf8;

-- tabela HQ (quadrinhos, produto) --
create table tbHQ(	
    codHq int primary key auto_increment,
    numIsbn varchar(17) not null,
    codCategoria int not null,
    nomeHq varchar(70) not null,
    codAutor int not null,
    numPag varchar(4) not null,
    vl_preco decimal(6,2) not null,
    qtdEstoque int not null,
    descr_resumo_hq text not null,
    ds_capa varchar(255) not null,
    sg_lancamento enum('S','N') not null,
    constraint fk_cat foreign key(codCategoria) references tbCategoria(codCategoria),
    constraint fk_autor foreign key(codAutor) references tbAutor(codAutor)
)  
default charset utf8;

-- aulas 11 e 12 (inserindo dados na tabela) --
insert into tbCategoria
values(default,'Marvel Comics'), -- default, numeração automatica --
(default, 'DC Comics'),
(default, 'Disney'),
(default, 'Star Wars'),
(default, 'Nacionais'),
(default, 'Internacionais');

-- inserindo dados na tabela autor, "imagens" dos quadrinhos e seus respectivos autores --
insert into tbAutor
values(default,'Stan Lee'), -- codigo 1 
(default, 'George Lucas'),	-- codigo 2	
(default, 'Jack Kirby'),	-- codigo 3 
(default, 'Alan Moore'),	-- codigo 4
(default, 'Jeph Roeb'),	-- codigo 5
(default, 'Jonh Romita Junior'), -- codigo 6 
(default, 'Tom King'),	-- codigo 7             
(default, 'George Perez'),	-- codigo 8
(default, 'Maurício de Souza'),	-- codigo 9 
(default, 'Marv Wolfman'),	-- codigo 10
(default, 'Matt Fraction'),	-- codigo 11 
(default, 'Carl Barks'),	-- codigo 12
(default, 'Jordi Lefebre'),	-- codigo 13
(default, 'Bianca Pinheiro'),	-- codigo 14 
(default, 'Jim Starlin'), -- codigo 15 
(default, 'Marco Nulcci'),	-- codigo 16
(default, 'Yoshihiro Togashi'),	-- codigo 17 
(default, 'Akira Toriyama'); -- codigo 18 

-- inserindo dados tabela livro --
insert into tbHQ
values
(Default,'978-8583682868','1','Desafio Infinito','15','372','149.00','25', 
'<p>QUEM PODERÁ ENFRENTAR O ONIPOTENTE THANOS? Nesta emocionante HQ, Thanos tenta atender aos desígnios de sua amada, traçando um 
infalível plano para subjulgar as misteriosas entidades cósmicas e se apoderar das poderosas seis Jóias do Infinito.</p>
 <p>O insano vilão torna-se o ser mais poderoso do Universo Marvel! Nesta obra, Jim Starlim retrata de forma única o
 inesquecível personagem, fazendo desta HQ, uma das mais aclamadas do universo dos quadrinhos.</p>', 'desafioinfinito','N'),
 
 

 (Default,'9788542603309','1','Gavião Arqueiro','11','136','59.90','40',
'<p> QUEM PODERÁ DETER A GANGUE DO AGASALHO?! Clint Barton, vulgo Gavião Arqueiro: herói, vingador, péssimo em relacionamentos. 
Kate Bishop, vulgo Gavião Arqueira: aventureira, jovem vingadora, arrasa nas festas. 
A Marvel acerta aqui, ao repaginar esse lendário e carismático personagem dos Vingadores! Agora com a jovem Kate Bishop, uma garota animada que 
busca ser a melhor heroína que esse mundo ja teve!.</p>', 'gaviaoarqueiro','N'),
 

(Default,'978-8542604467','5','Monica Força','14','84','69.00','23',
'<p>A HQ "Monica Força" apresenta uma abordagem diferente do universo da Turma da Mônica, 
onde os personagens têm superpoderes e enfrentam desafios mais complexos. Na história, 
Mônica ganha habilidades sobre-humanas após ser exposta a uma substância misteriosa 
durante uma visita ao laboratório de Franjinha. Ela desenvolve força, velocidade e 
resistência extraordinárias, transformando-se em uma espécie de super-heroína. O QUE ACONTECERÁ AGORA?</p>', 
'monicaforca','N'),
 
 
 (Default,'‎ B088FWMG7L','6','Dragon Ball','18','196','59.00','80',
'<p>A saga se expande! Goku finalmente descobre suas origens como um Saiyajin, 
uma raça guerreira alienígena, e enfrenta inimigos ainda mais poderosos. Essa coleção abrange diversos personagens icônicos do anime,
 incluindo seu filho Gohan e vários aliados e adversários memoráveis, como Vegeta, 
Piccolo, Freeza, Cell e Majin Buu..</p>
 <p>Não se pode perder tamanhos combates! Não há limites para tamanhas histórias</p>','dragonball','N');
 
 -- segunda parte --
 insert into tbHQ
values 
(Default,'978-8577870400','6','HunterXHunter','17','184','30.90','100',
'<p>O primeiro lançamento da JBC em 2008, é um verdadeiro fenômeno no Japão. Acompanhe a vida acompanhamos Gon, 
um menino morador da Ilha da Baleia que foi criado por sua tia, sempre achando que seus pais estivessem mortos. 
Porém, um dia lhe é revelado que seu pai não apenas está vivo, como também havia se tornado um dos melhores 
Hunters de todos os tempos.</p>','hunterxhunter','S'),
 
 
 (Default,'978-6555129403','1','Eternos','3','400','169.90','0',
'<p>magine uma raça de seres imortais com habilidades super-humanas aparentemente ilimitadas. 
Outrora adorados como deuses, esse grupo fantástico deixou a Terra para explorar as estrelas 
após guerrear contra os panteões grego, romano e nórdico pela supremacia sobre a humanidade. 
Eles são os Eternos... e são apenas uma fração de toda uma mitologia cósmica!</p>','eternos','N'),
 
(Default,'‎ 978-8583684244','1','Homem Aranha Azul','5','168','149.90','20',
'<p>Nosso amigão da vizinhança está passando por problemas difíceis... A perda de um grande amor.
Acompanhe nessa emocionante história, a prova de que heróis tem coração.</p>','homemaranhaazul','N'),
 
 
 (Default,'978-6525907024','5','BOX Turma da Mônica','9','1152','95.90','25',
'<p>Nessa coletânea, confira as melhores histórias dos baixinhos do bairro do Limoeiro! Mônica e seus amigos
vivendo icônicas histórias numa edição completa, reunida com carinho pelo próprio Maurício de Souza!</p>','tmonica','N');

-- terceira parte --
insert into tbHQ
values 
 (Default,'978-8594540898','4','Star Wars Dark Edition','2','528','89.90','0',
'<p>Em uma galáxia, muito, muito distante... Nesta grande edição, confira a trilogia da saga mais aclamada dos cinemas! Feita em
uma edição especial para os fãs de guerras nas estrelas. </p>','starwars','S'),
 
 (Default,'978-6525900728','2','Crise nas infinitas terras','10','368','99.90','28',
'<p>Mundos viveram... mundos morreram... e as histórias em quadrinhos nunca mais foram as mesmas! 
Escrita por Marv Wolfman e desenhada pelo saudoso George Pérez, Crise Nas Infinitas Terras apresenta na 
íntegra a saga que recriou o Universo DC! Uma ameaça trazida por uma irresistível força misteriosa obriga 
o semidivino Monitor a convocar superseres de diversos mundos para defender a existência de todas as realidades. 
Mas o caminho para a salvação exigirá um sacrifício nunca antes testemunhado!</p>',
 'criseinfinitas','S'),
 
 (Default,'978-6555244816','3','Grande Almanaque Disney','16','192','29.90','50',
'<p>Você alguma vez se perguntou sobre o que aconteceu antes das histórias que conhecemos? 
Ou como foi que nossos heróis e vilões tornaram-se o que são? Nesta edição, temos duas obras-primas 
dos quadrinhos Disney que tratam disso! A primeira é A Balada de Patacôncio, na qual conhecemos um pouco 
mais sobre a vida desse antagonista das histórias do Tio Patinhas. </p>','almanaquedisney','N'),
 
 (Default,'978-6559602537','2','Liga da Justiça Vintage','8','328','59.90','0',
'<p>Nesta incrível edição em capa dura, são resgatados o run de George Pérez na Liga da Justiça, nos anos 1980. 
Não perca as batalhas da equipe contra Darkseid e a Sociedade Secreta dos Supervilões, e muitas outras, saindo 
diretamente das mão de um dos maiores artistas da atualidade.</p>','ligadajustica','N'); 

-- quarta parte --
insert into tbHQ
values 
 (Default,'978-8542606997','1','Visão: Pouco pior que um homem','7','140','39.90','25',
'<p>O VISÃO quer ser humano. E o que é mais humano do que formar uma família? 
Para tal, ele retorna ao laboratório onde Ultron o criou e o moldou para ser uma arma. 
O lugar onde ele se rebelou pela primeira vez contra seu destino, imaginando que poderia ser 
mais do que aquilo ― que poderia ser um homem. Então, ele os construiu. Uma esposa, Virgínia. 
Dois gêmeos adolescentes, Viv e Vin. Todos herdaram sua aparência. Seus poderes. E compartilham
de sua grande ambição (ou seria uma obsessão?)</p>','visao','S'),
 
 (Default,'978-6599620003','5','Apesar de Tudo','13','152','79.90','40',
'<p>O amor que Ana e Zeno nutrem um por outro sobrevive apesar dos caminhos que suas vidas tomaram. 
Ela, carismática e ambiciosa, tornou-se prefeita de sua cidade natal. Ele, enigmático e sedutor, 
viajou o mundo colecionando aventuras. Opostos que se atraem, mas não se tocam. O reencontro acontece 
quando os dois já passaram dos sessenta anos. Daí surge a força que transporta os leitores no tempo em 
direção a décadas passadas até chegarmos ao início desta jornada. Uma história sobre amor, borboletas, 
marujos e pinguins.</p>','apesartudo','S');

select count(*) from tbHQ;

select * from tbHQ;

select numIsbn, nomeHq from tbHQ;

select * from tbAutor;

select * from tbCategoria;

-- select usando o comando inner join, para trazer o resultado de mais de uma tabela + criação de uma view --
create view vmHQ
as select
     tbHQ.codHq,
     tbHQ.numisbn,
     tbCategoria.descrCategoria,
     tbHQ.nomeHq,
     tbAutor.nomeAutor,
     tbHQ.numPag,
     tbHQ.vl_preco,
     tbHQ.qtdEstoque,
     tbHQ.descr_resumo_hq,
     tbHQ.ds_capa,
     tbHQ.sg_lancamento
from tbHQ inner join tbAutor
on tbHQ.codAutor = tbAutor.codAutor
inner join tbCategoria
on tbHQ.codCategoria = tbCategoria.codCategoria;

select * from vmHQ WHERE codHQ=4;

 CREATE USER 'hq'@'localhost' IDENTIFIED WITH mysql_native_password BY '030506';
 GRANT ALL PRIVILEGES ON db_LojaDeQuadrinhos.* TO 'hq'@'localhost' WITH GRANT OPTION;

-- aula 21, 22 e 23 --
select nomeHq, vl_preco, ds_capa from vmHQ;

-- aula 24 e 25 --
select nomeHq, vl_preco, ds_capa from vmHQ where sg_lancamento = 'S';
select nomeHq, vl_preco, ds_capa from vmHQ where descrCategoria = 'Marvel Comics';

-- testes --
USE db_LojaDeQuadrinhos;

create table tbUsuario(
codUsuario int primary key auto_increment,
nomeUsuario varchar (80) not null,
dsEmail varchar (80) not null, -- ds = descrição --
dsSenha varchar (6) not null,
dsStatus boolean not null,
dsEndereco varchar (80) not null,
dsCidade varchar (30) not null,
CEP char (9) not null
) default charset utf8;

-- inserts de usuário --
insert into tbUsuario 
values (default, 'Laura Cristine', 'eulaura@gmail.com', 'lcs@06', 1, 'Rua Bonita, 81', 'São Paulo', '05125-151');
insert into tbUsuario 
values (default, 'Samuel Vasconcelos', 'samukinha@gmail.com', 'elo12', 0, 'Rua Rumi de Ranieri, 81', 'São Paulo', '05125-150');
insert into tbUsuario 
values (default, 'Cláudio Andrade', 'clauandrade@gmail.com', '03050', 0, 'Rua Abraham Lincon, 44', 'São Paulo', '08840-000');

select * from tbUsuario;

-- testes --
USE db_LojaDeQuadrinhos;

select * from vmHQ where nomeHq like 'E%';

-- alteração da extensão da imagem --
select * from tbHq;
update tbHQ set ds_capa = 'desafioinfinito.jpg' where codHq = 1;
update tbHQ set ds_capa = 'gaviaoarqueiro.jpg' where codHq = 2;
update tbHQ set ds_capa = 'monicaforca.jpg' where codHq = 3;
update tbHQ set ds_capa = 'dragonball.jpg' where codHq = 4;
update tbHQ set ds_capa = 'hunterxhunter.jpg' where codHq = 5;
update tbHQ set ds_capa = 'eternos.jpg' where codHq = 6;
update tbHQ set ds_capa = 'homemaranhaazul.jpg' where codHq = 7;
update tbHQ set ds_capa = 'tmonica.jpg' where codHq = 8;
update tbHQ set ds_capa = 'starwars.jpg' where codHq = 9;
update tbHQ set ds_capa = 'criseinfinitas.jpg' where codHq = 10;
update tbHQ set ds_capa = 'almanaquedisney.jpg' where codHq = 11;
update tbHQ set ds_capa = 'ligadajustica.jpg' where codHq = 12;
update tbHQ set ds_capa = 'visao.jpg' where codHq = 13;
update tbHQ set ds_capa = 'apesartudo.jpg' where codHq = 14;

delete from tbHQ where codHq=18;



