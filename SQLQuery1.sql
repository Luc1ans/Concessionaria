CREATE TABLE Marca (
  Descricao varchar(200) NOT NULL,
  IdMarca int identity(1,1) primary key,
) ;

CREATE TABLE Modelo (
  Descricao varchar(100) NOT NULL,
  MarcaID int,
  IdModelo int NOT NULL identity(1,1) PRIMARY KEY,
  CONSTRAINT FK_Modelo_Marca FOREIGN KEY (MarcaID) REFERENCES Marca (IdMarca) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Versao (
  Descricao varchar(100) NOT NULL,
  ModeloID int NOT NULL,
  IdVersao int NOT NULL identity(1,1) PRIMARY KEY,
  CONSTRAINT FK_Versao_Modelo FOREIGN KEY (ModeloID) REFERENCES Modelo (IdModelo) ON DELETE CASCADE ON UPDATE CASCADE
);

--insert into 'versao'('Descricao','ModeloID','IdVersao') values ('4x4 2.8 turbo SW4',1,1);
--insert into 'versao'('Descricao','ModeloID','IdVersao') values ('XLI 1.6',3,3);
--insert into 'versao'('Descricao','ModeloID','IdVersao') values ('1.6 MI',2,4);

CREATE TABLE Blindagem (
  IdBlindagem int NOT NULL identity(1,1) primary key,
  Descricao varchar(200) NOT NULL,
);

--insert into 'blindagem'('IdBlindagem','Descricao') values (2,'I-III - Tiro de Fuzil M16, AK-47 e FAL');

CREATE TABLE Cambio (
  IdCambio int NOT NULL identity(1,1) primary key,
  Descricao varchar(200) NOT NULL,
);

--insert into 'cambio'('IdCambio','Descricao') values (2,'Manual');

CREATE TABLE Categoria (
  IdCategoria int NOT NULL identity(1,1) primary key,
  Descricao varchar(100) NOT NULL,
);

--insert into Categoria('IdCategoria','Descricao') values (5,'Novos');

CREATE TABLE Combustivel (
  Descricao varchar(200) NOT NULL,
  IdCombustivel int NOT NULL identity(1,1) primary key,
);

--insert into 'combustivel'('Descricao','IdCombustivel') values ('Gasolina',2);

CREATE TABLE Cor (
  IdCor int NOT NULL identity(1,1) primary key,
  Nome varchar(200) NOT NULL,
);

--insert into 'cor'('IdCor','Nome') values (2,'Preto');

CREATE TABLE Opcional (
  Descricao varchar(200) NOT NULL,
  IdOpcional int NOT NULL identity(1,1) primary key,
);


--insert into 'opcional'('Descricao','IdOpcional') values ('Vidro Elétrico',1);


CREATE TABLE Usuario (
  Email varchar(100) NOT NULL,
  IdUsuario int NOT NULL identity(1,1) primary key,
  Senha varchar(250) NOT NULL,
  DataCadastro datetime NOT NULL,
  DataUltimoAcesso datetime NOT NULL,
  Ativo tinyint NOT NULL,
);


--insert into 'usuario'('Email','IdUsuario','Senha','DataCadastro','DataUltimoAcesso','Ativo') values ('admin@hotmail.com',1,'7C4A8D09CA3762AF61E59520943DC26494F8941B','2023-10-14 14:47:24','2023-10-27 15:53:24',1);


CREATE TABLE Veiculo (
	AnoFabricacao int DEFAULT NULL,
	AnoModelo int DEFAULT NULL,
	BlindagemID int NOT NULL,
	CambioID int NOT NULL,
	CombustivelID int NOT NULL,
	CorID int NOT NULL,
	IdVeiculo int NOT NULL identity(1,1) primary key,
	VersaoID int NOT NULL,
	Placa varchar(10) NOT NULL,
	Portas int DEFAULT NULL,
	Quilometragem int DEFAULT NULL,
	PrecoNormal decimal(18,2) NOT NULL,
	Acessos int NOT NULL,
	Destaque tinyint NOT NULL,
	DataCadastro datetime NOT NULL,
	Descricao varchar(8000) DEFAULT NULL,
	AceitaPermuta tinyint NOT NULL,
	VeiculoComDivida tinyint NOT NULL,
	CondicaoPagamento varchar(250) DEFAULT NULL,
	Ranking decimal(18,2) DEFAULT NULL,
	PrecoPromocional decimal(18,2) NOT NULL,
	UsuarioID int NOT NULL,
	QtdeEstoque int NOT NULL,
	CategoriaID int NOT NULL,
  
	CONSTRAINT FK_Veiculo_Usuario FOREIGN KEY (UsuarioID) REFERENCES Usuario (IdUsuario) ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT FK_Veiculo_Blindagem FOREIGN KEY (BlindagemID) REFERENCES Blindagem (IdBlindagem) ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT FK_Veiculo_Cambio FOREIGN KEY (CambioID) REFERENCES Cambio (IdCambio) ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT FK_Veiculo_categoria FOREIGN KEY (CategoriaID) REFERENCES Categoria (IdCategoria),
	CONSTRAINT FK_Veiculo_combustivel FOREIGN KEY (CombustivelID) REFERENCES Combustivel (IdCombustivel) ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT FK_Veiculo_cor FOREIGN KEY (CorID) REFERENCES Cor (IdCor) ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT FK_Veiculo_versao FOREIGN KEY (VersaoID) REFERENCES Versao (IdVersao) ON DELETE NO ACTION ON UPDATE NO ACTION
);


--insert into 'veiculo'('AnoFabricacao','AnoModelo','BlindagemID','CambioID','CombustivelID','CorID','IdVeiculo','VersaoID','Placa','Portas','Quilometragem','PrecoNormal','Acessos','Destaque','DataCadastro','Descricao','AceitaPermuta','VeiculoComDivida','CondicaoPagamento','Ranking','PrecoPromocional','UsuarioID','QtdeEstoque','CategoriaID') values (1959,2012,2,2,2,2,2,1,'MTB-5669',5,null,15000.00,0,0,'2011-11-07 14:37:03','',0,0,'',0.00,14990.00,1,1,5);
--insert into 'veiculo'('AnoFabricacao','AnoModelo','BlindagemID','CambioID','CombustivelID','CorID','IdVeiculo','VersaoID','Placa','Portas','Quilometragem','PrecoNormal','Acessos','Destaque','DataCadastro','Descricao','AceitaPermuta','VeiculoComDivida','CondicaoPagamento','Ranking','PrecoPromocional','UsuarioID','QtdeEstoque','CategoriaID') values (null,null,2,2,2,2,3,4,'MTB-5110',null,50000,321.31,0,0,'2011-11-07 15:28:32','',0,0,'',0.00,120.00,1,1,5);


CREATE TABLE Opcionaisveiculo (
  OpcionalID int NOT NULL,
  VeiculoID int NOT NULL,
  PRIMARY KEY (OpcionalID,VeiculoID),
  CONSTRAINT FK_OpcionaisVeiculo_Opcional FOREIGN KEY (OpcionalID) REFERENCES Opcional (IdOpcional) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FK_OpcionaisVeiculo_Veiculo FOREIGN KEY (VeiculoID) REFERENCES Veiculo (IdVeiculo) ON DELETE NO ACTION ON UPDATE NO ACTION
);