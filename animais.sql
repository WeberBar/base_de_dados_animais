-- Cria a tabela dos animais 
CREATE TABLE Animais (
  id int,
  nome varchar(50),
  nasc date,
  peso decimal(10,2),
  cor varchar(50)
  );

INSERT INTO Animais
VALUES (01, 'Ágata', '2015-04-09', 13.9, 'branco');
INSERT INTO Animais 
VALUES (02, 'Félix', '2016-06-06', 14.3, 'preto');
INSERT INTO Animais 
VALUES (03, 'Tom', '2013-02-08', 11.2, 'azul');
INSERT INTO Animais 
VALUES (04, 'Garfield', '2015-07-06', 17.1, 'laranja');
INSERT INTO Animais 
VALUES (05, 'Frajola', '2013-08-01', 13.7, 'preto');
INSERT INTO Animais 
VALUES (06, 'Manda-chuva', '2012-02-03', 12.3, 'amarelo');
INSERT INTO Animais 
VALUES (07, 'Snowball', '2014-04-06', 13.2, 'preto');
INSERT INTO Animais 
VALUES (10, 'Agata', '2015-08-03', 11.9, 'azul');
INSERT INTO Animais 
VALUES (11, 'Gato de Botas', '2012-12-10', 11.6, 'amarelo');
INSERT INTO Animais
VALUES (12, 'Kitty', '2020-04-06', 11.6, 'amarelo');
INSERT INTO Animais 
VALUES (13, 'Milu', '2013-02-04', 17.9, 'branco');
INSERT INTO Animais 
VALUES (14, 'Pluto', '2012-01-03', 12.3, 'amarelo');
INSERT INTO Animais 
VALUES (15, 'Pateta', '2015-05-01', 17.7, 'preto');
INSERT INTO Animais
VALUES (16, 'Snoopy', '2013-07-02', 18.2, 'branco');
INSERT INTO Animais 
VALUES (17, 'Rex', '2019-11-03', 19.7, 'bege');
INSERT INTO Animais 
VALUES (20, 'Bidu', '2012-09-08', 12.4, 'azul');
INSERT INTO Animais 
VALUES (21, 'Dum Dum', '2015-04-06', 11.2, 'laranja');
INSERT INTO Animais 
VALUES (22, 'Muttley', '2011-02-03', 14.3, 'laranja');
INSERT INTO Animais 
VALUES (23, 'Scooby', '2012-01-02', 19.9, 'marrom');
INSERT INTO Animais
VALUES (24, 'Rufus', '2014-04-05', 19.7, 'branco');
INSERT INTO Animais
VALUES (25, 'Free willy', '2020-02-12', 3000, 'preto e branco');
INSERT INTO Animais
VALUES (26, 'Dumbo', '2005-01-10', 6000, 'cinza');
INSERT INTO Animais
VALUES (28, 'Coragem', '2000-04-09', 12.8, 'rosa');
-- Mostra todos os animais inseridos na tabela
SELECT * FROM Animais;

-- desabilita o safe update para poder atualizar os dados na tabela
SET SQL_SAFE_UPDATES=0;

-- Atualiza na tabela "Animais" todos os nomes com "Pateta" para "Goofy"
update Animais set nome = 'Goofy' where nome = 'Pateta';

-- Atualiza o peso para 10 dos animais com nome igual a "Garfield"
update Animais set peso = 10 where nome = 'Garfield';

-- Mostra todos da tabela para ver a atualização
select * from Animais;

-- Adiciona mais uma coluna "especie" na tabela "Animais"
alter table Animais add especie varchar(45);

/*Atualiza as especies dos animais para "gato", "cachorro" e "coelho", já que a nova coluna tem o valor null
 Utiliza os id para atualizar */
 
 -- gatos
update Animais set especie = 'gato' where id in (1,2,3,4,5,6,10,11,12);
-- cachorros
update Animais set especie = 'cachorro' where id in (13,14,15,16,17,20,21,22,23,24,28);
-- coelho 
update Animais set especie = 'coelho' where id = 7 ;
-- baleia
update Animais set especie = 'baleia' where id = 25;
-- elefante
update Animais set especie = 'elefante' where id = 26;

-- Mostra a tabela atualizada com a coluna "especie" 
select * from Animais;

-- Altere a cor de todos os gatos para laranja
update Animais set cor = 'laranja' where especie = 'gato';

-- Mostra a tabela atualizada com os gatos todos com a cor "laranja"
select * from Animais;

-- Cria um campo altura para os animais;
alter table Animais add altura decimal(4,2);
-- Cria um campo observação para os animais;
alter table Animais add observação varchar(100);

-- Mostra a tabela atualizada com os campos criados
select * from Animais;

-- Apaga todos os animais com peso maior que 200
delete from Animais where peso > 200;

/* remove todos os animais que iniciam com a letra "C"
para isso usamos o operador LIKE, que serve para comparar uma string e quando colocamos "%" depois da letra que queremos
achar, significa que quero todos que começam com a letra independente do que vem depois
*/
delete from Animais where nome LIKE 'C%';

-- Mostra a tabela atualizada 
select * from Animais;

-- Apaga a coluna cor da tabela animais 
alter table Animais drop column cor;

-- Mostra a tabela atualizada com a coluna cor apagada
select * from Animais;

-- Aumenta o tamanho do campo nome dos animais para 80 caracteres
alter table Animais modify nome varchar(80);

-- apaga todos os "gatos" e "cachorros" da tabela
delete from Animais where especie = 'gato' or especie = 'cachorro';

-- Mostra a tabela atualizada com os animais restantes
select * from Animais;

-- remove o campo data de nascimento da tabela
alter table Animais drop nasc;
select * from Animais;

-- Apaga todos os animais da tabela 
delete from Animais;

-- apaga a tabela animais 
drop table Animais;

