USE TallerReparaciones;
GO

-- Insertar datos en la tabla Clientes
INSERT INTO Clientes (DNI, Apellidos, Nombre, Direccion, CP, Poblacion, Telefono, Telefono2) VALUES
('123456789A', 'Gómez', 'Juan', 'Calle A, 123', '28001', 'Madrid', '600111222', '910111222'),
('234567890B', 'Pérez', 'María', 'Calle B, 456', '08002', 'Barcelona', '601222333', '911222333'),
('345678901C', 'Fernández', 'Luis', 'Calle C, 789', '29003', 'Málaga', '602333444', '912333444'),
('456789012D', 'Rodríguez', 'Ana', 'Calle D, 321', '41004', 'Sevilla', '603444555', '913444555'),
('567890123E', 'López', 'Carlos', 'Calle E, 654', '46005', 'Valencia', '604555666', '914555666'),
('678901234F', 'Martínez', 'Elena', 'Calle F, 987', '35006', 'Las Palmas', '605666777', '915666777'),
('789012345G', 'Sánchez', 'David', 'Calle G, 147', '33007', 'Oviedo', '606777888', '916777888'),
('890123456H', 'Díaz', 'Laura', 'Calle H, 258', '15008', 'A Coruña', '607888999', '917888999'),
('901234567I', 'Vega', 'Manuel', 'Calle I, 369', '20009', 'San Sebastián', '608999000', '918999000'),
('012345678J', 'Morales', 'Isabel', 'Calle J, 159', '50010', 'Zaragoza', '609000111', '919000111');
GO

-- Insertar datos en la tabla Coches
INSERT INTO Coches (Matricula, DNIPropietario, Marca, Modelo, Color, Km) VALUES
('ABC1234', '123456789A', 'Toyota', 'Corolla', 'Rojo', 15000),
('DEF5678', '234567890B', 'Honda', 'Civic', 'Azul', 22000),
('GHI9012', '345678901C', 'Ford', 'Focus', 'Negro', 18000),
('JKL3456', '456789012D', 'Volkswagen', 'Golf', 'Blanco', 20000),
('MNO7890', '567890123E', 'Seat', 'Ibiza', 'Gris', 12000),
('PQR2345', '678901234F', 'Peugeot', '208', 'Rojo', 14000),
('STU6789', '789012345G', 'Renault', 'Clio', 'Azul', 17000),
('VWX1234', '890123456H', 'Citroën', 'C3', 'Negro', 13000),
('YZA5678', '901234567I', 'Kia', 'Rio', 'Verde', 16000),
('BCD9012', '012345678J', 'Mazda', '3', 'Plata', 19000);
GO

-- Insertar datos en la tabla Reparaciones
INSERT INTO Reparaciones (Matricula, Descripcion, FechaEntrada, FechaSalida, Horas) VALUES
('ABC1234', 'Cambio de aceite', '2025-03-01', '2025-03-02', 2),
('DEF5678', 'Frenos delanteros', '2025-03-03', '2025-03-04', 4),
('GHI9012', 'Cambio de batería', '2025-03-05', '2025-03-05', 1),
('JKL3456', 'Alineación y balanceo', '2025-03-06', '2025-03-06', 2),
('MNO7890', 'Cambio de filtro de aire', '2025-03-07', '2025-03-07', 1),
('PQR2345', 'Revisión general', '2025-03-08', '2025-03-08', 5),
('STU6789', 'Cambio de bujías', '2025-03-09', '2025-03-09', 3),
('VWX1234', 'Revisión de suspensión', '2025-03-10', '2025-03-11', 6),
('YZA5678', 'Cambio de alternador', '2025-03-12', '2025-03-12', 4),
('BCD9012', 'Cambio de correa de distribución', '2025-03-13', '2025-03-14', 7);
GO

-- Insertar datos en la tabla Piezas
INSERT INTO Piezas (Referencia, Descripcion, Precio, Stock) VALUES
('P001', 'Aceite de motor', 30.50, 20),
('P002', 'Juego de frenos', 120.75, 15),
('P003', 'Batería 12V', 90.00, 10),
('P004', 'Filtro de aire', 25.00, 30),
('P005', 'Bujías', 15.20, 50),
('P006', 'Alternador', 200.00, 5),
('P007', 'Correa de distribución', 80.00, 8),
('P008', 'Amortiguadores', 150.50, 12),
('P009', 'Rodamientos', 60.00, 18),
('P010', 'Radiador', 175.00, 7);
GO

-- Insertar datos en la tabla DetallesReparacion
INSERT INTO DetallesReparacion (NumReparacion, Referencia, Unidades) VALUES
(1, 'P001', 1),
(2, 'P002', 1),
(3, 'P003', 1),
(4, 'P004', 1),
(5, 'P005', 4),
(6, 'P006', 1),
(7, 'P005', 4),
(8, 'P008', 2),
(9, 'P006', 1),
(10, 'P007', 1);
GO
