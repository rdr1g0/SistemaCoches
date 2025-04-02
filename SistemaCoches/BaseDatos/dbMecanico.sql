
USE TallerReparaciones;
GO

-- Tabla Clientes
CREATE TABLE Clientes (
    DNI CHAR(10) PRIMARY KEY,
    Apellidos VARCHAR(50),
    Nombre VARCHAR(50),
    Direccion VARCHAR(100),
    CP CHAR(10),
    Poblacion VARCHAR(50),
    Telefono CHAR(15),
    Telefono2 CHAR(15)
);
GO

-- Tabla Coches
CREATE TABLE Coches (
    Matricula CHAR(10) PRIMARY KEY,
    DNIPropietario CHAR(10) NOT NULL,
    Marca VARCHAR(30),
    Modelo VARCHAR(30),
    Color VARCHAR(20),
    Km INT,
    FOREIGN KEY (DNIPropietario) REFERENCES Clientes(DNI)
);
GO

-- Tabla Reparaciones
CREATE TABLE Reparaciones (
    NumReparacion INT IDENTITY(1,1) PRIMARY KEY,
    Matricula CHAR(10) NOT NULL,
    Descripcion TEXT,
    FechaEntrada DATE,
    FechaSalida DATE,
    Horas INT,
    FOREIGN KEY (Matricula) REFERENCES Coches(Matricula)
);
GO

-- Tabla Piezas
CREATE TABLE Piezas (
    Referencia CHAR(10) PRIMARY KEY,
    Descripcion VARCHAR(100),
    Precio DECIMAL(10,2),
    Stock INT
);
GO

-- Tabla DetallesReparacion (Relación entre Reparaciones y Piezas)
CREATE TABLE DetallesReparacion (
    NumReparacion INT NOT NULL,
    Referencia CHAR(10) NOT NULL,
    Unidades INT,
    PRIMARY KEY (NumReparacion, Referencia),
    FOREIGN KEY (NumReparacion) REFERENCES Reparaciones(NumReparacion),
    FOREIGN KEY (Referencia) REFERENCES Piezas(Referencia)
);
GO
