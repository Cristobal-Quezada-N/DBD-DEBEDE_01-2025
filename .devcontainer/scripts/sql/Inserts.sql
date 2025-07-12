INSERT INTO rol (tipo_rol, nivel_permiso) VALUES
  ('Admin',   0),
  ('Jefe',  1),
  ('Cliente',   2);
  


INSERT INTO usuario (id_rol,nombre_usuario,apellido,email,contraseña,direccion_usuario,fecha_de_registro
) VALUES
  (3, 'Juan',      'Pérez',      'juan.perez@gmail.com',       'gjanhbjkju',           'Calle 1 Poniente 123, Santiago',         '2025-06-20'),
  (3, 'Ana',       'González',   'ana.gonzalez@gmail.com',     'rnjkfjbhgy',           'Av. Libertador B. O´Higgins 1000, Santiago','2025-06-19'),
  (3, 'Pedro',     'Muñoz',      'pedro.munoz@correo.cl',      'hbhjadhdhjba',         'Pasaje Los Robles 45, Valparaíso',       '2025-06-18'),
  (3, 'María',     'Rojas',      'maria.rojas@correo.cl',      'kmhgjijlngtkmk',       'Calle San Martín 212, Concepción',        '2025-06-17'),
  (3, 'Carlos',    'Soto',       'carlos.soto@correo.cl',      'mmmrmmtiriw',          'Av. Pedro de Valdivia 750, Providencia',  '2025-06-16'),
  (3, 'Daniela',   'Contreras',  'daniela.contreras@correo.cl','123456',               'Camino La Cañada 1200, La Reina',         '2025-06-15'),
  (1, 'Pablo',     'Ramírez',    'pablo.ramirez@correo.cl',    'colocoloElmasgrande',  'Calle San Diego 987, Santiago Centro',    '2025-06-14'),
  (2, 'Valentina', 'Herrera',    'valentina.herrera@correo.cl','contraseña',           'Av. Kennedy 5000, Vitacura',               '2025-06-13'),
  (3, 'Sebastián', 'Díaz',       'sebastian.diaz@correo.cl',   'albocampeon',          'Calle José Miguel Carrera 333, Talca',     '2025-06-12'),
  (2, 'Camila',    'Fuentes',    'camila.fuentes@correo.cl',   'necesitoplata',        'Av. Manuel Montt 1500, Providencia',      '2025-06-11');

INSERT INTO tienda (id_rol, nombre_tienda, direccion_tienda, url_producto_imagen) VALUES
  (1, 'PachoJuegos', 'Avenida Calamari', 'URL1'),
  (1, 'JuegosAdiccion', 'Monte Everest', 'URL2'),
  (1, 'TiendaMercy', 'Pasillo Tarantino', 'URL3'),
  (1, 'FisicoBGames', 'Avenida Estrellas', 'URL4'),
  (1, 'GamesFamily', 'Calle Balatro', 'URL5'),
  (1, 'RealJuegos', 'Avenida Calamari', 'URL6'),
  (1, 'SaintGames', 'Paso de los Santos', 'URL7'),
  (1, 'BalatroCastle', 'Camino del Joker', 'URL8'),
  (1, 'DarkGames', 'Avenida Estrellas', 'URL9'),
  (1, 'Ultimo Juego', 'Calle Balatro', 'URL10');
  
  
INSERT INTO medio_de_pago (id_medio, id_carrito, nombre_medio, url_medio) 
VALUES
(1, NULL, 'webpay', 'url_webpay.jpg'), (2, NULL, 'paypal', 'url_paypal.jpg'), (3, NULL, 'criptomoneda', 'url_crypto.jpg'),
(4, NULL, 'mercado pago', 'url_mercadopago.jpg'),(5, NULL, 'vale regalo', 'url_regalo.jpg');


INSERT INTO carrito (productos_carro) VALUES
  (3),
  (5),
  (2),
  (10),
  (7),
  (12),
  (1),
  (6),
  (9),
  (4);


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

INSERT INTO boleta (direccion_boleta, valor_boleta, numero_boleta) VALUES
  ('Calle 1 Poniente 123, Santiago', 15000, 1001),
  ('Av. Kennedy 5000, Vitacura', 20000, 1002),
  ('Av. Kennedy 5000, Vitacura', 12000, 1003),
  ('Calle 1 Poniente 123, Santiago', 18000, 1004),
  ('Av. Kennedy 5000, Vitacura', 22000, 1005),
  ('Calle 1 Poniente 123, Santiago', 25000, 1006),
  ('Calle 1 Poniente 123, Santiago', 14000, 1007),
  ('Av. Kennedy 5000, Vitacura', 30000, 1008),
  ('Av. Kennedy 5000, Vitacura', 17000, 1009),
  ('Calle 1 Poniente 123, Santiago', 19000, 1010);
  
  

INSERT INTO juego_de_mesa (tipo_juego_de_mesa, stock_juegos_mesa, nombre_juegos_mesa, descripcion_juegos_mesa) VALUES
  ('Estratégia', 100, 'Catan', 'Un juego de mesa clásico donde los jugadores deben recolectar recursos para construir caminos y asentamientos.'),
  ('Familia', 150, 'Monopoly', 'Un juego de negocios en el que los jugadores compran y venden propiedades con el objetivo de arruinar a los demás jugadores.'),
  ('Fiesta', 200, 'Twister', 'Un juego físico donde los jugadores deben colocar manos y pies en círculos de colores sin caer.'),
  ('Fiesta', 180, 'Pictionary', 'Juego de adivinanza donde los jugadores dibujan palabras o frases para que su equipo las adivine.'),
  ('Estratégia', 50, 'Ajedrez', 'Un juego de estrategia en el que dos jugadores mueven piezas sobre un tablero con el objetivo de capturar al rey del oponente.'),
  ('Familia', 180, 'Clue', 'Un juego de misterio en el que los jugadores deben adivinar quién cometió un crimen, con qué arma y en qué habitación.'),
  ('Familia', 130, 'Jenga', 'Un juego físico de destreza en el que los jugadores deben retirar bloques de madera sin que se caiga la torre.'),
  ('Estratégia', 110, 'Risk', 'Un juego de conquista mundial donde los jugadores deben ganar territorios a través de batallas estratégicas.');


INSERT INTO compra (id_carrito, id_boleta, id_medio, cantidad_comprada, fecha_compra, fecha_emision_boleta) VALUES
  (1, 1, 1, 3, '2025-06-20', '2025-06-21'),
  (2, 2, 2, 5, '2025-06-19', '2025-06-20'),
  (3, 3, 1, 2, '2025-06-18', '2025-06-19'),
  (4, 4, 1, 10, '2025-06-17', '2025-06-18'),
  (5, 5, 2, 7, '2025-06-16', '2025-06-17'),
  (6, 6, 3, 12, '2025-06-15', '2025-06-16'),
  (7, 7, 1, 1, '2025-06-14', '2025-06-15'),
  (8, 8, 2, 6, '2025-06-13', '2025-06-14'),
  (9, 9, 1, 4, '2025-06-12', '2025-06-13'),
  (10, 10, 2, 5, '2025-06-11', '2025-06-12'),
  (1, 2, 3, 8, '2025-06-20', '2025-06-21'),
  (2, 3, 1, 10, '2025-06-19', '2025-06-20'),
  (3, 4, 2, 5, '2025-06-18', '2025-06-19'),
  (4, 5, 3, 3, '2025-06-17', '2025-06-18'),
  (5, 6, 1, 2, '2025-06-16', '2025-06-17'),
  (6, 7, 2, 1, '2025-06-15', '2025-06-16'),
  (7, 8, 3, 4, '2025-06-14', '2025-06-15'),
  (8, 9, 1, 6, '2025-06-13', '2025-06-14'),
  (9, 10, 2, 5, '2025-06-12', '2025-06-13'),
  (10, 1, 1, 7, '2025-06-11', '2025-06-12');
  
   
INSERT INTO carta_tcg(
        nombre_carta,
        tipo_carta,
        descripcion_carta,
        rareza_carta,
        estado_carta,
        año_carta,
        stock_carta
) VALUES 
        (
                'Woobat',
                'Pokémon',
                '- Card Number: 50/114 \n
                 - Rarity: Common \n
                 - Card Type: Psychic \n
                 - HP: 50 \n
                 - Stage: Basic \n
                 - Attack 1:[1] Gust (10) \n
                 - Weakness: Lx2 \n
                 - Resistance: F-20 \n
                 - Retreat Cost: 1',
                'C',
                'DD',
                '2000-06-20',
                60
        ),
 		(
                'Electivire ex',
                'Pokémon',
                '- Card Number: 069/182 \n
                 - Rarity: Double Rare \n
                 - Card Type: Lightning \n
                 - HP: 280 \n
                 - Stage: Stage 1 \n',
                'DR',
                'NM',
                '2000-01-21',
                40
        ),
        (
                'SSB Gogeta',
                'Dragon Ball',
                'Ultimate. \n
                 Card Type: Battle \n
                 Color: Blue \n
                 Energy(Color Cost): 8(BBBB) \n
                 Special Trait: Saiyan \n
                 Power: 45000 \n
                 Combo Power: 10000 \n
                 Combo Energy: 1 \n
                 Era: DBS: Broly Saga \n
                 Character: "Gogeta : Br" \n',
                'HR',
                'LP',
                '2001-04-20',
                0
        ),
        (
                'Enhanced Power Cell',
                'Transformers',
                'Upgrade — Utility \n
                 The upgraded character has +3 [HP] \n
                 - Rarity: Uncommon \n
                 - Number: 16 \n
                 - Card Type: Battle Card \n
                 - Battle Icons:[L]',
                'UC',
                'HP',
                '2015-01-02',
                99
        ),
        (
                'Pocket Processor',
                'Transformers',
                'At the start of your turn -> Draw a card. \n
                 Rarity: Rare \n
                 Number: 46 \n
                 Affiliation: Neutral \n
                 Card Type: Battle Card \n
                 Sub-Type: Upgrade - Utility \n
                 Battle Icons: [G] \n
                 Stars: 0',
                'R',
                'MP',
                '2010-01-09',
                20
        ),
        (
                'Sith Legionnaire',
                'Star Wars',
                'While you control another Villainy unit, this unit gets +2/+0. \n
                 Rarity: Uncommon \n
                 Number: 081/264 \n
                 Aspect: Command;Villainy \n
                 Card Type: Unit \n
                 Traits: Sith;Trooper \n
                 Cost: 2 \n
                 Power: 2 \n
                 HP: 2 \n
                 Arena Type: Ground \n
                 Artist: Facundo Moyano',
                'UC',
                'HP',
                '2004-09-09',
                66
        ),
        (
                'Papa Hummel',
                'World of Warcraft',
                'Rarity: L \n
                 Artist: Matt Cavotta',
                'R',
                'LP',
                '2001-01-04',
                30
        ),
        (
                'Raddus',
                'Star Wars',
                'Rarity: Rare \n
                 Number: 104/262 \n
                 Aspect: Command;Heroism \n
                 Card Type: Unit \n
                 Traits: Capital Ship;Resistance;Vehicle \n
                 Cost: 7 \n
                 Power: 8 \n
                 HP: 6 \n
                 Arena Type: Space \n
                 Artist:French Carlomagno',
                'R',
                'NM',
                '2004-04-05',
                30
        ),
        (
        		'Mokey D. Luffy',
          		'One Piece',
          		'[Rush] \n
                 Rarity: SEC \n
                 Number: OP11-118 \n
                 Color: Blue \n
                 Card Type: Character \n
                 Cost: 8 \n
                 Power: 8000 \n
                 Subtype(s): Straw Hat Crew \n
                 Attribute: Strike \n
                 Artist:otton',
          		'HR',
          		'NM',
          		'2023-03-01',
          		20
        ),
        (
                'Hyper Dragonoid Ultra',
                'Bakugan',
                'Rarity: Common \n
                 Number: 151 \n
                 Card Type: Evo \n
                 Faction: Ventus \n
                 Energy Cost: 3 \n
                 B-Power: 900 \n
                 Damage Rating: 5',
                'CC',
                'HP',
                '2011-02-10',
                63
);
 
INSERT INTO producto (id_carta, id_juego_de_mesa, tipo_producto, fecha_subida, cantidad_vendidas, precio, url_imagen)
VALUES
        (
                1,
                NULL,
                'Carta TCG',
                '2020-01-15', 
                50, 20000,
                'URL1'
        ),
        (
                NULL,
                3,
                'Juego Mesa',
                '2020-03-20',
                30,
                45000,
                'URL2'
        ),
        (
                5, 
                NULL, 
                'Carta TCG',
                '2020-08-22',
                40,
                15000,
                'URL3'
        ),
        (
                NULL,
                1,
                'Juego Mesa',
                '2020-10-25',
                20,
                38000,
                'URL4'
        ),
        (
                4,
                NULL,
                'Carta TCG',
                '2021-01-28',
                100,
                2500,
                'URL5'
        ),
        (
                NULL,
                2,
                'Juego Mesa',
                '2021-04-01',
                60,
                12000,
                'URL6'
        ),
        (
                3,
                NULL,
                'Carta TCG',
                '2021-10-05',
                25,
                30000,
                'URL7'
        ),
        (
                NULL,
                4,
                'Juego Mesa',
                '2022-02-08',
                15,
                25000,
                'URL8'
        ),
        (
                NULL,
                7,
                'Juego Mesa',
                '2020-02-08',
                12,
                5000,
                'URL9'
        ),
        (
                10,
                NULL,
                'Carta TCG',
                '2023-07-12',
                70,
                8000,
                'URL10'
        ),
        (
                NULL,
                5,
                'Juego Mesa',
                '2023-10-15',
                30,
                18000,
                'URL11'
        ),
        (
                9,
                NULL,
                'Carta TCG',
                '2024-01-18',
                35,
                10000, 
                'URL12'
        ),
        (
                NULL,
                6,
                'Juego Mesa',
                '2024-06-20',
                25,
                55000,
                'URL13'
        ),
        (
                2,
                NULL,
                'Carta TCG',
                '2025-03-25',
                90,
                3000,
                'URL14'
        ),
        (
                NULL,
                8,
                'Juego Mesa',
                '2025-05-28',
                10,
                80000,
                'URL15'
);

INSERT INTO tienda_producto (id_tienda, id_producto) 
VALUES
  (1, 1), 
  (1, 2), 
  (2, 3), 
  (2, 4), 
  (3, 5),
  (3, 6), 
  (4, 7), 
  (4, 8),
  (1, 9),
  (5, 10), 
  (5, 11), 
  (6, 12),
  (6, 13), 
  (7, 14), 
  (7, 15);


INSERT INTO listadeseos (productos_en_descuento, cantidad_productos) 
VALUES
(0, 3),
(1, 2), 
(0, 5), 
(0, 1), 
(2, 4),
(0, 2), 
(1, 1), 
(0, 3), 
(0, 2), 
(1, 1);


INSERT INTO listadeseos_usuario (id_usuario, id_lista_deseos) 
VALUES
  (1, 1), 
  (2, 2), 
  (3, 3), 
  (4, 4), 
  (5, 5),
  (6, 6), 
  (7, 7), 
  (8, 8), 
  (9, 9), 
  (10, 10);

INSERT INTO listadeseos_producto (id_lista_deseos, id_producto) 
VALUES
        (1, 1),
        (1, 7),
        (1, 10),
        (2, 2),
        (2, 8),
        (2, 11),
        (3, 3),
        (3, 9),
        (3, 12),
        (4, 4),
        (4, 13),
        (5, 5),
        (5, 14),
        (6, 6),
        (6, 15),
        (7, 1),
        (7, 2),
        (8, 3),
        (9, 4),
        (10, 5);
INSERT INTO carrito_producto (id_carrito, id_producto) 
VALUES
        (1, 1),
        (1, 9),
        (2, 2),
        (3, 3),
        (4, 4),
        (5, 5),
        (6, 6),
        (7, 7),
        (8, 8),
        (9, 10),
        (10, 11);

INSERT INTO valoracion (id_producto, comentario_valoracion, fecha_valoracion, puntuacion) 
VALUES
  (1, 'excelente carta, muy bien protegida.', '2020-01-16', 5.0),
  (2, 'juego de mesa muy divertido para amigos.', '2020-03-27', 4.5),
  (3, 'llego en perfecto estado, un clasico.', '2021-05-05', 5.0),
  (4, 'pandemic es un imprescindible, muy rejugable.', '2021-08-19', 4.8),
  (5, 'un staple para cualquier mazo de fusion.', '2022-03-20', 4.0),
  (6, 'sushi go! es rapido y facil de aprender.', '2022-05-01', 4.2),
  (7, 'ash blossom, carta meta, llego rapido.', '2023-10-22', 4.9),
  (8, 'among us de mesa es fiel al videojuego.', '2023-12-02', 4.0),
  (9, 'protectores de buena calidad, muy contento.', '2024-01-14', 4.7),
  (10, 'el dragon blanco mas iconico, perfecto.', '2024-03-25', 5.0),
  (11, 'ajedrez de buena calidad, piezas robustas.', '2024-08-12', 4.5),
  (12, 'dark magician girl es hermosa, coleccionable.', '2024-11-27', 4.8),
  (13, 'terraforming mars es profundo y estrategico.', '2025-02-28', 5.0),
  (14, 'pot of greed es esencial en cualquier coleccion.', '2025-05-29', 4.3), 
  (15, 'gloomhaven, un juego masivo y epico.', '2025-06-10', 4.9);