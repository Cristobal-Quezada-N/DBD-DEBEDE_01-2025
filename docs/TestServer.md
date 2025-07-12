# Testear Servidor

1. Ejecutar el servidor Spring Boot, ya sea en debug o ejecutable (`./gradlew bootRun` o `java -jar build/libs/[nombre-ejecutable].jar`).

## Operaciones disponibles:

- CRUD de entidades.
a. Registro y login de usuarios.
e. Actualizar informacion de usuarios

## cURL

### CRUD

- Create:

```bash

curl -X POST http://localhost:8080/api/usuarios/register \
  -H "Content-Type: application/json" \
  -d '{
  "nombre_usuario": "Pedro",
  "apellido": "Pérez",
  "email": "pedro@example.com",
  "contraseña": "123456",
  "direccion_usuario": "Av. Siempre Viva 123"
}'

{"usuario":{"id_usuario":11,"rol":{"id_rol":3,"tipo_rol":"Cliente","nivel_permiso":2},"valoracion":null,"nombre_usuario":"Pedro","apellido":"Pérez","email":"pedro@example.com","contraseña":"123456","direccion_usuario":"Av. Siempre Viva 123","fecha_de_registro":"2025-07-12"},"mensaje":"Cuenta Resgistrada"}

```

- Read:

```bash

curl -X GET http://localhost:8080/api/usuarios/11

{"id_usuario":11,"rol":{"id_rol":3,"tipo_rol":"Cliente","nivel_permiso":2},"valoracion":null,"nombre_usuario":"Pedro","apellido":"Pérez","email":"pedro@example.com","contraseña":"123456                                                          ","direccion_usuario":"Av. Siempre Viva 123","fecha_de_registro":"2025-07-12"}

```

- Update:

```bash

curl -X PUT http://localhost:8080/api/usuarios/11 \
  -H "Content-Type: application/json" \
  -d '{
  "nombre_usuario": "Pedro",
  "apellido": "Pérez",
  "email": "pedro.nuevo.correo@example.com",
  "contraseña": "123456",
  "direccion_usuario": "Av. Siempre Viva 123"
}'

{"id_usuario":11,"rol":{"id_rol":3,"tipo_rol":"Cliente","nivel_permiso":2},"valoracion":null,"nombre_usuario":"Pedro","apellido":"Pérez","email":"pedro.nuevo.correo@example.com","contraseña":"123456                                                          ","direccion_usuario":"Av. Siempre Viva 123","fecha_de_registro":"2025-07-12"}

```

- Delete:

```bash

curl -X DELETE http://localhost:8080/api/usuarios/22

Usuario Borrado

```

### Operaciones

Ejecutar los siguientes comandos en la terminal.

a. Registro y Login de Usuario

- Registro:

```bash

curl -X POST http://localhost:8080/api/usuarios/register \
  -H "Content-Type: application/json" \
  -d '{
  "nombre_usuario": "Pedro",
  "apellido": "Pérez",
  "email": "pedro@example.com",
  "contraseña": "123456",
  "direccion_usuario": "Av. Siempre Viva 123"
}'

{"usuario":{"id_usuario":11,"rol":{"id_rol":3,"tipo_rol":"Cliente","nivel_permiso":2},"valoracion":null,"nombre_usuario":"Pedro","apellido":"Pérez","email":"pedro@example.com","contraseña":"123456","direccion_usuario":"Av. Siempre Viva 123","fecha_de_registro":"2025-07-12"},"mensaje":"Cuenta Resgistrada"}

```

En caso de ingresar un correo ya existente:

```bash

 curl -X POST http://localhost:8080/api/usuarios/register \
  -H "Content-Type: application/json" \
  -d '{
  "nombre_usuario": "Pedro",
  "apellido": "Pérez",
  "email": "pedro@example.com",
  "contraseña": "123456",
  "direccion_usuario": "Av. Siempre Viva 123"
}'
El correo ya esta registrado.

```

- Login:

```bash

 curl -X POST http://localhost:8080/api/usuarios/login \
  -H "Content-Type: application/json" \
  -d '{
    "email": "pedro@example.com",
    "contraseña": "123456"
}'
{"usuario":{"id_usuario":11,"rol":{"id_rol":3,"tipo_rol":"Cliente","nivel_permiso":2},"valoracion":null,"nombre_usuario":"Pedro","apellido":"Pérez","email":"pedro@example.com","contraseña":"123456                                                          ","direccion_usuario":"Av. Siempre Viva 123","fecha_de_registro":"2025-07-12"},"mensaje":"Acceso Garantizado"}

```

En caso de ser credenciales incorrectas:

```bash

 curl -X POST http://localhost:8080/api/usuarios/login \
  -H "Content-Type: application/json" \
  -d '{
    "email": "pedro@example.com",
    "contraseña": "intento123456"
}'
Credenciales incorrectas

```

e. Actualizar datos de Usuario 

```bash

 curl -X PUT http://localhost:8080/api/usuarios/11 \
  -H "Content-Type: application/json" \
  -d '{
  "nombre_usuario": "Pedro",
  "apellido": "Pérez",
  "email": "pedro.nuevo.correo@example.com",
  "contraseña": "123456",
  "direccion_usuario": "Av. Siempre Viva 123"
}'
{"usuario":{"id_usuario":11,"rol":{"id_rol":3,"tipo_rol":"Cliente","nivel_permiso":2},"valoracion":null,"nombre_usuario":"Pedro","apellido":"Pérez","email":"pedro.nuevo.correo@example.com","contraseña":"123456","direccion_usuario":"Av. Siempre Viva 123","fecha_de_registro":"2025-07-12"},"mensaje":"Usuario Actualizado"}

```

En caso de no encontrar el usuario a acutalizar:

```bash
 curl -X PUT http://localhost:8080/api/usuarios/22 \
  -H "Content-Type: application/json" \
  -d '{
  "nombre_usuario": "Pedro",
  "apellido": "Pérez",
  "email": "pedro.nuevo.correo@example.com",
  "contraseña": "123456",
  "direccion_usuario": "Av. Siempre Viva 123"
}'
Usuario no encontrado

```
