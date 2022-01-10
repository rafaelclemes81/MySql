use cadastro;
create table pessoas (
id int not null auto_increment,
nome varchar(30) NOT NULL,
nascimento date,
sexo enum('M', 'F'),
peso decimal (5,2),
altura decimal (3,2),
nacionalidade varchar(20) default 'Brasil',
PRIMARY KEY (id)
) DEFAULT CHARSET = utf8;

create database cadastro
default character set utf8
default collate utf8_general_ci;

describe pessoas;

drop database sys;

drop table pessoas;

insert into pessoas 
(id, nome, nascimento, sexo, peso, altura)
values
(default, 'DEISE', '1988-12-15', 'F', '59.00', '1.69');

insert into pessoas 
(id, nome, nascimento, sexo, peso, altura)
values
(default, 'JOSE', '2014-04-07', 'M', '40.00', '1.32'),
(default, 'ARTHUR', '2018-10-23', 'M', '20.00', '0.89');

SELECT * FROM pessoas; 

insert into pessoas 
values
(default, 'MARIAZINHA', '1988-12-15', 'F', '59.00', '1.69', default);