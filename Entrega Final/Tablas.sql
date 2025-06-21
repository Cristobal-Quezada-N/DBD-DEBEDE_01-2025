DROP TABLE IF EXISTS carta_tcg, juego_de_mesa, producto, valoracion, rol, tienda, usuario, carrito, carrito_usuario, medio_de_pago, boleta, compra, tienda_producto, boleta_producto, listadeseos, listadeseos_usuario, carrito_producto, listadeseos_producto CASCADE;

-- Tabla Carta_TCG
CREATE TABLE IF NOT EXISTS carta_tcg (
    id_carta BIGINT PRIMARY KEY,
	nombre_carta VARCHAR(32),
    tipo_carta VARCHAR(32),
	descripcion_carta VARCHAR(500),
    rareza_carta CHAR(4),
    estado_carta VARCHAR(2),
    año_carta DATE ,
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
	  id_carta BIGINT  NULL,
	  id_juego_de_mesa BIGINT NULL,
    tipo_producto VARCHAR(32),
    fecha_subida DATE,
    cantidad_vendidas BIGINT,
    precio INTEGER,
    url_imagen VARCHAR(64),

	FOREIGN KEY (id_carta) REFERENCES carta_tcg(id_carta),
	FOREIGN KEY (id_juego_de_mesa) REFERENCES juego_de_mesa(id_juego_de_mesa)
);
  
CREATE TABLE IF NOT EXISTS valoracion (
  id_valoracion BIGINT PRIMARY KEY,
  id_producto BIGINT,
  comentario_valoracion	 VARCHAR(300),
  fecha_valoracion DATE,
  puntuacion NUMERIC(2,1),
  
  FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

CREATE TABLE IF NOT EXISTS rol (
  id_rol BIGINT PRIMARY KEY,
  tipo_rol CHAR(7),
  nivel_permiso SMALLINT
);

CREATE TABLE IF NOT EXISTS tienda(
	id_tienda BIGINT PRIMARY KEY,
	id_rol BIGINT,
	nombre_tienda VARCHAR(32),
	direccion_tienda VARCHAR(255),
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
  id_medio               BIGINT,
  cantidad_comprada      INTEGER,
  fecha_compra           DATE,
  fecha_emision_boleta   DATE,

  FOREIGN KEY (id_carrito) REFERENCES carrito(id_carrito),
  FOREIGN KEY (id_boleta) REFERENCES boleta(id_boleta),
  FOREIGN KEY (id_medio) REFERENCES medio_de_pago(id_medio)
);

CREATE TABLE IF NOT EXISTS tienda_producto (
  id_tienda BIGINT,
  id_producto BIGINT,

  PRIMARY KEY (id_tienda, id_producto),
  FOREIGN KEY (id_tienda) REFERENCES tienda(id_tienda),
  FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

CREATE TABLE IF NOT EXISTS boleta_producto (
  id_boleta BIGINT,
  id_producto BIGINT,

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
  id_usuario BIGINT ,
  id_lista_deseos BIGINT,

  PRIMARY KEY (id_usuario, id_lista_deseos),
  FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
  FOREIGN KEY (id_lista_deseos) REFERENCES listadeseos(id_lista_deseos)
);

CREATE TABLE IF NOT EXISTS carrito_producto (
  id_carrito BIGINT ,
  id_producto BIGINT ,

  PRIMARY KEY (id_carrito, id_producto),
  FOREIGN KEY (id_carrito) REFERENCES carrito(id_carrito),
  FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

CREATE TABLE IF NOT EXISTS listadeseos_producto(
	id_lista_deseos BIGINT,
	id_producto BIGINT    ,

	 PRIMARY KEY (id_lista_deseos, id_producto),
	 FOREIGN KEY (id_lista_deseos) REFERENCES listadeseos(id_lista_deseos),
	 FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);