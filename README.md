# Vecfleet API Laravel

- [Vecfleet API Laravel](#vecfleet-api-laravel)
  - [Objetivo](#objetivo)
  - [Requerimientos](#requerimientos)
  - [Entorno](#entorno)
  - [Instalación](#instalación)
  - [Endpoints](#endpoints)
  - [Seguridad y Registro de usuario](#seguridad-y-registro-de-usuario)

## Objetivo

El objetivo de este proyecto es mostrar el funcionamiento básico de una API desarrollada en laravel 9. 

## Requerimientos 
  - Tener instalado docker

## Entorno 
   - PHP 8.1.12 (cli) (built: Oct 27 2022 13:50:40) (NTS)
   - Laravel Framework 9.38.0
   - MariaDB 10.6.11

## Instalación 
    - abrir terminal ejecutar compando docker-compose up -d 
    - dentro del mismo terminal ejecutar docker exec -ti vec_fleet_crud_api bash
    - ejecutar php artisan migrate_database:migrate

## Endpoints
 - http://localhost:1002/api/register : Registra usuario y devuelve token
 - http://localhost:1002/api/configbusiness : Servicio Config business (POST, GET, PATCH, DELETE)
 - http://localhost:1002/api/paises : Servicio de listado de paises. Solo listado via GET


## Seguridad y Registro de usuario

Para consumir los servicios de esta API se requiere metodo de authenticacion de tipo Bearer token y es necesario tener un token para su uso. 
La base de datos migrada ya cuenta con un usuario registrado y un token. El mismo es 1|baxd2wE2MU8yPPZLxkP8DBgoJgyHwCubAJwVfkNU

Para generar un nuevo token se debe consumir el endpoint http://localhost:1002/api/register via POST pasando parametros via x-www-form-urlencoded. Los paramertros a pasar son name, email y password. 
La respuesta de este registro devuelve el token necesario para consumir los servicios de esta API