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
insert into usuarios (id,nome,email,signo,cor_favorita) values
(1,"Davi Dancuart Cavalcante", "davidanc.@gmail.com","touro","arco-íris"),
(2,"Clarice Alves", "claricea.@email.com","aquarius","verde"),
(3,"Otávio Batista","batista.@email.com","escorpião","roxo"),
(4,"Enzo Castro","enzo.@email.com","gêmeos","laranja"),
(5,"Isis Ferreira","isis.@email.com","virgem","marrom"),
(6,"Samuel Garcia","samu.@email.com","libra","azul"),
(7,"João Lima","lima.@email.com","leão","vermelho"),
(8,"Thomas Castro","thomas.@email.com","áries","preto"),
(9,"Heloise Ramos","helo.@email.com","pexie","branco"),
(10,"Ariane Oliveira","ariane.@email.com","sargitario","amarelo");
insert into casais (id,id_usuario1,id_usuario2,nivel_paixao) values
(1,1,4,100),
(2,2,3,75),
(3,5,6,98),
(4,7,9,54),
(5,8,10,100);
insert into encontros (id,id_casais,lugar,data_hora,tema_romantico) values
(1, 1, 'Ristorante Bella Notte', '2025-06-12 20:00:00', 'Noite do fondue com declaração de amor'),
(2, 2, 'Praia do Amor', '2025-07-05 18:00:00', 'Piquenique ao pôr do sol'),
(3, 3, 'Cabana da Serra', '2025-08-14 21:00:00', 'Noite de fondue com jazz ao vivo'),
(4, 4, 'Jardim das Rosas', '2025-06-24 19:30:00', 'Caminhada sob as estrelas'),
(5, 5, 'Cinema Vintage', '2025-09-02 20:30:00', 'Filme antigo + carta de amor');



 


