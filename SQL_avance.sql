CREATE TABLE IF NOT EXISTS valoracion (
  id_valoracion           			BIGINT    PRIMARY KEY,
  id_producto      			BIGINT,
  comentario_valoracion		VARCHAR(300),
  fecha_valoracion			DATE,
  puntuacion				NUMERIC(2,1)
  
  --FALTA LLAVE FORANEA CON PRODUCTO
);

CREATE TABLE IF NOT EXISTS rol (
  id_rol           			BIGINT    PRIMARY KEY,
  tipo_rol                 CHAR(7),
  nivel_permiso            SMALLINT
);

CREATE TABLE IF NOT EXISTS tienda(
	id_tienda	BIGINT	PRIMARY KEY,
	id_rol		BIGINT,
	nombre_tienda	VARCHAR(32),
	direccion_tienda	VARCHAR(255),
	url_producto_imagen	CHAR(64),

	FOREIGN KEY (id_rol) REFERENCES rol(id_rol)
);

CREATE TABLE IF NOT EXISTS usuario (
  id_usuario            BIGINT       PRIMARY KEY,
  id_rol                BIGINT       ,
  id_valoracion         BIGINT       ,
  nombre_usuario        VARCHAR(32)  ,
  apellido              VARCHAR(32),
  email                 VARCHAR(32)  ,
  contraseña            CHAR(64)     ,
  direccion_usuario     VARCHAR(255) ,
  fecha_de_registro     DATE         ,

  FOREIGN KEY (id_rol) REFERENCES rol(id_rol),
  FOREIGN KEY (id_valoracion) REFERENCES valoracion(id_valoracion)
);

CREATE TABLE IF NOT EXISTS carrito(
  id_carrito           BIGINT       PRIMARY KEY,
  productos_carro      INTEGER
);

CREATE TABLE IF NOT EXISTS carrito_usuario (
  id_usuario   BIGINT NOT NULL,
  id_carrito   BIGINT NOT NULL,
 
  PRIMARY KEY (id_usuario, id_carrito),
  FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
  FOREIGN KEY (id_carrito) REFERENCES carrito(id_carrito)  
);

CREATE TABLE IF NOT EXISTS medio_de_pago (
  id_medio             BIGINT       PRIMARY KEY,
  id_carrito           BIGINT,
  nombre_medio         VARCHAR(32),
  url_medio            CHAR(64),

  FOREIGN KEY (id_carrito) REFERENCES carrito(id_carrito)
);

CREATE TABLE IF NOT EXISTS boleta (
  id_boleta               BIGINT       PRIMARY KEY,
  direccion_boleta        VARCHAR(255),
  valor_boleta            INTEGER,
  numero_boleta           BIGINT
);

CREATE TABLE IF NOT EXISTS compra (
  id_compra              BIGINT       PRIMARY KEY,
  id_carrito             BIGINT,
  id_boleta              BIGINT,
  id_medio                BIGINT,
  cantidad_comprada      INTEGER,
  fecha_compra           DATE,
  fechar_emision_boleta  DATE,

  --REVISAR
  FOREIGN KEY (id_carrito) REFERENCES carrito(id_carrito),
  FOREIGN KEY (id_boleta) REFERENCES boleta(id_boleta),
  FOREIGN KEY (id_medio) REFERENCES medio_de_pago
);

CREATE TABLE IF NOT EXISTS tienda_producto (
  id_tienda BIGINT NOT NULL,
  id_producto BIGINT NOT NULL,

  --REVISAR
  PRIMARY KEY (id_tienda, id_producto),
  FOREIGN KEY (id_tienda) REFERENCES tienda(id_tienda),
  FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

CREATE TABLE IF NOT EXISTS boleta_producto (
  id_boleta BIGINT NOT NULL,
  id_producto BIGINT NOT NULL,

  --REVISAR
  PRIMARY KEY (id_boleta, id_producto),
  FOREIGN KEY (id_boleta) REFERENCES boleta(id_boleta),
  FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

CREATE TABLE IF NOT EXISTS listadeseos (
  id_lista_deseos BIGINT PRIMARY KEY,
  productos_en_descuento INTEGER,
  cantidad_productos INTEGER
);

CREATE TABLE IF NOT EXISTS listadeseos_usuario (
  id_usuario BIGINT NOT NULL,
  id_lista_deseos BIGINT NOT NULL,

  --REVISAR
  PRIMARY KEY (id_usuario, id_lista_deseos),
  FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
  FOREIGN KEY (id_lista_deseos) REFERENCES listadeseos(id_lista_deseos)
);

CREATE TABLE IF NOT EXISTS carrito_producto (
  id_carrito BIGINT NOT NULL,
  id_producto BIGINT NOT NULL,

  --REVISAR
  PRIMARY KEY (id_carrito, id_producto),
  FOREIGN KEY (id_carrito) REFERENCES carrito(id_carrito),
  FOREIGN KEY (id_producto) REFERENCES producto(id_producto)	
);

INSERT INTO rol (id_rol, tipo_rol, nivel_permiso) VALUES
  (1, 'Admin',   0),
  (2, 'Jefe',  1),
  (3, 'Cliente',   2);

INSERT INTO usuario (id_usuario,id_rol,nombre_usuario,apellido,email,contraseña,direccion_usuario,fecha_de_registro) VALUES
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