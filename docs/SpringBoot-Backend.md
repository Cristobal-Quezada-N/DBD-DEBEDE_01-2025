# Spring Boot Server

## Desarrollo

### Ejecutar en Modo Debug

1. Dirigirse a `backend/` y ejecutar en la consola de comandos:

```bash
./gradlew bootRun
```

2. Verificar mediante los logs si el servidor funciona.

### ¿Las Entidades en el Server se pueden servir?

- Revisar segun la ruta del controler la entidad correspondiente. Ej:

`Entidad: Producto` -> `http://localhost:8080/api/productos`

> Nota: Para ver por id de identidad dirigirse a `http://localhost:8080/api/productos/{id}`.
> Esto es el comporatamiento comun segun se muestra en `backend/src/main/java/com/debede/backend/controller/ProductoController.java`
