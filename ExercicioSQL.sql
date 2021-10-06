
use LojaExercicio

create table Fornecedor 
(
	id int identity (1,1)
	,nome varchar (200)
	, CNPJ varchar (14)
	, endereco varchar (200)
	CONSTRAINT PK_Fornecedor PRIMARY KEY (id)
)

select * from Fornecedor

create table Modelo
(
	id int identity (1,1)
	,idFornecedor int
	,codigoRef varchar(50)
	,cor varchar (50)
	, tamanho int
	CONSTRAINT PK_Modelo PRIMARY KEY (id)
)

create table Estoque
(
	id int identity (1,1)
	,idModelo int
	,qtd int
	CONSTRAINT PK_Estoque PRIMARY KEY (id)
)

alter table Modelo
add constraint FK_Modelo_1 foreign key (idFornecedor) REFERENCES Fornecedor(id)

alter table Estoque
add constraint FK_Estoque_1 foreign key (idModelo) REFERENCES Modelo (id)

insert into Fornecedor
values 
('Nike', '12345678901234', 'Rua Emilio francisco 123')
,('Dafiti', '55555555555555', 'Rua José Felino 55')
,('Vans', '22222222222222', 'Rua Armandando Batista 657')
,('Kallan', '77777777777777', 'Ocian 88')
,('Adidas', '88888888888888', 'Boqueirão 77')

select * from Fornecedor

insert into Modelo
values 
(1, '14578', 'Vermelho', 32)
,(1, '14578', 'Vermelho', 33)
,(1, '14578', 'Vermelho', 34)
,(1, '14578', 'Vermelho', 35)
,(1, '14578', 'Vermelho', 36)
,(1, '14578', 'Vermelho', 37)
,(1, '14578', 'Vermelho', 38)
,(1, '14578', 'Vermelho', 39)
,(2, '56789', 'Preto', 35)
,(2, '56789', 'Preto', 33)
,(2, '56789', 'Preto', 37)
,(2, '56789', 'Preto', 37)
,(2, '56789', 'Preto', 42)
,(2, '56789', 'Preto', 43)
,(2, '56789', 'Preto', 12)
,(2, '56789', 'Preto', 32)
,(2, '56789', 'Preto', 15)

,(3, '56789', 'Preto', 15)
,(3, '56789', 'Preto', 15)
,(3, '56789', 'Preto', 15)
,(3, '56789', 'Preto', 15)
,(3, '56789', 'Preto', 15)
,(3, '56789', 'Preto', 15)
,(3, '56789', 'Preto', 15)
,(3, '56789', 'Preto', 15)
,(3, '56789', 'Preto', 15)

,(4, '56789', 'Preto', 15)
,(4, '56789', 'Preto', 15)
,(4, '56789', 'Preto', 15)
,(4, '56789', 'Preto', 15)
,(4, '56789', 'Preto', 15)
,(4, '56789', 'Preto', 15)
,(4, '56789', 'Preto', 15)
,(4, '56789', 'Preto', 15)
,(4, '56789', 'Preto', 15)

,(5, '56789', 'Preto', 15)
,(5, '56789', 'Preto', 15)
,(5, '56789', 'Preto', 15)
,(5, '56789', 'Preto', 15)
,(5, '56789', 'Preto', 15)
,(5, '56789', 'Preto', 15)
,(5, '56789', 'Preto', 15)
,(5, '56789', 'Preto', 15)
,(5, '56789', 'Preto', 15)
,(5, '56789', 'Preto', 15)



select * from Modelo
select * from Estoque

insert into Estoque
values
(1,5)
,(1,3)
,(1,7)
,(1,4)
,(1,2)
,(1,8)
,(1,9)
,(1,1)
,(1,10)
,(2,5)
,(2,3)
,(2,7)
,(2,4)
,(2,2)
,(2,8)
,(2,9)
,(2,1)
,(2,10)
,(3,5)
,(3,3)
,(3,7)
,(3,4)
,(3,2)
,(3,8)
,(3,9)
,(3,1)
,(3,10)
,(4,5)
,(4,3)
,(4,7)
,(4,4)
,(4,2)
,(4,8)
,(4,9)
,(4,1)
,(4,10)
,(5,5)
,(5,3)
,(5,7)
,(5,4)
,(5,2)
,(5,8)
,(5,9)
,(5,1)
,(5,10)

update Estoque
set qtd = 3
where id = 1

update Estoque
set qtd = 2
where id = 3

update Estoque
set qtd = 5
where id = 45 

update Estoque
set qtd = 1
where id = 9

update Estoque
set qtd = 5
where id = 6

update Estoque
set qtd = 1
where id = 7

update Estoque
set qtd = 2
where id = 13

update Estoque
set qtd = 3
where id = 12

update Estoque
set qtd = 3
where id = 15

update Estoque
set qtd = 1
where id = 18

delete Modelo
where idFornecedor = 3

delete Fornecedor
where id = 3

