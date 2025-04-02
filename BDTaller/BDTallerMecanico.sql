CREATE DATABASE TallerMecanico;
GO

USE TallerMecanico;
GO

-- Tabla Clientes
CREATE TABLE Clientes (
    DNI VARCHAR(15) PRIMARY KEY,
    Apellidos NVARCHAR(100) NOT NULL,
    Nombre NVARCHAR(50) NOT NULL,
    Direccion NVARCHAR(200),
    CP VARCHAR(10),
    Poblacion NVARCHAR(100),
    Telefono VARCHAR(15),
    Telefono2 VARCHAR(15)
);
GO

-- Tabla Coches
CREATE TABLE Coches (
    Matricula VARCHAR(20) PRIMARY KEY,
    DNIPropietario VARCHAR(15) NOT NULL,
    Marca NVARCHAR(50),
    Modelo NVARCHAR(50),
    Color NVARCHAR(30),
    Km INT,
    CONSTRAINT FK_Coches_Clientes FOREIGN KEY (DNIPropietario) REFERENCES Clientes(DNI)
);
GO

-- Tabla Reparaciones
CREATE TABLE Reparaciones (
    NumReparacion INT PRIMARY KEY IDENTITY(1,1),
    Matricula VARCHAR(20) NOT NULL,
    Descripcion NVARCHAR(500),
    FechaEntrada DATETIME NOT NULL,
    FechaSalida DATETIME,
    Horas DECIMAL(6,2),
    CONSTRAINT FK_Reparaciones_Coches FOREIGN KEY (Matricula) REFERENCES Coches(Matricula)
);
GO

-- Tabla Piezas
CREATE TABLE Piezas (
    Referencia VARCHAR(50) PRIMARY KEY,
    Descripcion NVARCHAR(200) NOT NULL,
    Precio DECIMAL(10,2) NOT NULL,
    Stock INT NOT NULL
);
GO

-- Tabla DetallesReparacion
CREATE TABLE DetallesReparacion (
    NumReparacion INT,
    Referencia VARCHAR(50),
    Unidades INT NOT NULL,
    PRIMARY KEY (NumReparacion, Referencia),
    CONSTRAINT FK_DetallesReparacion_Reparaciones FOREIGN KEY (NumReparacion) REFERENCES Reparaciones(NumReparacion),
    CONSTRAINT FK_DetallesReparacion_Piezas FOREIGN KEY (Referencia) REFERENCES Piezas(Referencia)
);
GO