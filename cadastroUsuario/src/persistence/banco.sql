drop database if exists cadastroUsuario;

create database cadastroUsuario;

use cadastroUsuario;

create table usuario(
	idUsuario integer auto_increment primary key,
	nome varchar(50) not null, 
	sobrenome varchar(50) not null,
	email varchar(60) not null,
	idade integer not null
);

desc usuario;

select * from usuario;


