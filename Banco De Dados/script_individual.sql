create database projetoIndividual;
use projetoIndividual;

create table personagem(
idPersonagem int primary key auto_increment ,
nome varchar(45),
imagem varchar(200)
) auto_increment=10;

create table lugar(
idLugar int primary key auto_increment,
nome varchar(45),
imagem varchar(200)
) auto_increment=20;

create table usuario(
idUsuario int primary key auto_increment,
fkPersonagem int,
constraint fkPersonagemUsuario foreign key(fkPersonagem)
references personagem(idPersonagem),
fkLugar int,
constraint fkLugarUsuario foreign key(fkLugar)
	references lugar(idLugar),
nome varchar(100) not null,
dataNasc date not null,
genero char(1) not null,
constraint chkGenero
	check(genero in('F','M','O')),
fkComentario int,
constraint fkComentarioUsuario foreign key(fkComentario)
	references mensagem(idMensagem)
);

create table mensagem(
idMensagem int primary key auto_increment,
conteudo varchar(200) not null
);

create table quiz(
idQuiz int,
fkUsuario int,
primary key(idQuiz,fkUsuario),
constraint fkQuizUsuario foreign key(fkUsuario)
	references usuario(idUsuario),
pontuacao int
);


insert into personagem values
(default,'Homer Simpson','.assets/img-homer'),
(default,'Marge Simpson','.assets/img-marge'),
(default,'Bart Simpson','.assets/img-bart'),
(default,'Lisa Simpson','.assets/img-lisa'),
(default,'Maggie Simpson','.assets/img-maggie'),
(default,'Sideshow Bob','.assets/img-side'),
(default,'Ned Flanders','.assets/img-ned'),
(default,'Milhouse Van Houten','.assets/img-mil'),
(default,'Krusty','.assets/img-krust'),
(default,'Moe Szyslak','.assets/img-moe'),
(default,'Chef Wiggum','.assets/img-wig');


insert into lugar values
(default,'Bar do Moe','.assets/barMoe'),
(default,'A Casa dos Simpsons','.assets/casasSimp'),
(default,'Usina Nuclear de Springfield','.assets/usina'),
(default,'Escola Elementar de Springfield','.assets/escola'),
(default,'Kwik-E-Mart','.assets/kwik'),
(default,'Igreja de Springfield','.assets/igreja');


show tables;

