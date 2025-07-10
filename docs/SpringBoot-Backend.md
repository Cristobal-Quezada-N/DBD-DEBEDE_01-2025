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

### Lombok

Dependencia que omite operaciones repetitivas como _getters_, _setters_, metodos
_toString_ y _constructrs_. Ej:

- De esto: 

```java

@Entity
@Table(name = "nombre_tabla")
public class Tabla {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id") // Opcional. si tienen el mismo nombre
    private Long id_tabla;
    @Column(name = "atributo") // Opcional
    private Atributo atributo;
    /*
     * otros atributos
    */

    // Constructor vacio para JPA
    public Tabla() {}

    // Constructor
    public Tabla(Long id_tabla, Atributo atributo, ...) {
        this.id_tabla = id_tabla;
        this.atributo = atributo;
        /*
         * otros atributos
        */
    }
    // Getters y Setters
    public Long getIdTabla() {
        return id_tabla;
    }

    public void setIdTabla(Long id_tabla) {
        this.tabla = id_tabla;
    }

    public Long getAtributo() {
        return atributo;
    }

    public void getAtributo(Atributo atributo) {
        this.atributo = atributo;
    }
    
    /*
     * otros atributos
    */

    // Funciones que requieren implementacion, por ej:
    @Override
    public String toString() {
        return "Tabla {" +
                "id_tabla: " + id_tabla + ", " +
                "id_atributo: " + atributo + ", " +
                /*
                 * otros atributos
                */
        '}';
    }
}
```

- A esto: 

```java
@Entity
@Table(name = "nombre_tabla")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@toString
public class Tabla {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id") // Opcional. si tienen el mismo nombre
    private Long id_tabla;
    @Column(name = "atributo") // Opcional
    private Atributo atributo;
    /*
     * otros atributos
    */
}
```
- `@Getter`: Aplicar Getters a la entidad.
- `@Setter`: Aplicar Setters a la entidad.
- `@NoArgsConstructor`: Aplicar el constructor vacio para JPA.
- `@AllArgsConstructor`: Aplica constructor comun. Aplica a todas las variables de la clase.
- `@toString`: Aplica el metodo para impresion por pantalla `toString`. Para otros metodos, se realiza de forma analoga.

### Entidades Intermedias

Se debe crear una abstraccion para la llave compuesta. Ej:

```java
@Entity
@Table(name = "nombre_tabla")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Tabla {
    @EmbeddedId
    private TablaId id; // LLave Compuesta

    @ManyToOne
    @MapsId("id_tabla1")
    @JoinColumn(name = "id_tabla1")
    private Tabla tabla1;

    @ManyToOne
    @MapsId("id_tabla2")
    @JoinColumn(name = "id_tabla2")
    private Tabla tabla2;

    // Constructor
    public Tabla(Tabla tabla1, Tabla tabla2) {
        this.tabla1 = tabla1;
        this.tabla2 = tabla2;
        this.id = new TablaId(
            tabla1.getId_tabla1(),
            tabla2.getId_tabla2()
        );
    }

    // Abstraccion de la llave compuesta
    @Embeddable
    @Getter
    @Setter
    @NoArgsConstructor
    @AllArgsConstructor
    @EqualsAndHashCode
    @ToString
    public static class TablaId implements Serializable{
        private Long id_tabla1;
        private Long id_tabla2;
    }
}
```
