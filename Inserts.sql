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
  (1, 1, 'PachoJuegos', 'Avenida Calamari', 'URL1'),
  (2, 1, 'JuegosAdiccion', 'Monte Everest', 'URL2'),
  (3, 1, 'TiendaMercy', 'Pasillo Tarantino', 'URL3'),
  (4, 1, 'FisicoBGames', 'Avenida Estrellas', 'URL4'),
  (5, 1, 'GamesFamily', 'Calle Balatro', 'URL5'),
  (6, 1, 'RealJuegos', 'Avenida Calamari', 'URL6'),
  (7, 1, 'SaintGames', 'Paso de los Santos', 'URL7'),
  (8, 1, 'BalatroCastle', 'Camino del Joker', 'URL8'),
  (9, 1, 'DarkGames', 'Avenida Estrellas', 'URL9'),
  (10, 1, 'Ultimo Juego', 'Calle Balatro', 'URL10');
  
  
 /*
 INSERT INTO medio_de_pago (id_medio, id_carrito, nombre_medio, url_medio) VALUES
  (1, 3, 'Debito', 'URL1'),
  (2, 1, 'Credito', 'URL2'),
  (1, 4, 'Debito', 'URL1'),
  (1, 6, 'Debito', 'URL1'),
  (3, 8, 'Transferencia', 'URL3'),
  (1, 2, 'Debito', 'URL1'),
  (1, 9, 'Debito', 'URL1'),
  (2, 10, 'Credito', 'URL2'),
  (1, 7, 'Debito', 'URL1'),
  (2, 5, 'Credito', 'URL2');
  */

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
  
  

INSERT INTO juego_de_mesa (id_juego_de_mesa, tipo_juego_de_mesa, stock_juegos_mesa, nombre_juegos_mesa, descripcion_juegos_mesa) VALUES
  (1, 'Estratégia', 100, 'Catan', 'Un juego de mesa clásico donde los jugadores deben recolectar recursos para construir caminos y asentamientos.'),
  (2, 'Familia', 150, 'Monopoly', 'Un juego de negocios en el que los jugadores compran y venden propiedades con el objetivo de arruinar a los demás jugadores.'),
  (3, 'Fiesta', 200, 'Twister', 'Un juego físico donde los jugadores deben colocar manos y pies en círculos de colores sin caer.'),
  (4, 'Fiesta', 180, 'Pictionary', 'Juego de adivinanza donde los jugadores dibujan palabras o frases para que su equipo las adivine.'),
  (5, 'Estratégia', 50, 'Ajedrez', 'Un juego de estrategia en el que dos jugadores mueven piezas sobre un tablero con el objetivo de capturar al rey del oponente.'),
  (6, 'Familia', 180, 'Clue', 'Un juego de misterio en el que los jugadores deben adivinar quién cometió un crimen, con qué arma y en qué habitación.'),
  (7, 'Familia', 130, 'Jenga', 'Un juego físico de destreza en el que los jugadores deben retirar bloques de madera sin que se caiga la torre.'),
  (8, 'Estratégia', 110, 'Risk', 'Un juego de conquista mundial donde los jugadores deben ganar territorios a través de batallas estratégicas.');

     
/*   
INSERT INTO compra (id_compra, id_carrito, id_boleta, id_medio, cantidad_comprada, fecha_compra, fechar_emision_boleta) VALUES
  (1, 1, 1, 1, 3, '2025-06-20', '2025-06-21'),
  (2, 2, 2, 2, 5, '2025-06-19', '2025-06-20'),
  (3, 3, 3, 1, 2, '2025-06-18', '2025-06-19'),
  (4, 4, 4, 1, 10, '2025-06-17', '2025-06-18'),
  (5, 5, 5, 2, 7, '2025-06-16', '2025-06-17'),
  (6, 6, 6, 3, 12, '2025-06-15', '2025-06-16'),
  (7, 7, 7, 1, 1, '2025-06-14', '2025-06-15'),
  (8, 8, 8, 2, 6, '2025-06-13', '2025-06-14'),
  (9, 9, 9, 1, 4, '2025-06-12', '2025-06-13'),
  (10, 10, 10, 2, 5, '2025-06-11', '2025-06-12'),
  (11, 1, 2, 3, 8, '2025-06-20', '2025-06-21'),
  (12, 2, 3, 1, 10, '2025-06-19', '2025-06-20'),
  (13, 3, 4, 2, 5, '2025-06-18', '2025-06-19'),
  (14, 4, 5, 3, 3, '2025-06-17', '2025-06-18'),
  (15, 5, 6, 1, 2, '2025-06-16', '2025-06-17'),
  (16, 6, 7, 2, 1, '2025-06-15', '2025-06-16'),
  (17, 7, 8, 3, 4, '2025-06-14', '2025-06-15'),
  (18, 8, 9, 1, 6, '2025-06-13', '2025-06-14'),
  (19, 9, 10, 2, 5, '2025-06-12', '2025-06-13'),
  (20, 10, 1, 1, 7, '2025-06-11', '2025-06-12');
  
*/
  
  
INSERT INTO carta_tcg(
        id_carta,
        nombre_carta,
        tipo_carta,
        descripcion_carta,
        rareza_carta,
        estado_carta,
        año_carta,
        stock_carta
) VALUES 
        (
                1,
                'Woobat',
                'Pokémon',
                '- Card Number: 50/114
                 - Rarity: Common
                 - Card Type: Psychic
                 - HP: 50
                 - Stage: Basic
                 - Attack 1:[1] Gust (10)
                 - Weakness: Lx2
                 - Resistance: F-20
                 - Retreat Cost: 1',
                'C',
                'DF',
                '2000-06-20',
                10
        );
