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
	url_producto_imagen	CHAR(64)

	--FALTA  FOREIGN KEY
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






