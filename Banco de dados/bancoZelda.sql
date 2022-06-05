create database Zelda;
use Zelda;

create table usuario(
id int primary key auto_increment,
nome varchar(50),
email varchar(50) unique,
tel char(11),
senha varchar(50),
fkJogo int,
foreign key (fkJogo) references Jogos (idJogo)
);

insert into usuario values (null,'fabo','fabo@gmail.com','11965728908','123', 2000),
						   (null,'yukari','yukari@gmail.com','11965728937','456', 2001),
						   (null,'joao','joao@gmail.com','11978301983','789', 2002),
						   (null,'caio','caio@gmail.com','11989271845','110', 2003);

select * from usuario;

select Jogos.nomeJogo, count(usuario.id) as 'Quantidade de Votos' from Usuario join Jogos on fkJogo = idJogo group by Jogos.nomeJogo;  

create table Jogos(
idJogo int primary key auto_increment,
nomeJogo varchar(50)
)auto_increment = 2000;

insert into Jogos values 	(null,'Phantom Hourglass'),
                            (null,'Ocarina of Time'),
                            (null,"Majora's Mask"),
                            (null,'Breath of the Wild');
						
select * from Jogos;

insert into usuario values (null,'pedro','pedro@gmail.com','11965728908','123', 2000),
						   (null,'lucas','lucas@gmail.com','11965728937','456', 2002),
						   (null,'mari','mari@gmail.com','11978301983','789', 2003),
						   (null,'mariana','mariana@gmail.com','11989271845','110', 2002),
                           (null,'douglas','douglas@gmail.com','11965728937','456', 2001),
						   (null,'syntia','syntia@gmail.com','11978301983','789', 2001),
						   (null,'delo','delo@gmail.com','11989271845','110', 2000);
-- truncate usuario;
