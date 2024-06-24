create database locadora; 
use locadora;

create table escritorio(
	id_escritorio int primary key not null auto_increment,
    nome varchar(255) default null,
    endereco varchar(255) default null
);

INSERT INTO escritorio (endereco,nome)
VALUES ('Endereco_escritorio1','escritorio1'),
('Endereco_escritorio2','escritorio2'),
('Endereco_escritorio3','escritorio3'),
('Endereco_escritorio4','escritorio4'),
('Endereco_escritorio5','escritorio5'),
('Endereco_escritorio6','escritorio6');

create table cliente(
	id_cliente int primary key not null auto_increment,
	telefone varchar(20) default null,
    endereco varchar(100) default null,
    nome varchar(100) default null,
    uf_cnh varchar(3) default null,
    cnh varchar (30) default null
);

INSERT INTO cliente (telefone,endereco,nome,uf_cnh,cnh)
VALUES (null,'Endereco_cliente1','Juca da Silva','RS','255698563256'),
('55985632589','Endereco_cliente2','Juca da Silva','RS','265698563259'),
('55935632555','Endereco_cliente3','Gabriel Almeida','SC','295698563258'),
('55995632533','Endereco_cliente4','Paulo José','PR','305698563256'),
('55995632522','Endereco_cliente5','Alexandre Zamberlan','SP','315698563257'),
(null,'Endereco_cliente6','Jose','RS','255698563256');

create table tipo_veiculo(
	id_tipo_veiculo int primary key not null auto_increment,
    nome varchar(100) default null
);

INSERT INTO tipo_veiculo (nome)
VALUES ('sedan'),
('hat'),
('caminhonete'),
('caminhao'),
('onibus');

create table veiculo(
	id_veiculo int primary key not null auto_increment,
    id_tipo_veiculo int not null,
	placa varchar(10) default null,
    data_proxima_manutencao date default null,
    foreign key (id_tipo_veiculo) references tipo_veiculo(id_tipo_veiculo)
);

INSERT INTO veiculo (id_tipo_veiculo,placa,data_proxima_manutencao)
VALUES (1,'IXT7853','2024-12-12'),
(1,'IXT7877','2023-12-12'),
(2,'JXT2323','2025-12-12'),
(2,'IXT6987','2024-12-12'),
(3,'IXT6969','2025-9-12'),
(4,'IXT4242','2023-12-12'),
(1,'IXT0003','2023-10-12'),
(1,'IXT7853','2024-12-12');

create table contrato_aluguel(
	id_contrato_aluguel int primary key not null auto_increment,
    id_cliente int not null,
    id_escritorio int not null,
    id_veiculo int not null,
    data_contrato date default null,
    duracao int default null,
    
    foreign key (id_cliente) references cliente(id_cliente),
    foreign key (id_escritorio) references escritorio(id_escritorio),
    foreign key (id_veiculo) references veiculo(id_veiculo)
);

INSERT INTO contrato_aluguel (id_cliente,id_escritorio,id_veiculo,data_contrato,duracao)
VALUES (1,2,1,'2023-06-07',3),
(2,1,3,'2023-06-07',2),
(3,3,2,'2023-06-07',24),
(4,2,4,'2023-06-07',1),
(5,4,7,'2023-06-07',12);


# Todos os clientes armazenados no sistema:
select cliente.nome
from cliente;

# Exiba os veículos que tenham final 3 no número da placa
select tipo_veiculo.nome, veiculo.placa
from tipo_veiculo, veiculo
where veiculo.placa like "%3" and
	  veiculo.id_tipo_veiculo = tipo_veiculo.id_tipo_veiculo;
    
    
# Mostre os clientes que residem no RS e que não possuam telefone
select cliente.nome, cliente.uf_cnh, cliente.telefone
from cliente
where cliente.uf_cnh like "RS" and
      cliente.telefone is null;

# Exiba o código dos clientes que alugaram veículos por mais de 90 dias.
select cliente.id_cliente, cliente.nome, contrato_aluguel.data_contrato
from cliente, contrato_aluguel
where DATEDIFF(CURDATE(), contrato_aluguel.data_contrato) > 90 and 
     cliente.id_cliente =  contrato_aluguel.id_cliente;
      

# Quantos veículos há cadastrados no sistema
select count(veiculo.id_veiculo) as qtd_veiculos
from veiculo;

# Mostre o veículo alugado por Alexandre Zamberlan.
select veiculo.id_veiculo, cliente.nome
from veiculo, cliente, contrato_aluguel
where cliente.nome like "Alexandre Zamberlan" and
contrato_aluguel.id_cliente = cliente.id_cliente and
contrato_aluguel.id_veiculo = veiculo.id_veiculo;
	  
# Mostre os clientes e os escritórios associados no contrato de aluguel.
select cliente.nome, escritorio.nome
from contrato_aluguel, cliente, escritorio
where contrato_aluguel.id_cliente = cliente.id_cliente and
	  contrato_aluguel.id_escritorio = escritorio.id_escritorio;
