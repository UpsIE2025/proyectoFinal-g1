# Proyecto Final Grupo 1

## Integrantes
Fuentes Espinoza Pablo Gustavo
Rengel Rivera Mateo Santiago
Guerra Campuzano César Hugo
Guamán Guamán Saúl Germán
Cabascango García Amanda Elizabeth
Calo Catota Carlos Edison
Vela Moya Christian Eduardo

## Arquitectura del proyecto

<div style="width: 100%; display: flex; justify-content: center; align-items: center">
<img src="./docs/images/arch.png" alt="architecture" />
</div>

## Estructura del Proyecto

El proyecto está dividido en varios servicios y componentes, como se describe a continuación:

- **commentservice**: Servicio para gestionar comentarios.
- **gqlapi**: API GraphQL.
- **postpb**: Definición de servicios para publicaciones.
- **postservice**: Servicio para manejar publicaciones.
- **Makefile**: Archivo para automatización de tareas de construcción y ejecución.
- **docker-compose.yml**: Configuración para ejecutar la aplicación en contenedores.

## Endpoints

El servicio `commentservice` proporciona una API REST con los siguientes endpoints:

### 1. `POST /`
Crea un nuevo comentario.

**Request Body:**
```json
{
  "content": "string",
  "postID": "int",
  "authorID": "int"
}
```
**Response:**
```json
{
  "id": "int",
  "content": "string",
  "postID": "int",
  "authorID": "int"
}
```
### 2. `GET /`
Obtiene todos los comentarios.

**Response:**
```json
[
  {
    "id": "int",
    "content": "string",
    "postID": "int",
    "authorID": "int"
  }
]
```
### 3. `GET /:id`
Obtiene un comentario específico por ID.

**Response:**
```json
{
  "id": "int",
  "content": "string",
  "postID": "int",
  "authorID": "int"
}
```
### 4. `PATCH /:id`
Crea un nuevo comentario.

**Request Body:**
```json
{
  "content": "string"
}
```
**Response:**
```json
{
  "id": "int",
  "content": "string",
  "postID": "int",
  "authorID": "int"
}
```
### 5. `DELETE /:id`
Elimina un comentario por ID.

**Response:**
- `200 OK` si se elimina correctamente.
- `404 Not Found` si no se encuentra el comentario.

