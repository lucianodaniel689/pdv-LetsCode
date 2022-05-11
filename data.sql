create database pdv;

create table Endereco(
id int primary key auto_increment,
rua varchar(64) not null,
cep varchar(9) not null,
numero int not null,
bairro varchar(64) not null,
cidade varchar(64) not null,
estado varchar(2) not null
);

create table Cliente(
id int primary key auto_increment,
nome varchar(64) not null,
celular varchar(64) not null,
id_endereco int not null,
FOREIGN KEY (id_endereco)
		REFERENCES endereco(id)
        );

create table Produto(
id int primary key auto_increment,
nome varchar(64) not null,
preco numeric(6,2) not null,
descricao varchar(255) not null
);

create table Loja(
id int primary key auto_increment,
nome varchar(64) not null,
cnpj varchar(18) not null,
telefone varchar(10) not null,
id_endereco int not null,
FOREIGN KEY (id_endereco)
		REFERENCES endereco(id)
        );

create table pedido_venda(
id int primary key auto_increment,
valor_total numeric(6,2) not null,
id_produto int not null,
id_cliente int not null,
id_loja int not null,
FOREIGN KEY (id_produto)
		REFERENCES Produto(id),
FOREIGN KEY (id_cliente)
		REFERENCES cliente(id),
FOREIGN KEY (id_loja)
		REFERENCES loja(id)
);

