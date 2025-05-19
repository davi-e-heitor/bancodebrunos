create database dates; 
use dates;
create table usuarios(
id int primary key,
nome varchar(64),
email varchar(64),
signo varchar(16),
cor_favorita varchar(16));
create table casais(
id int primary key,
id_usuario1 int,
id_usuario2 int,
foreign key (id_usuario1) references usuarios(id),
foreign key (id_usuario2) references usuarios(id),
nivel_paixao int);
create table encontros(
id int primary key,
id_casais int,
foreign key (id_casais) references casais (id),
lugar varchar(255),
data_hora datetime,
tema_romantico varchar(255));

 

 


