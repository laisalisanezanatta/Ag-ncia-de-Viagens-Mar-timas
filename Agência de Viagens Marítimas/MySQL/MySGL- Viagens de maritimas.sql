-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Cliente (
ID_Cliente VARCHAR(10) PRIMARY KEY,
Check-in VARCHAR(10),
Nome_Cliente VARCHAR(10),
Reserva VARCHAR(10),
Email_Cliente VARCHAR(10)
)

CREATE TABLE Destinos (
Cidades VARCHAR(10),
Praias_Visitadas VARCHAR(10)
)

CREATE TABLE Transporte-Viagem (
ID_Viagem VARCHAR(10) PRIMARY KEY,
Avião VARCHAR(10),
Navio_Cruzeiro VARCHAR(10),
ID_Cliente VARCHAR(10),
FOREIGN KEY(ID_Cliente) REFERENCES Cliente (ID_Cliente)
)

CREATE TABLE Pagamento (
Cartao_Credito VARCHAR(10),
Boleto VARCHAR(10),
Pix VARCHAR(10)
)

CREATE TABLE Hospedagem (
ID_Cliente VARCHAR(10) PRIMARY KEY,
Pousada VARCHAR(10),
Bangalô VARCHAR(10),
Hotel_Luxo VARCHAR(10),
Resort VARCHAR(10),
ID_Viagem VARCHAR(10),
FOREIGN KEY(ID_Viagem) REFERENCES Transporte-Viagem (ID_Viagem)
)

