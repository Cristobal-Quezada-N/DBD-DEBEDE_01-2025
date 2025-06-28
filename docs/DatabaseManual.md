# Manual de Base de Datos

Manual de creación, población y test de operaciones en la Base de Datos
implementada a partir del MER y MR de indentidades diseñadas.

## Paso a paso

1. Instalar PostgreSQL
Instala [PostgreSQL](https://www.postgresql.org/) y [PGAdmin](https://www.pgadmin.org/) desde el sitio oficial.

> Un devcontainer con PostgreSQL y PGAdmin se encuentra disponible.
> Para su uso es necesario clonar este repositorio y abrir en VSCode.
> Instrucciones de la ejecución del devcontainer seran mostradas automaticamente.
> Notar que credenciales estan almacenadas en [`.env`](../.devcontainer/.env)

2. Iniciar PGAdmin
Se recomienda para la interacción con la Base de Datos el uso de PGAdmin.

> Opcionalmente es posible llevar a cabo estos pasos a traves de [sqliteOnline](https://sqliteonline.com/)
> con la versión de PostgreSQL.
> En devcontainer la instancia de PGAdmin se encuentra disponible en [`localhost:5050`](http://localhost:5050).

3. Dirigirse al directorio [`Entrega Final`](../Entrega%20Final/)
El directorio proporciona los archivos necesarios para la implementación de la
Base de Datos.

4. Ejecutar [`Tablas.sql`](../Entrega%20Final/Tablas.sql)
Abrir y ejecutar en PGAdmin. Permite la creación de forma limpia
(remueve tablas antiguas).

5. Ejecutar [`Inserts.sql`](../Entrega%20Final/Sentencias.sql)
Abrir y ejecutar en PGAdmin. Permite la población de las tablas creadas en el
paso **4**.

6. Ejecutar [`Sentencias.sql`](../Entrega%20Final/Sentencias.sql)
Abrir y ejecutar en PGAdmin. Realiza operaciones basicas para probar el correcto
funcionamiento de las tablas previamente creadas y modificadas.
Se recomienda ejecutar las sentencias de este archivo de forma individual para
analizar resultados.

> En el entorno devcontainer se encuentran las tablas ya cargadas junto con
> [`backups`](../.devcontainer/backups/) y [`scripts`](../.devcontainer/scripts/) para la preservacion y restauracion de la
Base de Datos y PGAdmin.
