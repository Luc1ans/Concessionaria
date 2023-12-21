CREATE TABLE Opcionaisveiculos (
    IDopVe int IDENTITY(1,1) NOT NULL,
    IDVeiculo int  NOT NULL,
    IDOpcional int NOT NULL,
    primary key (IDopVe),
    CONSTRAINT FK_IDVeiculo FOREIGN KEY (IDVeiculo) REFERENCES Veiculoes(IdVeiculo),
    CONSTRAINT FK_IDOpcional FOREIGN KEY (IDOpcional) REFERENCES Opcionals(IdOpcional),
 )

 drop table Opcionaisveiculos