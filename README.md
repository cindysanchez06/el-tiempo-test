# Portal News MOTOR

## Descripcion
Este repositorio alberga un proyecto desarrollado en Next.js 14  y se uso la libreria tailwind para estilos diseñado para ver noticias.
## Requisitos
- Node.js >= 20.10.0

## Instalacion y ejecucion en local
- Clona este repositorio en tu máquina local:
  - ` git clone https://github.com/cindysanchez06/el-tiempo-test.git `
  - ` cd el-tiempo-test `
  - ` npm install `
  - ` npm run dev `

## Base de Datos
- El archivo de la bd se encuentra adjunto en el repositorio, se llama el-tiempo.sql
- Para importar la base de datos, se debe ejecutar el siguiente comando:
  - ` mysql -u root -p el-tiempo < el-tiempo.sql `
- Adjunto se encuentra el diagrama de la base de datos

## URLs
- **Home**:
  - [http://localhost:3000/](http://localhost:3000/)
    - La URL base de nuestra aplicación se emplea para visualizar las noticias más recientes. Esta comunicación sigue el protocolo HTTP REST, utilizando el método GET. En el cuerpo de la solicitud (en formato JSON), se incluye un arreglo de noticias que consta del título de la noticia, su respectiva descripción y la fecha de publicación.
- **Noticia**:
- [http://localhost:3000/news/:id](http://localhost:3000/news/:id)
    - Esta URL de la aplicación se emplea para visualizar una noticia en específico. Esta comunicación sigue el protocolo HTTP REST, utilizando el método GET. En el cuerpo de la solicitud (en formato JSON), se incluye el título de la noticia, su respectiva descripción y la fecha de publicación.