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