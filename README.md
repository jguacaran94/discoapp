# README

Aplicación web desarrollada en Ruby on Rails para gestionar la discografía de los artistas registrados.

## Funciones
* CRUD para artistas.
* CRUD para lps.
* Filtrar lp por nombre de artista.

## Dependencias del sistema
* Ruby 2.5.1.
* SQLite 3.
* NodeJS o algún entorno js compatible.

## Herramientas
* Bootstrap para el diseño y el diseño responsivo.
* Ransack para las búsquedas.
* Select2 para el diseño de los collection select.

## Instalación
Previamente contar con las dependencias del sistema instaladas (véase: "## Dependencias del sistema" )

```bash
./bin/setup
```

## Ejecutar

```bash
./bin/rails s
```

Navegar a la siguiente url mediante un navegador web: <http://localhost:3000>

## Entidades/Tablas
* Artists
  * Name, string
  * Description, text

* LPs
  * Name, string
  * Year, string
  * Genre, string
  * Artist_ID, integer, foreing_key a campo id de la tabla artistas.

## Modelos
* Artists, validación de la presencia del nombre.

* LPs, validación de la presencia del nombre.

## Controladores
* Artists
  * Acción index
    * Debe mostrar todos los artistas registrados, contiene link a los detalles del artista.
  * Acción new y edit
    * Debe renderizar formulario de artistas.
  * Acción create y update
    * Debe redireccionar a acción de detalles de artista en caso de éxito.
    * Debe renderizar formulario nuevamente en caso de error.
  * Acción show
    * Debe mostrar detalles del artista según su id.
    * Link a lista de LP pertenecientes al artista.
  * Acción lps
    * Debe mostar todos los LPs pertenecientes al artista.
  * Acción destroy
    * Debe borrar el registro de la base de datos según su id.

* LP
  * Acción index
    * Debe mostrar todos los artistas registrados, filtrar LP por nombre del artista y link a detalles del LP.
  * Acción new y edit
    * Debe renderizar formulario de LP.
  * Acción create y update
    * Debe redireccionar a acción de detalles de LP en caso de éxito.
    * Debe renderizar formulario nuevamente en caso de error.
  * Acción show
    * Debe mostrar detalles del LP según su id.
  * Acción destroy
    * Debe borrar el registro de la base de datos según su id.
