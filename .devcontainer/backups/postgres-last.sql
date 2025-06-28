--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5 (Debian 17.5-1.pgdg120+1)
-- Dumped by pg_dump version 17.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: boleta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boleta (
    id_boleta bigint NOT NULL,
    direccion_boleta character varying(255),
    valor_boleta integer,
    numero_boleta bigint
);


ALTER TABLE public.boleta OWNER TO postgres;

--
-- Name: boleta_producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boleta_producto (
    id_boleta bigint NOT NULL,
    id_producto bigint NOT NULL
);


ALTER TABLE public.boleta_producto OWNER TO postgres;

--
-- Name: carrito; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carrito (
    id_carrito bigint NOT NULL,
    productos_carro integer
);


ALTER TABLE public.carrito OWNER TO postgres;

--
-- Name: carrito_producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carrito_producto (
    id_carrito bigint NOT NULL,
    id_producto bigint NOT NULL
);


ALTER TABLE public.carrito_producto OWNER TO postgres;

--
-- Name: carrito_usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carrito_usuario (
    id_usuario bigint NOT NULL,
    id_carrito bigint NOT NULL
);


ALTER TABLE public.carrito_usuario OWNER TO postgres;

--
-- Name: carta_tcg; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carta_tcg (
    id_carta bigint NOT NULL,
    nombre_carta character varying(32),
    tipo_carta character varying(32),
    descripcion_carta character varying(500),
    rareza_carta character(4),
    estado_carta character varying(2),
    "año_carta" date,
    stock_carta integer
);


ALTER TABLE public.carta_tcg OWNER TO postgres;

--
-- Name: compra; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.compra (
    id_compra bigint NOT NULL,
    id_carrito bigint,
    id_boleta bigint,
    id_medio bigint,
    cantidad_comprada integer,
    fecha_compra date,
    fecha_emision_boleta date
);


ALTER TABLE public.compra OWNER TO postgres;

--
-- Name: juego_de_mesa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.juego_de_mesa (
    id_juego_de_mesa bigint NOT NULL,
    tipo_juego_de_mesa character varying(32),
    stock_juegos_mesa integer,
    nombre_juegos_mesa character varying(64),
    descripcion_juegos_mesa character varying(500)
);


ALTER TABLE public.juego_de_mesa OWNER TO postgres;

--
-- Name: listadeseos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.listadeseos (
    id_lista_deseos bigint NOT NULL,
    productos_en_descuento integer,
    cantidad_productos integer
);


ALTER TABLE public.listadeseos OWNER TO postgres;

--
-- Name: listadeseos_producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.listadeseos_producto (
    id_lista_deseos bigint NOT NULL,
    id_producto bigint NOT NULL
);


ALTER TABLE public.listadeseos_producto OWNER TO postgres;

--
-- Name: listadeseos_usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.listadeseos_usuario (
    id_usuario bigint NOT NULL,
    id_lista_deseos bigint NOT NULL
);


ALTER TABLE public.listadeseos_usuario OWNER TO postgres;

--
-- Name: medio_de_pago; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.medio_de_pago (
    id_medio bigint NOT NULL,
    id_carrito bigint,
    nombre_medio character varying(32),
    url_medio character(64)
);


ALTER TABLE public.medio_de_pago OWNER TO postgres;

--
-- Name: producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.producto (
    id_producto bigint NOT NULL,
    id_carta bigint,
    id_juego_de_mesa bigint,
    tipo_producto character varying(32),
    fecha_subida date,
    cantidad_vendidas bigint,
    precio integer,
    url_imagen character varying(64)
);


ALTER TABLE public.producto OWNER TO postgres;

--
-- Name: rol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rol (
    id_rol bigint NOT NULL,
    tipo_rol character(7),
    nivel_permiso smallint
);


ALTER TABLE public.rol OWNER TO postgres;

--
-- Name: tienda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tienda (
    id_tienda bigint NOT NULL,
    id_rol bigint,
    nombre_tienda character varying(32),
    direccion_tienda character varying(255),
    url_producto_imagen character(64)
);


ALTER TABLE public.tienda OWNER TO postgres;

--
-- Name: tienda_producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tienda_producto (
    id_tienda bigint NOT NULL,
    id_producto bigint NOT NULL
);


ALTER TABLE public.tienda_producto OWNER TO postgres;

--
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id_usuario bigint NOT NULL,
    id_rol bigint,
    id_valoracion bigint,
    nombre_usuario character varying(32),
    apellido character varying(32),
    email character varying(32),
    "contraseña" character(64),
    direccion_usuario character varying(255),
    fecha_de_registro date
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- Name: valoracion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.valoracion (
    id_valoracion bigint NOT NULL,
    id_producto bigint,
    comentario_valoracion character varying(300),
    fecha_valoracion date,
    puntuacion numeric(2,1)
);


ALTER TABLE public.valoracion OWNER TO postgres;

--
-- Data for Name: boleta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boleta (id_boleta, direccion_boleta, valor_boleta, numero_boleta) FROM stdin;
1	Calle 1 Poniente 123, Santiago	15000	1001
2	Av. Kennedy 5000, Vitacura	20000	1002
3	Av. Kennedy 5000, Vitacura	12000	1003
4	Calle 1 Poniente 123, Santiago	18000	1004
5	Av. Kennedy 5000, Vitacura	22000	1005
6	Calle 1 Poniente 123, Santiago	25000	1006
7	Calle 1 Poniente 123, Santiago	14000	1007
8	Av. Kennedy 5000, Vitacura	30000	1008
9	Av. Kennedy 5000, Vitacura	17000	1009
10	Calle 1 Poniente 123, Santiago	19000	1010
\.


--
-- Data for Name: boleta_producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boleta_producto (id_boleta, id_producto) FROM stdin;
\.


--
-- Data for Name: carrito; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carrito (id_carrito, productos_carro) FROM stdin;
2	5
3	2
4	10
5	7
6	12
7	1
8	6
9	9
10	4
1	2
\.


--
-- Data for Name: carrito_producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carrito_producto (id_carrito, id_producto) FROM stdin;
1	1
1	9
2	2
3	3
4	4
5	5
6	6
7	7
8	8
9	10
10	11
\.


--
-- Data for Name: carrito_usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carrito_usuario (id_usuario, id_carrito) FROM stdin;
1	3
2	5
3	2
4	10
5	7
6	8
7	1
8	6
9	9
10	4
\.


--
-- Data for Name: carta_tcg; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carta_tcg (id_carta, nombre_carta, tipo_carta, descripcion_carta, rareza_carta, estado_carta, "año_carta", stock_carta) FROM stdin;
1	Woobat	Pokémon	- Card Number: 50/114 \\n\n                 - Rarity: Common \\n\n                 - Card Type: Psychic \\n\n                 - HP: 50 \\n\n                 - Stage: Basic \\n\n                 - Attack 1:[1] Gust (10) \\n\n                 - Weakness: Lx2 \\n\n                 - Resistance: F-20 \\n\n                 - Retreat Cost: 1	C   	DD	2000-06-20	60
2	Electivire ex	Pokémon	- Card Number: 069/182 \\n\n                 - Rarity: Double Rare \\n\n                 - Card Type: Lightning \\n\n                 - HP: 280 \\n\n                 - Stage: Stage 1 \\n	DR  	NM	2000-01-21	40
3	SSB Gogeta	Dragon Ball	Ultimate. \\n\n                 Card Type: Battle \\n\n                 Color: Blue \\n\n                 Energy(Color Cost): 8(BBBB) \\n\n                 Special Trait: Saiyan \\n\n                 Power: 45000 \\n\n                 Combo Power: 10000 \\n\n                 Combo Energy: 1 \\n\n                 Era: DBS: Broly Saga \\n\n                 Character: "Gogeta : Br" \\n	HR  	LP	2001-04-20	0
4	Enhanced Power Cell	Transformers	Upgrade — Utility \\n\n                 The upgraded character has +3 [HP] \\n\n                 - Rarity: Uncommon \\n\n                 - Number: 16 \\n\n                 - Card Type: Battle Card \\n\n                 - Battle Icons:[L]	UC  	HP	2015-01-02	99
5	Pocket Processor	Transformers	At the start of your turn -> Draw a card. \\n\n                 Rarity: Rare \\n\n                 Number: 46 \\n\n                 Affiliation: Neutral \\n\n                 Card Type: Battle Card \\n\n                 Sub-Type: Upgrade - Utility \\n\n                 Battle Icons: [G] \\n\n                 Stars: 0	R   	MP	2010-01-09	20
6	Sith Legionnaire	Star Wars	While you control another Villainy unit, this unit gets +2/+0. \\n\n                 Rarity: Uncommon \\n\n                 Number: 081/264 \\n\n                 Aspect: Command;Villainy \\n\n                 Card Type: Unit \\n\n                 Traits: Sith;Trooper \\n\n                 Cost: 2 \\n\n                 Power: 2 \\n\n                 HP: 2 \\n\n                 Arena Type: Ground \\n\n                 Artist: Facundo Moyano	UC  	HP	2004-09-09	66
7	Papa Hummel	World of Warcraft	Rarity: L \\n\n                 Artist: Matt Cavotta	R   	LP	2001-01-04	30
8	Raddus	Star Wars	Rarity: Rare \\n\n                 Number: 104/262 \\n\n                 Aspect: Command;Heroism \\n\n                 Card Type: Unit \\n\n                 Traits: Capital Ship;Resistance;Vehicle \\n\n                 Cost: 7 \\n\n                 Power: 8 \\n\n                 HP: 6 \\n\n                 Arena Type: Space \\n\n                 Artist:French Carlomagno	R   	NM	2004-04-05	30
9	Mokey D. Luffy	One Piece	[Rush] \\n\n                 Rarity: SEC \\n\n                 Number: OP11-118 \\n\n                 Color: Blue \\n\n                 Card Type: Character \\n\n                 Cost: 8 \\n\n                 Power: 8000 \\n\n                 Subtype(s): Straw Hat Crew \\n\n                 Attribute: Strike \\n\n                 Artist:otton	HR  	NM	2023-03-01	20
10	Hyper Dragonoid Ultra	Bakugan	Rarity: Common \\n\n                 Number: 151 \\n\n                 Card Type: Evo \\n\n                 Faction: Ventus \\n\n                 Energy Cost: 3 \\n\n                 B-Power: 900 \\n\n                 Damage Rating: 5	CC  	HP	2011-02-10	63
\.


--
-- Data for Name: compra; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.compra (id_compra, id_carrito, id_boleta, id_medio, cantidad_comprada, fecha_compra, fecha_emision_boleta) FROM stdin;
1	1	1	1	3	2025-06-20	2025-06-21
2	2	2	2	5	2025-06-19	2025-06-20
3	3	3	1	2	2025-06-18	2025-06-19
4	4	4	1	10	2025-06-17	2025-06-18
5	5	5	2	7	2025-06-16	2025-06-17
6	6	6	3	12	2025-06-15	2025-06-16
7	7	7	1	1	2025-06-14	2025-06-15
8	8	8	2	6	2025-06-13	2025-06-14
9	9	9	1	4	2025-06-12	2025-06-13
10	10	10	2	5	2025-06-11	2025-06-12
11	1	2	3	8	2025-06-20	2025-06-21
12	2	3	1	10	2025-06-19	2025-06-20
13	3	4	2	5	2025-06-18	2025-06-19
14	4	5	3	3	2025-06-17	2025-06-18
15	5	6	1	2	2025-06-16	2025-06-17
16	6	7	2	1	2025-06-15	2025-06-16
17	7	8	3	4	2025-06-14	2025-06-15
18	8	9	1	6	2025-06-13	2025-06-14
19	9	10	2	5	2025-06-12	2025-06-13
20	10	1	1	7	2025-06-11	2025-06-12
\.


--
-- Data for Name: juego_de_mesa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.juego_de_mesa (id_juego_de_mesa, tipo_juego_de_mesa, stock_juegos_mesa, nombre_juegos_mesa, descripcion_juegos_mesa) FROM stdin;
1	Estratégia	100	Catan	Un juego de mesa clásico donde los jugadores deben recolectar recursos para construir caminos y asentamientos.
2	Familia	150	Monopoly	Un juego de negocios en el que los jugadores compran y venden propiedades con el objetivo de arruinar a los demás jugadores.
3	Fiesta	200	Twister	Un juego físico donde los jugadores deben colocar manos y pies en círculos de colores sin caer.
4	Fiesta	180	Pictionary	Juego de adivinanza donde los jugadores dibujan palabras o frases para que su equipo las adivine.
5	Estratégia	50	Ajedrez	Un juego de estrategia en el que dos jugadores mueven piezas sobre un tablero con el objetivo de capturar al rey del oponente.
6	Familia	180	Clue	Un juego de misterio en el que los jugadores deben adivinar quién cometió un crimen, con qué arma y en qué habitación.
7	Familia	130	Jenga	Un juego físico de destreza en el que los jugadores deben retirar bloques de madera sin que se caiga la torre.
8	Estratégia	110	Risk	Un juego de conquista mundial donde los jugadores deben ganar territorios a través de batallas estratégicas.
\.


--
-- Data for Name: listadeseos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.listadeseos (id_lista_deseos, productos_en_descuento, cantidad_productos) FROM stdin;
1	0	3
2	1	2
3	0	5
4	0	1
5	2	4
6	0	2
7	1	1
8	0	3
9	0	2
10	1	1
\.


--
-- Data for Name: listadeseos_producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.listadeseos_producto (id_lista_deseos, id_producto) FROM stdin;
1	1
1	7
1	10
2	2
2	8
2	11
3	3
3	9
3	12
4	4
4	13
5	5
5	14
6	6
6	15
7	1
7	2
8	3
9	4
10	5
\.


--
-- Data for Name: listadeseos_usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.listadeseos_usuario (id_usuario, id_lista_deseos) FROM stdin;
1	1
2	2
3	3
4	4
5	5
6	6
7	7
8	8
9	9
10	10
\.


--
-- Data for Name: medio_de_pago; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.medio_de_pago (id_medio, id_carrito, nombre_medio, url_medio) FROM stdin;
1	\N	webpay	url_webpay.jpg                                                  
2	\N	paypal	url_paypal.jpg                                                  
3	\N	criptomoneda	url_crypto.jpg                                                  
4	\N	mercado pago	url_mercadopago.jpg                                             
5	\N	vale regalo	url_regalo.jpg                                                  
\.


--
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.producto (id_producto, id_carta, id_juego_de_mesa, tipo_producto, fecha_subida, cantidad_vendidas, precio, url_imagen) FROM stdin;
1	1	\N	Carta TCG	2020-01-15	50	20000	URL1
2	\N	3	Juego Mesa	2020-03-20	30	45000	URL2
3	5	\N	Carta TCG	2020-08-22	40	15000	URL3
4	\N	1	Juego Mesa	2020-10-25	20	38000	URL4
5	4	\N	Carta TCG	2021-01-28	100	2500	URL5
6	\N	2	Juego Mesa	2021-04-01	60	12000	URL6
7	3	\N	Carta TCG	2021-10-05	25	30000	URL7
8	\N	4	Juego Mesa	2022-02-08	15	25000	URL8
9	\N	7	Juego Mesa	2020-02-08	12	5000	URL9
10	10	\N	Carta TCG	2023-07-12	70	8000	URL10
11	\N	5	Juego Mesa	2023-10-15	30	18000	URL11
12	9	\N	Carta TCG	2024-01-18	35	10000	URL12
13	\N	6	Juego Mesa	2024-06-20	25	55000	URL13
14	2	\N	Carta TCG	2025-03-25	90	3000	URL14
15	\N	8	Juego Mesa	2025-05-28	10	80000	URL15
\.


--
-- Data for Name: rol; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rol (id_rol, tipo_rol, nivel_permiso) FROM stdin;
1	Admin  	0
2	Jefe   	1
3	Cliente	2
\.


--
-- Data for Name: tienda; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tienda (id_tienda, id_rol, nombre_tienda, direccion_tienda, url_producto_imagen) FROM stdin;
1	1	PachoJuegos	Avenida Calamari	URL1                                                            
2	1	JuegosAdiccion	Monte Everest	URL2                                                            
3	1	TiendaMercy	Pasillo Tarantino	URL3                                                            
4	1	FisicoBGames	Avenida Estrellas	URL4                                                            
5	1	GamesFamily	Calle Balatro	URL5                                                            
6	1	RealJuegos	Avenida Calamari	URL6                                                            
7	1	SaintGames	Paso de los Santos	URL7                                                            
8	1	BalatroCastle	Camino del Joker	URL8                                                            
9	1	DarkGames	Avenida Estrellas	URL9                                                            
10	1	Ultimo Juego	Calle Balatro	URL10                                                           
\.


--
-- Data for Name: tienda_producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tienda_producto (id_tienda, id_producto) FROM stdin;
1	1
1	2
2	3
2	4
3	5
3	6
4	7
4	8
1	9
5	10
5	11
6	12
6	13
7	14
7	15
\.


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (id_usuario, id_rol, id_valoracion, nombre_usuario, apellido, email, "contraseña", direccion_usuario, fecha_de_registro) FROM stdin;
1	3	\N	Juan	Pérez	juan.perez@gmail.com	gjanhbjkju                                                      	Calle 1 Poniente 123, Santiago	2025-06-20
2	3	\N	Ana	González	ana.gonzalez@gmail.com	rnjkfjbhgy                                                      	Av. Libertador B. O´Higgins 1000, Santiago	2025-06-19
3	3	\N	Pedro	Muñoz	pedro.munoz@correo.cl	hbhjadhdhjba                                                    	Pasaje Los Robles 45, Valparaíso	2025-06-18
4	3	\N	María	Rojas	maria.rojas@correo.cl	kmhgjijlngtkmk                                                  	Calle San Martín 212, Concepción	2025-06-17
5	3	\N	Carlos	Soto	carlos.soto@correo.cl	mmmrmmtiriw                                                     	Av. Pedro de Valdivia 750, Providencia	2025-06-16
6	3	\N	Daniela	Contreras	daniela.contreras@correo.cl	123456                                                          	Camino La Cañada 1200, La Reina	2025-06-15
7	1	\N	Pablo	Ramírez	pablo.ramirez@correo.cl	colocoloElmasgrande                                             	Calle San Diego 987, Santiago Centro	2025-06-14
8	2	\N	Valentina	Herrera	valentina.herrera@correo.cl	contraseña                                                      	Av. Kennedy 5000, Vitacura	2025-06-13
9	3	\N	Sebastián	Díaz	sebastian.diaz@correo.cl	albocampeon                                                     	Calle José Miguel Carrera 333, Talca	2025-06-12
10	2	\N	Camila	Fuentes	camila.fuentes@correo.cl	necesitoplata                                                   	Av. Manuel Montt 1500, Providencia	2025-06-11
\.


--
-- Data for Name: valoracion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.valoracion (id_valoracion, id_producto, comentario_valoracion, fecha_valoracion, puntuacion) FROM stdin;
1	1	excelente carta, muy bien protegida.	2020-01-16	5.0
2	2	juego de mesa muy divertido para amigos.	2020-03-27	4.5
3	3	llego en perfecto estado, un clasico.	2021-05-05	5.0
4	4	pandemic es un imprescindible, muy rejugable.	2021-08-19	4.8
5	5	un staple para cualquier mazo de fusion.	2022-03-20	4.0
6	6	sushi go! es rapido y facil de aprender.	2022-05-01	4.2
7	7	ash blossom, carta meta, llego rapido.	2023-10-22	4.9
8	8	among us de mesa es fiel al videojuego.	2023-12-02	4.0
9	9	protectores de buena calidad, muy contento.	2024-01-14	4.7
10	10	el dragon blanco mas iconico, perfecto.	2024-03-25	5.0
11	11	ajedrez de buena calidad, piezas robustas.	2024-08-12	4.5
12	12	dark magician girl es hermosa, coleccionable.	2024-11-27	4.8
13	13	terraforming mars es profundo y estrategico.	2025-02-28	5.0
14	14	pot of greed es esencial en cualquier coleccion.	2025-05-29	4.3
15	15	gloomhaven, un juego masivo y epico.	2025-06-10	4.9
\.


--
-- Name: boleta boleta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boleta
    ADD CONSTRAINT boleta_pkey PRIMARY KEY (id_boleta);


--
-- Name: boleta_producto boleta_producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boleta_producto
    ADD CONSTRAINT boleta_producto_pkey PRIMARY KEY (id_boleta, id_producto);


--
-- Name: carrito carrito_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrito
    ADD CONSTRAINT carrito_pkey PRIMARY KEY (id_carrito);


--
-- Name: carrito_producto carrito_producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrito_producto
    ADD CONSTRAINT carrito_producto_pkey PRIMARY KEY (id_carrito, id_producto);


--
-- Name: carrito_usuario carrito_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrito_usuario
    ADD CONSTRAINT carrito_usuario_pkey PRIMARY KEY (id_usuario, id_carrito);


--
-- Name: carta_tcg carta_tcg_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carta_tcg
    ADD CONSTRAINT carta_tcg_pkey PRIMARY KEY (id_carta);


--
-- Name: compra compra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_pkey PRIMARY KEY (id_compra);


--
-- Name: juego_de_mesa juego_de_mesa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.juego_de_mesa
    ADD CONSTRAINT juego_de_mesa_pkey PRIMARY KEY (id_juego_de_mesa);


--
-- Name: listadeseos listadeseos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listadeseos
    ADD CONSTRAINT listadeseos_pkey PRIMARY KEY (id_lista_deseos);


--
-- Name: listadeseos_producto listadeseos_producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listadeseos_producto
    ADD CONSTRAINT listadeseos_producto_pkey PRIMARY KEY (id_lista_deseos, id_producto);


--
-- Name: listadeseos_usuario listadeseos_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listadeseos_usuario
    ADD CONSTRAINT listadeseos_usuario_pkey PRIMARY KEY (id_usuario, id_lista_deseos);


--
-- Name: medio_de_pago medio_de_pago_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medio_de_pago
    ADD CONSTRAINT medio_de_pago_pkey PRIMARY KEY (id_medio);


--
-- Name: producto producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id_producto);


--
-- Name: rol rol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (id_rol);


--
-- Name: tienda tienda_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda
    ADD CONSTRAINT tienda_pkey PRIMARY KEY (id_tienda);


--
-- Name: tienda_producto tienda_producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_producto
    ADD CONSTRAINT tienda_producto_pkey PRIMARY KEY (id_tienda, id_producto);


--
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);


--
-- Name: valoracion valoracion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.valoracion
    ADD CONSTRAINT valoracion_pkey PRIMARY KEY (id_valoracion);


--
-- Name: boleta_producto boleta_producto_id_boleta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boleta_producto
    ADD CONSTRAINT boleta_producto_id_boleta_fkey FOREIGN KEY (id_boleta) REFERENCES public.boleta(id_boleta);


--
-- Name: boleta_producto boleta_producto_id_producto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boleta_producto
    ADD CONSTRAINT boleta_producto_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.producto(id_producto);


--
-- Name: carrito_producto carrito_producto_id_carrito_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrito_producto
    ADD CONSTRAINT carrito_producto_id_carrito_fkey FOREIGN KEY (id_carrito) REFERENCES public.carrito(id_carrito);


--
-- Name: carrito_producto carrito_producto_id_producto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrito_producto
    ADD CONSTRAINT carrito_producto_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.producto(id_producto);


--
-- Name: carrito_usuario carrito_usuario_id_carrito_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrito_usuario
    ADD CONSTRAINT carrito_usuario_id_carrito_fkey FOREIGN KEY (id_carrito) REFERENCES public.carrito(id_carrito);


--
-- Name: carrito_usuario carrito_usuario_id_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrito_usuario
    ADD CONSTRAINT carrito_usuario_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);


--
-- Name: compra compra_id_boleta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_id_boleta_fkey FOREIGN KEY (id_boleta) REFERENCES public.boleta(id_boleta);


--
-- Name: compra compra_id_carrito_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_id_carrito_fkey FOREIGN KEY (id_carrito) REFERENCES public.carrito(id_carrito);


--
-- Name: compra compra_id_medio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_id_medio_fkey FOREIGN KEY (id_medio) REFERENCES public.medio_de_pago(id_medio);


--
-- Name: listadeseos_producto listadeseos_producto_id_lista_deseos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listadeseos_producto
    ADD CONSTRAINT listadeseos_producto_id_lista_deseos_fkey FOREIGN KEY (id_lista_deseos) REFERENCES public.listadeseos(id_lista_deseos);


--
-- Name: listadeseos_producto listadeseos_producto_id_producto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listadeseos_producto
    ADD CONSTRAINT listadeseos_producto_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.producto(id_producto);


--
-- Name: listadeseos_usuario listadeseos_usuario_id_lista_deseos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listadeseos_usuario
    ADD CONSTRAINT listadeseos_usuario_id_lista_deseos_fkey FOREIGN KEY (id_lista_deseos) REFERENCES public.listadeseos(id_lista_deseos);


--
-- Name: listadeseos_usuario listadeseos_usuario_id_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listadeseos_usuario
    ADD CONSTRAINT listadeseos_usuario_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);


--
-- Name: medio_de_pago medio_de_pago_id_carrito_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medio_de_pago
    ADD CONSTRAINT medio_de_pago_id_carrito_fkey FOREIGN KEY (id_carrito) REFERENCES public.carrito(id_carrito);


--
-- Name: producto producto_id_carta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_id_carta_fkey FOREIGN KEY (id_carta) REFERENCES public.carta_tcg(id_carta);


--
-- Name: producto producto_id_juego_de_mesa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_id_juego_de_mesa_fkey FOREIGN KEY (id_juego_de_mesa) REFERENCES public.juego_de_mesa(id_juego_de_mesa);


--
-- Name: tienda tienda_id_rol_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda
    ADD CONSTRAINT tienda_id_rol_fkey FOREIGN KEY (id_rol) REFERENCES public.rol(id_rol);


--
-- Name: tienda_producto tienda_producto_id_producto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_producto
    ADD CONSTRAINT tienda_producto_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.producto(id_producto);


--
-- Name: tienda_producto tienda_producto_id_tienda_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_producto
    ADD CONSTRAINT tienda_producto_id_tienda_fkey FOREIGN KEY (id_tienda) REFERENCES public.tienda(id_tienda);


--
-- Name: usuario usuario_id_rol_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_id_rol_fkey FOREIGN KEY (id_rol) REFERENCES public.rol(id_rol);


--
-- Name: usuario usuario_id_valoracion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_id_valoracion_fkey FOREIGN KEY (id_valoracion) REFERENCES public.valoracion(id_valoracion);


--
-- Name: valoracion valoracion_id_producto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.valoracion
    ADD CONSTRAINT valoracion_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.producto(id_producto);


--
-- PostgreSQL database dump complete
--

