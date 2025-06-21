
DROP TABLE IF EXISTS tienda_producto CASCADE;
DROP TABLE IF EXISTS carrito_producto CASCADE;
DROP TABLE IF EXISTS listadeseos_producto CASCADE;
DROP TABLE IF EXISTS listadeseos_usuario CASCADE;
DROP TABLE IF EXISTS compra CASCADE;
DROP TABLE IF EXISTS boleta_producto CASCADE;
DROP TABLE IF EXISTS carrito_usuario CASCADE;
DROP TABLE IF EXISTS producto CASCADE;
DROP TABLE IF EXISTS valoracion CASCADE; 
DROP TABLE IF EXISTS usuario CASCADE;   
DROP TABLE IF EXISTS medio_de_pago CASCADE;
DROP TABLE IF EXISTS boleta CASCADE;
DROP TABLE IF EXISTS carrito CASCADE;
DROP TABLE IF EXISTS tienda CASCADE;
DROP TABLE IF EXISTS rol CASCADE;
DROP TABLE IF EXISTS carta_tcg CASCADE;
DROP TABLE IF EXISTS juego_de_mesa CASCADE;
DROP TABLE IF EXISTS listadeseos CASCADE;

-- Tabla Rol
CREATE TABLE IF NOT EXISTS rol (
    id_rol BIGINT PRIMARY KEY,
    tipo_rol CHAR(7),
    nivel_permiso SMALLINT
);

-- Tabla Carta_TCG
CREATE TABLE IF NOT EXISTS carta_tcg (
    id_carta BIGINT PRIMARY KEY,
    nombre_carta VARCHAR(32),
    tipo_carta VARCHAR(32),
    descripcion_carta VARCHAR(500),
    rareza_carta VARCHAR(10),
    estado_carta VARCHAR(2),
    anio_carta DATE,
    stock_carta INTEGER
);

-- Tabla Juego_De_Mesa
CREATE TABLE IF NOT EXISTS juego_de_mesa (
    id_juego_de_mesa BIGINT PRIMARY KEY,
    tipo_juego_de_mesa VARCHAR(32),
    stock_juegos_mesa INTEGER,
    nombre_juegos_mesa VARCHAR(64),
    descripcion_juegos_mesa VARCHAR(500)
);

-- Tabla Producto
CREATE TABLE IF NOT EXISTS producto (
    id_producto BIGINT PRIMARY KEY,
    id_carta BIGINT,
    id_juego_de_mesa BIGINT,
    tipo_producto VARCHAR(32),
    fecha_subida DATE,
    cantidad_vendidas BIGINT,
    precio INTEGER,
    url_imagen VARCHAR(64),
    FOREIGN KEY (id_carta) REFERENCES carta_tcg(id_carta),
    FOREIGN KEY (id_juego_de_mesa) REFERENCES juego_de_mesa(id_juego_de_mesa)
);

-- Tabla Tienda
CREATE TABLE IF NOT EXISTS tienda(
    id_tienda BIGINT PRIMARY KEY,
    id_rol BIGINT,
    nombre_tienda VARCHAR(32),
    direccion_tienda VARCHAR(255),
    url_producto_imagen CHAR(64),
    FOREIGN KEY (id_rol) REFERENCES rol(id_rol)
);

-- Tabla Carrito
CREATE TABLE IF NOT EXISTS carrito(
    id_carrito BIGINT PRIMARY KEY,
    productos_carro INTEGER
);

-- Tabla Usuario (MOVIDA ANTES DE VALORACION)
CREATE TABLE IF NOT EXISTS usuario (
    id_usuario BIGINT PRIMARY KEY,
    id_rol BIGINT,
    nombre_usuario VARCHAR(32),
    apellido VARCHAR(32),
    email VARCHAR(32),
    contrasena CHAR(64),
    direccion_usuario VARCHAR(255),
    fecha_de_registro DATE,
    FOREIGN KEY (id_rol) REFERENCES rol(id_rol)
);

-- Tabla Valoracion 
CREATE TABLE IF NOT EXISTS valoracion (
    id_valoracion BIGINT PRIMARY KEY,
    id_producto BIGINT,
    id_usuario BIGINT, -- Nueva columna para la relación N:M (o 1:N) con usuario
    comentario_valoracion VARCHAR(300),
    fecha_valoracion DATE,
    puntuacion NUMERIC(2,1),
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) -- Nueva FK
);

-- Tabla Carrito_Usuario
CREATE TABLE IF NOT EXISTS carrito_usuario (
    id_usuario BIGINT NOT NULL,
    id_carrito BIGINT NOT NULL,
    PRIMARY KEY (id_usuario, id_carrito),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_carrito) REFERENCES carrito(id_carrito)
);

-- Tabla Medio_De_Pago
CREATE TABLE IF NOT EXISTS medio_de_pago (
    id_medio BIGINT PRIMARY KEY,
    id_carrito BIGINT NULL,
    nombre_medio VARCHAR(32),
    url_medio CHAR(64),
    FOREIGN KEY (id_carrito) REFERENCES carrito(id_carrito)
);

-- Tabla Boleta
CREATE TABLE IF NOT EXISTS boleta (
    id_boleta BIGINT PRIMARY KEY,
    direccion_boleta VARCHAR(255),
    valor_boleta INTEGER,
    numero_boleta BIGINT
);

-- Tabla Compra
CREATE TABLE IF NOT EXISTS compra (
    id_compra BIGINT PRIMARY KEY,
    id_carrito BIGINT,
    id_boleta BIGINT,
    id_medio BIGINT,
    cantidad_comprada INTEGER,
    fecha_compra DATE,
    FOREIGN KEY (id_carrito) REFERENCES carrito(id_carrito),
    FOREIGN KEY (id_boleta) REFERENCES boleta(id_boleta),
    FOREIGN KEY (id_medio) REFERENCES medio_de_pago(id_medio)
);

-- Tabla Tienda_Producto
CREATE TABLE IF NOT EXISTS tienda_producto (
    id_tienda BIGINT NOT NULL,
    id_producto BIGINT NOT NULL,
    PRIMARY KEY (id_tienda, id_producto),
    FOREIGN KEY (id_tienda) REFERENCES tienda(id_tienda),
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

-- Tabla Boleta_Producto
CREATE TABLE IF NOT EXISTS boleta_producto (
    id_boleta BIGINT NOT NULL,
    id_producto BIGINT NOT NULL,
    PRIMARY KEY (id_boleta, id_producto),
    FOREIGN KEY (id_boleta) REFERENCES boleta(id_boleta),
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

-- Tabla ListaDeseos
CREATE TABLE IF NOT EXISTS listadeseos (
    id_lista_deseos BIGINT PRIMARY KEY,
    productos_en_descuento INTEGER,
    cantidad_productos INTEGER
);

-- Tabla ListaDeseos_Usuario
CREATE TABLE IF NOT EXISTS listadeseos_usuario (
    id_usuario BIGINT NOT NULL,
    id_lista_deseos BIGINT NOT NULL,
    PRIMARY KEY (id_usuario, id_lista_deseos),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_lista_deseos) REFERENCES listadeseos(id_lista_deseos)
);

-- Tabla listadeseos_producto
CREATE TABLE IF NOT EXISTS listadeseos_producto (
    id_lista_deseos BIGINT NOT NULL,
    id_producto BIGINT NOT NULL,
    PRIMARY KEY (id_lista_deseos, id_producto),
    FOREIGN KEY (id_lista_deseos) REFERENCES listadeseos(id_lista_deseos),
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

-- Tabla Carrito_Producto
CREATE TABLE IF NOT EXISTS carrito_producto (
    id_carrito BIGINT NOT NULL,
    id_producto BIGINT NOT NULL,
    PRIMARY KEY (id_carrito, id_producto),
    FOREIGN KEY (id_carrito) REFERENCES carrito(id_carrito),
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);




-- Poblar la tabla rol
INSERT INTO rol (id_rol, tipo_rol, nivel_permiso) 
VALUES
(1, 'Admin', 0), (2, 'Jefe', 1), (3, 'Cliente', 2);

-- Poblar la tabla carta_tcg
INSERT INTO carta_tcg (id_carta, nombre_carta, tipo_carta, descripcion_carta, rareza_carta, estado_carta, anio_carta, stock_carta) 
VALUES
(101, 'dragon ojos b', 'monstruo', 'un dragon con ojos rojos... muy fuerte.', 'RARA', 'NM', '2002-01-01', 100),
(102, 'mago oscuro', 'monstruo', 'el mago mas poderoso de todos.', 'ULTRA', 'LP', '2001-01-01', 75),
(103, 'polimerizacion', 'magia', 'fusiona monstruos.', 'COMM', 'GD', '2000-01-01', 200),
(104, 'ash blossom', 'monstruo efct', 'niega efectos de agregar cartas.', 'SECR', 'NM', '2017-01-01', 50),
(105, 'blue-eyes', 'monstruo', 'un dragon legendario.', 'COMM', 'GD', '1999-01-01', 150),
(106, 'dm girl', 'monstruo', 'version femenina del mago oscuro.', 'ULTRA', 'NM', '2005-01-01', 60),
(107, 'pot of greed', 'magia', 'roba 2 cartas.', 'UNCO', 'LP', '2000-01-01', 180),
(108, 'lightning st', 'magia', 'destruye cartas del oponente.', 'ULTRA', 'NM', '2020-01-01', 40),
(109, 'exodia', 'monstruo', 'victoria instantanea.', 'ULTRA', 'MP', '1999-01-01', 5),
(110, 'feather dust', 'magia', 'destruye magias/trampas.', 'ULTRA', 'NM', '2000-01-01', 30),
(111, 'bls', 'monstruo ritu', 'un guerrero legendario.', 'SECR', 'NM', '2002-01-01', 25),
(112, 'skill drain', 'trampa con.', 'niega efectos de monstruos.', 'UNCO', 'GD', '2003-01-01', 70),
(113, 'inf imper', 'trampa', 'niega efecto de monstruo.', 'ULTRA', 'NM', '2018-01-01', 35),
(114, 'accesscode', 'monstruo link', 'gana atk y destruye.', 'SECR', 'NM', '2020-01-01', 20),
(115, 'nibiru', 'monstruo efct', 'tributa monstruos para invocar token.', 'SECR', 'NM', '2019-01-01', 45);

-- Poblar la tabla juego_de_mesa
INSERT INTO juego_de_mesa (id_juego_de_mesa, tipo_juego_de_mesa, stock_juegos_mesa, nombre_juegos_mesa, descripcion_juegos_mesa) 
VALUES
(201, 'estrategia', 50, 'catan', 'juego de estrategia civilizatoria.'),
(202, 'cooperativo', 30, 'pandemic', 'salva al mundo de enfermedades.'),
(203, 'cartas', 80, 'sushi go!', 'juego de cartas con roles ocultos.'),
(204, 'roles ocultos', 25, 'among us', 'un juego de deduccion y engaño.'),
(205, 'abstracto', 40, 'ajedrez', 'estrategia de colocacion de piezas.'),
(206, 'eurogame', 60, 'terraforming mars', 'construye un motor economico.'),
(207, 'ameritrash', 35, 'gloomhaven', 'aventuras y exploracion.'),
(208, 'party game', 90, 'dixit', 'divertido juego de palabras.'),
(209, 'dungeon crawl', 20, 'descent', 'explora mazmorras y combate monstruos.'),
(210, 'legacy', 15, 'pandemic legacy s1', 'el juego cambia permanentemente.'),
(211, 'deck-building', 70, 'dominion', 'construye tu mazo para vencer.'),
(212, 'miniaturas', 20, 'warhammer', 'combate tactico con miniaturas.'),
(213, 'economico', 45, 'ticket to ride', 'controla rutas comerciales.'),
(214, 'tematico', 55, 'dinosaur island', 'construye un parque de dinosaurios.'),
(215, 'abstracto', 65, 'go', 'juego de movimientos y captura.');

-- Poblar la tabla Carrito
INSERT INTO carrito (id_carrito, productos_carro) 
VALUES
(1, 2), (2, 1), (3, 3), (4, 1), (5, 0),
(6, 2), (7, 1), (8, 0), (9, 5), (10, 1),
(11, 0), (12, 4), (13, 1), (14, 2), (15, 0);

-- Poblar la tabla Listadeseos
INSERT INTO listadeseos (id_lista_deseos, productos_en_descuento, cantidad_productos) 
VALUES
(1, 0, 3), (2, 1, 2), (3, 0, 5), (4, 0, 1), (5, 2, 4),
(6, 0, 2), (7, 1, 1), (8, 0, 3), (9, 0, 2), (10, 1, 1),
(11, 0, 0), (12, 0, 1), (13, 0, 2), (14, 1, 3), (15, 0, 1);




-- Poblar la tabla Producto
INSERT INTO producto (id_producto, id_carta, id_juego_de_mesa, tipo_producto, fecha_subida, cantidad_vendidas, precio, url_imagen) 
VALUES
(1, 101, NULL, 'Carta TCG', '2020-01-15', 50, 20000, 'url_dragon.jpg'),
(2, NULL, 201, 'Juego Mesa', '2020-03-20', 30, 45000, 'url_catan.jpg'),
(3, 102, NULL, 'Carta TCG', '2020-08-22', 40, 15000, 'url_mago.jpg'),
(4, NULL, 202, 'Juego Mesa', '2020-10-25', 20, 38000, 'url_pandemic.jpg'),
(5, 103, NULL, 'Carta TCG', '2021-01-28', 100, 2500, 'url_poli.jpg'),
(6, NULL, 203, 'Juego Mesa', '2021-04-01', 60, 12000, 'url_sushi.jpg'),
(7, 104, NULL, 'Carta TCG', '2021-10-05', 25, 30000, 'url_ash.jpg'),
(8, NULL, 204, 'Juego Mesa', '2022-02-08', 15, 25000, 'url_amongus.jpg'),
(9, NULL, NULL, 'Accesorio', '2022-05-10', 120, 5000, 'url_sleeves.jpg'),
(10, 105, NULL, 'Carta TCG', '2023-07-12', 70, 8000, 'url_bewd.jpg'),
(11, NULL, 205, 'Juego Mesa', '2023-10-15', 30, 18000, 'url_ajedrez.jpg'),
(12, 106, NULL, 'Carta TCG', '2024-01-18', 35, 10000, 'url_dmg.jpg'),
(13, NULL, 206, 'Juego Mesa', '2024-06-20', 25, 55000, 'url_terra.jpg'),
(14, 107, NULL, 'Carta TCG', '2025-03-25', 90, 3000, 'url_pot.jpg'),
(15, NULL, 207, 'Juego Mesa', '2025-05-28', 10, 80000, 'url_gloom.jpg');

-- Poblar la tabla Usuario (AHORA SIN id_valoracion)
INSERT INTO usuario (id_usuario, id_rol, nombre_usuario, apellido, email, contrasena, direccion_usuario, fecha_de_registro) 
VALUES
(1, 3, 'juan', 'perez', 'juan.perez@gmai.com', 'gjanhbjkju', 'Calle 1 Poniente 123, Santiago', '2025-06-20'),
(2, 3, 'ana', 'gonzalez', 'ana.gonzalez@gmai.com', 'rnjkfjbhgy', 'Av. La Paz 101, Recoleta', '2025-06-19'),
(3, 3, 'pedro', 'munoz', 'pedro.munoz@corre.cl', 'hbhjadhdhjba', 'Pasaje Los Robles 45, Valparaiso', '2025-06-18'),
(4, 3, 'maria', 'rojas', 'maria.rojas@corre.cl', 'kmhgjijlngtkmk', 'Calle San Martin 212, Concepcion', '2025-06-17'),
(5, 3, 'carlos', 'soto', 'carlos.soto@corre.cl', 'mmmrmmtiriw', 'Av. Pedro de Valdivia 750, Providencia', '2025-06-16'),
(6, 3, 'daniela', 'contreras', 'daniela.contrer@corre.cl', '123456', 'Camino La Canada 1200, La Reina', '2025-06-15'),
(7, 1, 'pablo', 'ramirez', 'pablo.ramirez@corre.cl', 'colocoloElmasgrande', 'Calle San Diego 987, Santiago', '2025-06-14'),
(8, 2, 'valentina', 'herrera', 'valentina.herrer@corre.cl', 'contrasena', 'Av. Kennedy 5000, Vitacura', '2025-06-13'),
(9, 3, 'sebastian', 'diaz', 'sebastian.diaz@corre.cl', 'albocampeon', 'Calle Jose Miguel Carrera 3368, San Miguel', '2025-06-12'),
(10, 2, 'camila', 'fuentes', 'camila.fuentes@corre.cl', 'necesitoplata', 'Av. Manuel Montt 1500, Providencia', '2025-06-11'),
(11, 3, 'javier', 'torres', 'javier.torres@corre.cl', 'seguridad', 'El Sol 200, La Florida', '2025-06-10'),
(12, 3, 'sofia', 'vargas', 'sofia.vargas@corre.cl', 'secretito', 'Los Alamos 10, Las Condes', '2025-06-09'),
(13, 3, 'fernando', 'castro', 'fernando.castro@corre.cl', 'milveces', 'Calle Fresia 50, Ñuñoa', '2025-06-08'),
(14, 3, 'isidora', 'rojas', 'isidora.rojas@corre.cl', 'prueba123', 'Avenida Central 80, Maipu', '2025-06-07'),
(15, 3, 'ignacio', 'flores', 'ignacio.flores@corre.cl', 'clave_segura', 'Pasaje Luna 15, Puente Alto', '2025-06-06');

-- Poblar la tabla Valoracion (AHORA CON id_usuario)
--    Asignando un id_usuario a cada valoración para la nueva relación
INSERT INTO valoracion (id_valoracion, id_producto, id_usuario, comentario_valoracion, fecha_valoracion, puntuacion) 
VALUES
(1, 1, 3, 'excelente carta, muy bien protegida.', '2020-01-16', 5.0),
(2, 2, 4, 'juego de mesa muy divertido para amigos.', '2020-03-27', 4.5),
(3, 3, 5, 'llego en perfecto estado, un clasico.', '2021-05-05', 5.0),
(4, 4, 6, 'pandemic es un imprescindible, muy rejugable.', '2021-08-19', 4.8),
(5, 5, 7, 'un staple para cualquier mazo de fusion.', '2022-03-20', 4.0),
(6, 6, 8, 'sushi go! es rapido y facil de aprender.', '2022-05-01', 4.2),
(7, 7, 9, 'ash blossom, carta meta, llego rapido.', '2023-10-22', 4.9),
(8, 8, 10, 'among us de mesa es fiel al videojuego.', '2023-12-02', 4.0),
(9, 9, 11, 'protectores de buena calidad, muy contento.', '2024-01-14', 4.7),
(10, 10, 12, 'el dragon blanco mas iconico, perfecto.', '2024-03-25', 5.0),
(11, 11, 13, 'ajedrez de buena calidad, piezas robustas.', '2024-08-12', 4.5),
(12, 12, 14, 'dark magician girl es hermosa, coleccionable.', '2024-11-27', 4.8),
(13, 13, 15, 'terraforming mars es profundo y estrategico.', '2025-02-28', 5.0),
(14, 14, 1, 'pot of greed es esencial en cualquier coleccion.', '2025-05-29', 4.3), 
(15, 15, 2, 'gloomhaven, un juego masivo y epico.', '2025-06-10', 4.9); 


-- Poblar la tabla Tienda (id_rol debe existir)
INSERT INTO tienda(id_tienda, id_rol, nombre_tienda, direccion_tienda, url_producto_imagen) 
VALUES
(1, 1, 'central games', 'Av. Principal 123             ', 'url_tienda_c01.jpg'),
(2, 2, 'card heaven', 'Calle Norte 456               ', 'url_tienda_n01.jpg'),
(3, 1, 'board game hut', 'Boulevard Sur 789             ', 'url_tienda_s01.jpg'),
(4, 2, 'online game shop', 'Ruta Este 101                 ', 'url_tienda_e01.jpg'),
(5, 1, 'collectors spot', 'Camino Oeste 202              ', 'url_tienda_o01.jpg'),
(6, 2, 'the dice tower', 'Virtual Address 000           ', 'url_tienda_o01.jpg'),
(7, 1, 'magic kingdom', 'Game Ave 321                  ', 'url_games_e01.jpg'),
(8, 2, 'puzzle place', 'Card Rd 654                   ', 'url_card_k01.jpg'),
(9, 1, 'game zone', 'Board Blvd 987                ', 'url_board_h01.jpg'),
(10, 2, 'figure collector', 'Collectors St 111             ', 'url_collectors_s01.jpg'),
(11, 1, 'hobby central', 'Dice Lane 222                 ', 'url_dice_t01.jpg'),
(12, 2, 'card world', 'Magic St 333                  ', 'url_magic_s01.jpg'),
(13, 1, 'puzzle master', 'Pawn Shop Rd 444              ', 'url_pawn_s01.jpg'),
(14, 2, 'game galaxy', 'Comic Ave 555                 ', 'url_comic_g01.jpg'),
(15, 1, 'rare card shop', 'Rare Finds St 666             ', 'url_rare_f01.jpg');

-- Poblar la tabla Medio_De_Pago 
INSERT INTO medio_de_pago (id_medio, id_carrito, nombre_medio, url_medio) 
VALUES
(1, NULL, 'webpay', 'url_webpay.jpg'), (2, NULL, 'paypal', 'url_paypal.jpg'), (3, NULL, 'criptomoneda', 'url_crypto.jpg'),
(4, NULL, 'mercado pago', 'url_mercadopago.jpg'),(5, NULL, 'vale regalo', 'url_regalo.jpg');

-- 11. Poblar la tabla Boleta
INSERT INTO boleta (id_boleta, direccion_boleta, valor_boleta, numero_boleta) 
VALUES
(1001, 'Calle Los guindos 80, Santiago', 25000, 1001), (1002, 'Av. Del Mar 120, Vina del Mar', 45000, 1002),
(1003, 'Pje. La Union 6010, Providencia', 15000, 1003), (1004, 'Carrera 10, Talca', 38000, 1004),
(1005, 'Sendero 8020, Quilicura', 2500, 1005), (1006, 'Ruta 30 Km 15, Los Andes', 12000, 1006),
(1007, 'Bilbao 890, Talca', 30000, 1007), (1008, 'Las torres 601, Antofagasta', 25000, 1008),
(1009, 'AV. El Parque 160, Puerto Montt', 5000, 1009), (1010, 'EL Delta 70, Iquique', 8000, 1010),
(1011, 'Oasis 7080, Talca', 18000, 1011), (1012, 'La Colina 90, Los Angeles', 10000, 1012),
(1013, 'EL Valle 100, Arica', 55000, 1013), (1014, 'Pje. El Cielo 70, Concepcion', 3000, 1014),
(1015, 'Luna 1020, Osorno', 80000, 1015);



-- Poblar la tabla carrito_usuario
INSERT INTO carrito_usuario (id_usuario, id_carrito) 
VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 11), (12, 12), (13, 13), (14, 14), (15, 15);


-- Poblar la tabla compra
INSERT INTO compra (id_compra, id_carrito, id_boleta, id_medio, cantidad_comprada, fecha_compra) 
VALUES
(1, 1, 1001, 1, 1, '2020-01-10'), (2, 2, 1002, 2, 1, '2020-03-16'),
(3, 3, 1003, 1, 1, '2020-07-05'), (4, 4, 1004, 3, 1, '2020-10-28'),
(5, 5, 1005, 4, 1, '2021-02-19'), (6, 6, 1006, 5, 1, '2021-03-26'),
(7, 7, 1007, 1, 1, '2021-07-21'), (8, 8, 1008, 3, 1, '2021-10-02'),
(9, 9, 1009, 1, 2, '2022-01-12'), (10, 10, 1010, 2, 1, '2022-04-24'),
(11, 11, 1011, 3, 1, '2023-05-05'), (12, 12, 1012, 4, 1, '2023-11-26'),
(13, 13, 1013, 5, 1, '2024-02-07'), (14, 14, 1014, 5, 1, '2024-06-28'),
(15, 15, 1015, 2, 2, '2025-05-12');


-- Poblar la tabla boleta_producto
INSERT INTO boleta_producto (id_boleta, id_producto) 
VALUES
(1001, 1), (1001, 9), (1002, 2),
(1003, 3), (1004, 4), (1005, 5),
(1006, 6), (1007, 7), (1008, 8),
(1009, 9), (1010, 10), (1011, 11),
(1012, 12), (1013, 13), (1014, 14);


-- Poblar la tabla listadeseos_usuario
INSERT INTO listadeseos_usuario (id_usuario, id_lista_deseos) 
VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 11), (12, 12), (13, 13), (14, 14), (15, 15);


-- Poblar la tabla listadeseos_producto
INSERT INTO listadeseos_producto (id_lista_deseos, id_producto) 
VALUES
(1, 1),   (1, 7),   (1, 10),
(2, 2),   (2, 8),   (2, 11),
(3, 3),   (3, 9),   (3, 12),
(4, 4),   (4, 13),  (5, 5),
(5, 14),  (6, 6),   (6, 15),
(7, 1),   (7, 2),   (8, 3),
(9, 4),   (10, 5),  (11, 6),
(12, 7),  (13, 8),  (14, 9),
(15, 10);

-- Poblar la tabla carrito_producto
INSERT INTO carrito_producto (id_carrito, id_producto) 
VALUES
(1, 1), (1, 9), (2, 2),
(3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8),
(9, 10), (10, 11), (11, 12),
(12, 13), (13, 14), (14, 15);

-- Poblar la tabla tienda_producto
INSERT INTO tienda_producto (id_tienda, id_producto) 
VALUES
(1, 1), (1, 2), (1, 9),
(2, 3), (2, 4), (3, 5),
(3, 6), (4, 7), (4, 8),
(5, 10), (5, 11), (6, 12),
(6, 13), (7, 14), (7, 15);




-- 1. ¿Cuántos comentarios ha hecho cada usuario a los productos?
--    Indique por favor el id de usuario y el número de comentarios ordenados de mayor a menor
SELECT
    u.id_usuario,
    COUNT(v.id_valoracion) AS numero_comentarios
FROM
    usuario u
LEFT JOIN
    valoracion v ON u.id_usuario = v.id_usuario
GROUP BY
    u.id_usuario
ORDER BY
    numero_comentarios DESC;

-- 2. ¿Cuáles son los productos que tiene menos comentarios?
--    Indique por favor el id del producto y el número de comentarios
SELECT
    p.id_producto,
    COUNT(v.id_valoracion) AS numero_comentarios
FROM
    producto p
LEFT JOIN
    valoracion v ON p.id_producto = v.id_producto
GROUP BY
    p.id_producto
ORDER BY
    numero_comentarios ASC;

-- 3. Necesitamos todas las compras desde enero del 2024 a diciembre 2024
--    Indique la venta mensual y el total anual
SELECT
    TO_CHAR(c.fecha_compra, 'YYYY-MM') AS anio_mes,
    SUM(b.valor_boleta) AS venta_mensual
FROM
    compra c
JOIN
    boleta b ON c.id_boleta = b.id_boleta
WHERE
    c.fecha_compra >= '2024-01-01' AND c.fecha_compra <= '2024-12-31'
GROUP BY
    anio_mes
ORDER BY
    anio_mes;

SELECT
    SUM(b.valor_boleta) AS total_anual_2024
FROM
    compra c
JOIN
    boleta b ON c.id_boleta = b.id_boleta
WHERE
    c.fecha_compra >= '2024-01-01' AND c.fecha_compra <= '2024-12-31';


-- 4. ¿Cuántos productos están en la lista de deseos?
SELECT
    COUNT(id_producto) AS total_ocurrencias_productos_en_lista_deseos
FROM
    listadeseos_producto;

-- 5. ¿Cuáles son los productos que están en la lista de deseos?
--    Indique por favor el id del producto y el id de usuario (Usando GROUP BY en lugar de DISTINCT)
SELECT
    ldp.id_producto,
    ldu.id_usuario
FROM
    listadeseos_producto ldp
JOIN
    listadeseos l ON ldp.id_lista_deseos = l.id_lista_deseos
JOIN
    listadeseos_usuario ldu ON l.id_lista_deseos = ldu.id_lista_deseos
GROUP BY
    ldp.id_producto,
    ldu.id_usuario
ORDER BY
    ldu.id_usuario, ldp.id_producto;

-- 6. ¿Cuales son los usuarios que mas compras han realizado entre los años 2021 y 2024?
--    Indique por favor el id de usuario y el numero de compras
SELECT
    u.id_usuario,
    COUNT(c.id_compra) AS numero_compras
FROM
    usuario u
JOIN
    carrito_usuario cu ON u.id_usuario = cu.id_usuario
JOIN
    compra c ON cu.id_carrito = c.id_carrito
WHERE
    c.fecha_compra BETWEEN '2021-01-01' AND '2024-12-31'
GROUP BY
    u.id_usuario
ORDER BY
    numero_compras DESC;