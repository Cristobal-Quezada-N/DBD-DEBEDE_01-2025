-- Consulta 1
INSERT INTO carrito_producto (id_carrito, id_producto)
VALUES (1, 5);

UPDATE carrito
SET productos_carro = (
    SELECT COUNT(*) 
    FROM carrito_producto 
    WHERE id_carrito = 1
)
WHERE id_carrito = 1;

-- Consulta 2
DELETE FROM carrito_producto
WHERE id_carrito = 1 AND id_producto = 5;

UPDATE carrito
SET productos_carro = productos_carro - 1
WHERE id_carrito = 1;

-- Consulta 3
SELECT cp.id_carrito, p.id_producto, COALESCE(ct.nombre_carta, jdm.nombre_juegos_mesa) AS nombre_producto
FROM carrito_producto cp
JOIN producto p ON cp.id_producto = p.id_producto
LEFT JOIN carta_tcg ct ON p.id_carta = ct.id_carta
LEFT JOIN juego_de_mesa jdm ON p.id_juego_de_mesa = jdm.id_juego_de_mesa
WHERE cp.id_carrito = 1;

-- Consulta 4
SELECT SUM(p.precio) AS total_a_pagar
FROM carrito_producto cp
JOIN producto p ON cp.id_producto = p.id_producto
WHERE cp.id_carrito = 1;

-- Consulta 5
SELECT t.direccion_tienda, t.nombre_tienda, p.id_producto, COALESCE(ct.nombre_carta, jdm.nombre_juegos_mesa) AS nombre_producto
FROM tienda t
JOIN tienda_producto tp ON t.id_tienda = tp.id_tienda
JOIN producto p ON tp.id_producto = p.id_producto
LEFT JOIN carta_tcg ct ON p.id_carta = ct.id_carta
LEFT JOIN juego_de_mesa jdm ON p.id_juego_de_mesa = jdm.id_juego_de_mesa
WHERE t.direccion_tienda = 'Avenida Calamari';

-- Consulta 6
SELECT id_producto, cantidad_vendidas
FROM producto,
ORDER BY cantidad_vendidas DESC;

-- Consulta 7
SELECT lu.id_usuario, p.id_producto, COALESCE(ct.nombre_carta, jdm.nombre_juegos_mesa) AS nombre_producto
FROM lista_deseos_producto ldp
JOIN listadeseos ld ON ldp.id_lista_deseos = ld.id_lista_deseos
JOIN listadeseos_usuario lu ON ld.id_lista_deseos = lu.id_lista_deseos
JOIN producto p ON ldp.id_producto = p.id_producto
LEFT JOIN carta_tcg ct ON p.id_carta = ct.id_carta
LEFT JOIN juego_de_mesa jdm ON p.id_juego_de_mesa = jdm.id_juego_de_mesa
WHERE lu.id_usuario = 1;