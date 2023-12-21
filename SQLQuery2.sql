insert into marca values ('Toyota1');
insert into marca values ('Volksvagem');

insert into modelo values ('Hilux',1);
insert into modelo values ('Gol',2);
insert into modelo values ('Corola1',1);

insert into versao values ('4x4 2.8 turbo SW4',1);
insert into versao values ('XLI 1.6',3);
insert into versao values ('1.6 MI',2);

insert into blindagem values ('I-III - Tiro de Fuzil M16, AK-47 e FAL');
insert into blindagem values ('0 - Nao possui');

insert into cambio values ('Manual');
insert into cambio values ('Automatico');

insert into Categoria values ('Novo');
insert into Categoria values ('Usado');

insert into Combustivel values ('Gasolina');
insert into Combustivel values ('Diesel');

insert into Cor values ('Preto');
insert into Cor values ('Branco');
insert into Cor values ('Prata');

insert into Opcional values ('Vidro Eletrico');
insert into Opcional values ('Turbo');

insert into Usuario values ('admin@hotmail.com','7C4A8D09CA3762AF61E59520943DC26494F8941B','2023-10-14 14:47:24','2023-10-27 15:53:24',1)

insert into veiculo values (2010, 2022, 1, 1, 1, 1, 1, 'MTB-5669', 5, null, 50000, 0, 0, '2023-03-25 12:30:00', 'Hilux 2022', 0, 0, 'A vista', 1, 47500, 1, 1, 1)

--insert into 'veiculo'('AnoFabricacao','AnoModelo','BlindagemID','CambioID','CombustivelID','CorID','IdVeiculo','VersaoID','Placa',
--'Portas','Quilometragem','PrecoNormal','Acessos','Destaque','DataCadastro','Descricao','AceitaPermuta','VeiculoComDivida',
--'CondicaoPagamento','Ranking','PrecoPromocional','UsuarioID','QtdeEstoque','CategoriaID') 
--values (1959,2012,2,2,2,2,2,1,'MTB-5669',5,null,15000.00,0,0,'2011-11-07 14:37:03','',0,0,'',0.00,14990.00,1,1,5);
