# DBD DEBEDE Proyecto Final

> Plataforma de e-commerce de TCG & Juegos de Mesa.
>
> Diseño de Base de Datos. 01 Semestre de 2025.
>
> Universidad de Santiago de Chile.

## Grupo 5

- Zhi Lu
- Luis Palma
- Cristóbal Quezada
- Nicolas Sarmiento

## Entregas

- [x] Informe.
- [x] Modelo Entidad Relacion y Modelo Relacional.
- [x] [Implementacion SQL](./docs/DatabaseManual.md).
- [ ] Implementacion Plataforma Web.


## USO

> Requerido:
> Postgresql v17.5
> Java v21.0.7


1. Ejecutar las instrucciones sql para crear y poblar las tablas.

```bash

psql -f .devcontainer/scripts/sql/Tablas.sql

psql -f .devcontainer/scripts/sql/Inserts.sql

```

2. Ejecutar el servidor(1) Spring Boot:

```bash
cd backend
./gradlew bootRun

```

3. Ejecutar las consultas sobre `localhost:8080`


(1) Para compilar y luego ejecutar:

1. `cd backend` y `./gradlew build`. Lo anterior generara un archivo `.jar`
2. Para ejecutar `java -jar build/libs/[nombre-archivo].jar`
