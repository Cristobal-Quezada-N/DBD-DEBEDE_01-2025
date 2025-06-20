-- Tabla Producto
create table if not exists producto (
    id_producto BIGINT PRIMARY KEY, 
    tipo_producto VARCHAR(2),
    fecha_subida DATE NOT NULL,
    cantidad_vendidas BIGINT,
    precio INT NOT NULL,
    url_imagen VARCHAR(255)
	
);

-- Tabla Carta_TCG
create table if not exists carta_tcg (
    id_carta BIGINT PRIMARY KEY,
    tipo_carta VARCHAR(100) NOT NULL,
    rareza_carta VARCHAR(1),
    nombre_carta VARCHAR(100),
    estado_carta VARCHAR(2),
    descripcion_carta VARCHAR(100),
    year_carta DATE NOT NULL,
    stock_carta BIGINT NOT NULL, 
   
    FOREIGN KEY (id_carta) REFERENCES producto(id_producto)
);


-- Tabla Juego_De_Mesa
create table if not exists juego_de_mesa (
    id_juego_de_mesa BIGINT PRIMARY KEY, 
    tipo_juego_de_mesa VARCHAR(2),
    stock_juegos_mesa BIGINT NOT NULL,
    nombre_juegos_mesa VARCHAR(100),
    descripcion_juegos_mesa VARCHAR(100),

    FOREIGN KEY (id_juego_de_mesa) REFERENCES producto(id_producto)
);