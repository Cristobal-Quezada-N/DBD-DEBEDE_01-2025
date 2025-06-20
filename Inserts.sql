INSERT INTO rol (id_rol, tipo_rol, nivel_permiso) VALUES
  (1, 'Admin',   0),
  (2, 'Jefe',  1),
  (3, 'Cliente',   2);


INSERT INTO usuario (id_usuario,id_rol,nombre_usuario,apellido,email,contraseña,direccion_usuario,fecha_de_registro
) VALUES
  ( 1,  3, 'Juan',      'Pérez',      'juan.perez@gmail.com',       'gjanhbjkju',           'Calle 1 Poniente 123, Santiago',         '2025-06-20'),
  ( 2,  3, 'Ana',       'González',   'ana.gonzalez@gmail.com',     'rnjkfjbhgy',           'Av. Libertador B. O´Higgins 1000, Santiago','2025-06-19'),
  ( 3,  3, 'Pedro',     'Muñoz',      'pedro.munoz@correo.cl',      'hbhjadhdhjba',         'Pasaje Los Robles 45, Valparaíso',       '2025-06-18'),
  ( 4,  3, 'María',     'Rojas',      'maria.rojas@correo.cl',      'kmhgjijlngtkmk',       'Calle San Martín 212, Concepción',        '2025-06-17'),
  ( 5,  3, 'Carlos',    'Soto',       'carlos.soto@correo.cl',      'mmmrmmtiriw',          'Av. Pedro de Valdivia 750, Providencia',  '2025-06-16'),
  ( 6,  3, 'Daniela',   'Contreras',  'daniela.contreras@correo.cl','123456',               'Camino La Cañada 1200, La Reina',         '2025-06-15'),
  ( 7,  1, 'Pablo',     'Ramírez',    'pablo.ramirez@correo.cl',    'colocoloElmasgrande',  'Calle San Diego 987, Santiago Centro',    '2025-06-14'),
  ( 8,  2, 'Valentina', 'Herrera',    'valentina.herrera@correo.cl','contraseña',           'Av. Kennedy 5000, Vitacura',               '2025-06-13'),
  ( 9,  3, 'Sebastián', 'Díaz',       'sebastian.diaz@correo.cl',   'albocampeon',          'Calle José Miguel Carrera 333, Talca',     '2025-06-12'),
  ( 10, 2, 'Camila',    'Fuentes',    'camila.fuentes@correo.cl',   'necesitoplata',        'Av. Manuel Montt 1500, Providencia',      '2025-06-11');

INSERT INTO tienda (id_tienda, id_rol, nombre_tienda, direccion_tienda, url_producto_imagen) VALUES
  (1, 2, 'PachoJuegos', 'Avenida Calamari', 'URL1'),
  (2, 2, 'JuegosAdiccion', 'Monte Everest', 'URL2'),
  (3, 2, 'TiendaMercy', 'Pasillo Tarantino', 'URL3'),
  (4, 2, 'FisicoBGames', 'Avenida Estrellas', 'URL4'),
  (5, 2, 'GamesFamily', 'Calle Balatro', 'URL5'),
  (6, 2, 'RealJuegos', 'Avenida Calamari', 'URL6'),
  (7, 2, 'SaintGames', 'Paso de los Santos', 'URL7'),
  (8, 2, 'BalatroCastle', 'Camino del Joker', 'URL8'),
  (9, 2, 'DarkGames', 'Avenida Estrellas', 'URL9'),
  (10, 2, 'Ultimo Juego', 'Calle Balatro', 'URL10');

INSERT INTO carrito (id_carrito, productos_carro) VALUES
  (1, 3),
  (2, 5),
  (3, 2),
  (4, 10),
  (5, 7),
  (6, 12),
  (7, 1),
  (8, 6),
  (9, 9),
  (10, 4);


INSERT INTO carrito_usuario(id_usuario,id_carrito) VALUES
 	(1, 3),
  	(2, 5),
  	(3, 2),
  	(4, 10),
  	(5, 7),
	(6, 8),
 	(7, 1),
  	(8, 6),
  	(9, 9),
  	(10, 4);



INSERT INTO boleta (id_boleta, direccion_boleta, valor_boleta, numero_boleta) VALUES
  (1, 'Calle 1 Poniente 123, Santiago', 15000, 1001),
  (2, 'Av. Kennedy 5000, Vitacura', 20000, 1002),
  (3, 'Av. Kennedy 5000, Vitacura', 12000, 1003),
  (4, 'Calle 1 Poniente 123, Santiago', 18000, 1004),
  (5, 'Av. Kennedy 5000, Vitacura', 22000, 1005),
  (6, 'Calle 1 Poniente 123, Santiago', 25000, 1006),
  (7, 'Calle 1 Poniente 123, Santiago', 14000, 1007),
  (8, 'Av. Kennedy 5000, Vitacura', 30000, 1008),
  (9, 'Av. Kennedy 5000, Vitacura', 17000, 1009),
  (10, 'Calle 1 Poniente 123, Santiago', 19000, 1010);
  
  