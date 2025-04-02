USE TallerMecanico;
GO

-- Insertar datos en la tabla Clientes
INSERT INTO Clientes (DNI, Apellidos, Nombre, Direccion, CP, Poblacion, Telefono, Telefono2) VALUES
('12345678A', 'García López', 'Antonio', 'Calle Mayor 15', '28001', 'Madrid', '666111222', '911223344'),
('23456789B', 'Martínez Ruiz', 'María', 'Avenida Libertad 23', '08001', 'Barcelona', '666222333', NULL),
('34567890C', 'Fernández Gómez', 'Carlos', 'Plaza España 5', '41001', 'Sevilla', '666333444', '954112233'),
('45678901D', 'López Sánchez', 'Laura', 'Calle Alcalá 42', '28002', 'Madrid', '666444555', NULL),
('56789012E', 'González Pérez', 'Javier', 'Gran Vía 78', '46001', 'Valencia', '666555666', '963445566'),
('67890123F', 'Rodríguez Martín', 'Ana', 'Calle Serrano 55', '28006', 'Madrid', '666666777', NULL),
('78901234G', 'Sánchez Díaz', 'David', 'Paseo de Gracia 43', '08007', 'Barcelona', '666777888', '932334455'),
('89012345H', 'Pérez Álvarez', 'Elena', 'Calle Sierpes 12', '41004', 'Sevilla', '666888999', NULL),
('90123456I', 'Ramírez Torres', 'Miguel', 'Avenida Diagonal 121', '08015', 'Barcelona', '666999000', '934556677'),
('01234567J', 'Moreno Castro', 'Cristina', 'Calle Goya 87', '28009', 'Madrid', '666000111', NULL);

-- Insertar datos en la tabla Coches
INSERT INTO Coches (Matricula, DNIPropietario, Marca, Modelo, Color, Km) VALUES
('1234ABC', '12345678A', 'Seat', 'León', 'Rojo', 45000),
('2345BCD', '23456789B', 'Volkswagen', 'Golf', 'Azul', 78000),
('3456CDE', '34567890C', 'Toyota', 'Corolla', 'Blanco', 62000),
('4567DEF', '45678901D', 'Renault', 'Clio', 'Negro', 31000),
('5678EFG', '56789012E', 'Ford', 'Focus', 'Gris', 52000),
('6789FGH', '67890123F', 'Peugeot', '308', 'Rojo', 28000),
('7890GHI', '78901234G', 'Opel', 'Astra', 'Verde', 95000),
('8901HIJ', '89012345H', 'Citroën', 'C4', 'Azul', 42000),
('9012IJK', '90123456I', 'Audi', 'A3', 'Negro', 65000),
('0123JKL', '01234567J', 'BMW', 'Serie 1', 'Blanco', 38000);

-- Insertar datos en la tabla Piezas
INSERT INTO Piezas (Referencia, Descripcion, Precio, Stock) VALUES
('FIL001', 'Filtro de aceite universal', 15.99, 50),
('FIL002', 'Filtro de aire motor 1.6', 24.50, 35),
('BAT001', 'Batería 60Ah', 89.95, 20),
('ACE001', 'Aceite motor 10W40 5L', 42.75, 40),
('FRE001', 'Pastillas freno delanteras', 65.30, 30),
('FRE002', 'Pastillas freno traseras', 58.75, 28),
('BUJ001', 'Bujías de encendido (juego 4)', 45.99, 25),
('AMO001', 'Amortiguador delantero', 110.50, 15),
('AMO002', 'Amortiguador trasero', 95.80, 18),
('COR001', 'Kit distribución completo', 189.99, 10);

-- Insertar datos en la tabla Reparaciones
-- Nota: Estos son solo los primeros 5 registros. Algunos sin FechaSalida para simular reparaciones en curso.
INSERT INTO Reparaciones (Matricula, Descripcion, FechaEntrada, FechaSalida, Horas) VALUES
('1234ABC', 'Cambio de aceite y filtros', '2025-03-01 09:30:00', '2025-03-01 11:30:00', 2.0),
('2345BCD', 'Revisión general y cambio de pastillas de freno', '2025-03-02 10:00:00', '2025-03-02 16:30:00', 6.5),
('3456CDE', 'Sustitución de correa de distribución', '2025-03-05 08:15:00', '2025-03-06 12:45:00', 8.0),
('4567DEF', 'Cambio de bujías', '2025-03-08 14:00:00', '2025-03-08 16:00:00', 2.0),
('5678EFG', 'Diagnóstico fallo sistema eléctrico', '2025-03-10 11:30:00', '2025-03-10 14:30:00', 3.0);

-- Insertar los 5 registros restantes
INSERT INTO Reparaciones (Matricula, Descripcion, FechaEntrada, FechaSalida, Horas) VALUES
('6789FGH', 'Cambio de batería y diagnóstico sistema de carga', '2025-03-15 09:00:00', '2025-03-15 12:30:00', 3.5),
('7890GHI', 'Reparación sistema aire acondicionado', '2025-03-20 10:15:00', '2025-03-21 13:45:00', 7.0),
('8901HIJ', 'Cambio amortiguadores traseros', '2025-03-22 14:30:00', '2025-03-23 11:30:00', 5.0),
('9012IJK', 'Revisión de 80.000 km', '2025-03-25 08:30:00', NULL, NULL), -- En progreso
('0123JKL', 'Cambio de neumáticos y alineación', '2025-03-28 15:00:00', NULL, NULL);