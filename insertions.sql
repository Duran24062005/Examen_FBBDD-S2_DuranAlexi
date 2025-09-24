-- INSERCIONES DE PRUEBA PARA CAMPUSBIKE
USE campusbike_db;

-- TABLA Clientes
INSERT INTO Clientes (id_cliente, nombre_cliente, email, telefono) VALUES
(1, 'Juan Pérez', 'juan.perez@example.com', '3001234567'),
(2, 'María López', 'maria.lopez@example.com', '3019876543'),
(3, 'Carlos Gómez', 'carlos.gomez@example.com', '3024567890'),
(4, 'Ana Torres', 'ana.torres@example.com', '3101237894'),
(5, 'Luis Rodríguez', 'luis.rodriguez@example.com', '3159876541'),
(6, 'Paula Jiménez', 'paula.jimenez@example.com', '3162345678'),
(7, 'Andrés Castro', 'andres.castro@example.com', '3174561234'),
(8, 'Laura Herrera', 'laura.herrera@example.com', '3186549871'),
(9, 'Diego Martínez', 'diego.martinez@example.com', '3198527412'),
(10, 'Sofía Ramírez', 'sofia.ramirez@example.com', '3209632587');

-- TABLA Proveedores
INSERT INTO Proveedores (id_proveedor, nombre_proveedor, email, telefono) VALUES
(1, 'BiciParts Co', 'contact@biciparts.com', '601123456'),
(2, 'Repuestos Andinos', 'ventas@andinos.com', '602987654'),
(3, 'CycleSupply', 'info@cyclesupply.com', '603456789'),
(4, 'GlobalBikes', 'sales@globalbikes.com', '604123987'),
(5, 'Ruta Proveedores', 'contacto@rutaproveedores.com', '605987321'),
(6, 'Mundo Repuestos', 'hola@mundorepuestos.com', '606555444'),
(7, 'BikeHub', 'support@bikehub.com', '607333222'),
(8, 'Ciclos y Más', 'info@ciclosymas.com', '608777666'),
(9, 'Accesorios Norte', 'ventas@norteaccesorios.com', '609111222'),
(10, 'Taller Suministros', 'taller@suministros.com', '610888999');

-- TABLA Repuestos
INSERT INTO Repuestos (id_repuesto, nombre, precio_unitario) VALUES
(1, 'Pastillas de freno', 25.50),
(2, 'Cadena', 12.00),
(3, 'Neumático 26\"', 45.00),
(4, 'Cámara', 8.50),
(5, 'Asiento (saddle)', 35.00),
(6, 'Pedal', 20.00),
(7, 'Juego de cambios (grupo)', 150.00),
(8, 'Manubrio', 40.00),
(9, 'Llanta (rim)', 70.00),
(10, 'Radio (spoke)', 2.50);

-- TABLA Inventario
INSERT INTO Inventario (id_inventario, id_repuesto, stock, estado) VALUES
(1, 1, 50, 'disponible'),
(2, 2, 100, 'disponible'),
(3, 3, 30, 'disponible'),
(4, 4, 200, 'disponible'),
(5, 5, 15, 'disponible'),
(6, 6, 60, 'disponible'),
(7, 7, 5, 'en pedido'),
(8, 8, 20, 'disponible'),
(9, 9, 8, 'disponible'),
(10, 10, 500, 'disponible');

-- TABLA Compras
INSERT INTO Compras (id_compra, id_proveedor, fecha, precio_total) VALUES
(1, 1, '2025-09-01 10:00:00', 510.00),
(2, 2, '2025-09-02 11:15:00', 600.00),
(3, 3, '2025-09-03 09:30:00', 450.00),
(4, 4, '2025-09-04 14:45:00', 850.00),
(5, 5, '2025-09-05 16:00:00', 350.00),
(6, 6, '2025-09-06 08:20:00', 800.00),
(7, 7, '2025-09-07 13:10:00', 300.00),
(8, 8, '2025-09-08 12:00:00', 400.00),
(9, 9, '2025-09-09 15:30:00', 420.00),
(10, 10, '2025-09-10 17:50:00', 750.00);

-- TABLA DetalleCompra
INSERT INTO DetalleCompra (id_detalle_compra, id_compra, id_repuesto, cantidad, precio_unitario, precio_total) VALUES
(1, 1, 1, 20, 25.50, 510.00),
(2, 2, 2, 50, 12.00, 600.00),
(3, 3, 3, 10, 45.00, 450.00),
(4, 4, 4, 100, 8.50, 850.00),
(5, 5, 5, 10, 35.00, 350.00),
(6, 6, 6, 40, 20.00, 800.00),
(7, 7, 7, 2, 150.00, 300.00),
(8, 8, 8, 10, 40.00, 400.00),
(9, 9, 9, 6, 70.00, 420.00),
(10, 10, 10, 300, 2.50, 750.00);

-- TABLA Ventas
INSERT INTO Ventas (id_venta, id_cliente, fecha, precio_total) VALUES
(1, 1, '2025-09-11 10:10:00', 51.00),
(2, 2, '2025-09-11 11:20:00', 12.00),
(3, 3, '2025-09-12 09:05:00', 45.00),
(4, 4, '2025-09-12 13:25:00', 25.50),
(5, 5, '2025-09-13 15:00:00', 35.00),
(6, 6, '2025-09-13 16:40:00', 40.00),
(7, 7, '2025-09-14 12:30:00', 150.00),
(8, 8, '2025-09-14 14:15:00', 40.00),
(9, 9, '2025-09-15 09:45:00', 70.00),
(10, 10, '2025-09-15 11:55:00', 25.00);

-- TABLA DetalleVenta
INSERT INTO DetalleVenta (id_detalle_venta, id_venta, id_repuesto, cantidad, precio_unitario, precio_total) VALUES
(1, 1, 1, 2, 25.50, 51.00),
(2, 2, 2, 1, 12.00, 12.00),
(3, 3, 3, 1, 45.00, 45.00),
(4, 4, 4, 3, 8.50, 25.50),
(5, 5, 5, 1, 35.00, 35.00),
(6, 6, 6, 2, 20.00, 40.00),
(7, 7, 7, 1, 150.00, 150.00),
(8, 8, 8, 1, 40.00, 40.00),
(9, 9, 9, 1, 70.00, 70.00),
(10, 10, 10, 10, 2.50, 25.00);
