# Proyecto Final Grupo 1

## Integrantes

## Descripción

Este proyecto utiliza Go y el framework **Gin** para crear una API que maneja comentarios relacionados con publicaciones.

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
