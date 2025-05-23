# 🐳 Entorno Dockerizado de Desarrollo - TFG ASIR

> Trabajo de Fin de Grado - 2º ASIR | Curso 2024 / 2025  
> Autor: Pedro López Fernández  

Este proyecto proporciona un entorno de desarrollo completo usando Docker, preparado para trabajar con múltiples lenguajes y servicios sin necesidad de instalarlos en el sistema principal. Está diseñado para estudiantes, desarrolladores y administradores de sistemas que deseen tener un entorno limpio y replicable donde poder practicar o trabajar en sus proyectos.

## 📦 Contenedores Incluidos

| Contenedor  | Lenguaje / Servicio                     | Propósito                                                                 |
|-------------|-----------------------------------------|---------------------------------------------------------------------------|
| dev         | Contenedor base para trabajar           | Espacio principal para editar y ejecutar código desde VSCode u otros IDEs |
| java        | Java                                    | Compilar y ejecutar proyectos Java                                        |
| python      | Python 3                                | Ejecutar scripts y proyectos Python con dependencias aisladas             |
| php         | PHP CLI                                 | Ejecutar scripts PHP por línea de comandos                                |
| dotnet      | .NET SDK                                | Desarrollar y ejecutar apps en .NET Core/ASP.NET                          |
| mysql       | MySQL Server                            | Base de datos relacional para proyectos                                   |
| postgres    | PostgreSQL Server                       | Alternativa a MySQL, más orientada a integridad y compatibilidad SQL      |
| mongo       | MongoDB Server                          | Base de datos NoSQL orientada a documentos                                |
| redis       | Redis Server                            | Almacenamiento clave-valor en memoria para cache y gestión de sesiones    |
| apache      | Servidor Apache HTTP                    | Servidor web tradicional para sitios estáticos o dinámicos con PHP        |
| php-fpm     | Módulo para PHP para Apache o nginx     | Ejecutar scripts PHP de forma eficiente como servicio separado            |
| nginx       | Servidor Nginx                          | Servidor web ligero, también actúa como proxy inverso o balanceador       |
| management  | Contenedor para administración avanzada | Gestión y monitorización del entorno completo                             |

## 🧰 Requisitos

### ⚙️ Aplicaciones requeridas

- [Docker](https://www.docker.com/products/docker-desktop) (contiene Docker Compose también)
- [Git](https://git-scm.com/downloads/win)
- [Visual Studio Code](https://code.visualstudio.com/) (editor recomendado)

### ⚙️ Extensiones recomendadas

- [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)
- [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
- [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
- [Git Lens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
- [Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer)

## 🗂️ Estructura de Carpetas

```plaintext
.
├── dev/
├── management/
├── tools/
│   ├── java/
│   ├── python/
│   ├── php/
│   ├── php-fpm/
│   ├── dotnet/
│   ├── mysql/
│   ├── postgres/
│   ├── mongo/
│   ├── redis/
│   ├── apache/
│   ├── nginx/
│   └── node/
├── workspace/
│   ├── php/
│   ├── node/
│   ├── apache/
│   ├── nginx/
│   ├── python/
│   ├── java/
│   ├── dotnet/
│   ├── mysql/
│   ├── postgres/
│   ├── mongo/
│   └── redis/
├── docker-compose.yml
├── README.md
```

## 🚀 ¿Cómo se usa?

### Paso 1: Construcción del entorno

Desde la raíz del proyecto, puedes elegir si desplegarlo todo de golpe:

```bash
docker compose build
```

O bien desplegar el contenedor que quieras:
```bash
docker compose build <nombre del contenedor>
```

### Paso 2: Arranque de los contenedores

Todos los contenedores:

```bash
docker compose up -d
```

Un solo contenedor en específico: 

```bash
docker compose up -d <nombre del contenedor>
```

### Paso 3: Verificar estado

```bash
docker ps -a        # Ver todos los contenedores
docker stats        # Ver uso de CPU/MEM en tiempo real
```

### Paso 4: Acceso a contenedores

Puedes hacerlo directamente mediante línea de comandos:

```bash
docker exec -it <nombre_del_contenedor> sh
```

Utilizar la extensión Dev Container para acceder mediante VS Code.

## 🚀 Despliegue

Dependiendo del tipo de lo que quieras hacer, puedes desplegar todo el entorno completo o los contenedores que necesites.

### Despliegue por contenedor

Desde la raíz del proyecto:

```bash
docker compose up -d nombre del contenedor
```

### Despliegue completo

```bash
docker compose up -d
```

## 📌 Comandos Útiles

- Acceder al contenedor dev:
  ```bash
  docker exec -it dev bash
  ```

- Acceder a una base de datos MySQL desde dev:
  ```bash
  mysql -h mysql -u devuser -p
  ```

- Acceder a PostgreSQL:
  ```bash
  psql -h postgres -U devuser -d app_db
  ```

- Acceder a MongoDB:
  ```bash
  mongosh --host mongo -u devuser -p devpass --authenticationDatabase app_db
  ```

## 🛠️ Ampliación y mantenimiento

Se pueden agregar más contenedores modificando el archivo docker-compose.yml.
Puedes crear archivos .devcontainer.json para automatizar entornos en VS Code.
Los contenedores están preparados para ampliarse con nuevos paquetes si lo necesitas.

## ❗ Notas
El contenedor php-fpm está pensado solo si deseas enlazarlo con Apache o Nginx para interpretar PHP mediante FastCGI. En casos normales, no es necesario.

El contenedor de gestión management no está activo actualmente, pero puedes activarlo cuando quieras modificando los archivos Dockerfile y las líneas docker-compose.yml del contenedor.

## ✍️ Personalización por Usuario

Cada carpeta dentro de `workspace/` está preparada para que los usuarios trabajen ahí con sus propios proyectos. Todos los contenedores se comunican entre sí mediante Docker Network.

## 📄 Licencia

Proyecto libre para fines educativos y de desarrollo.
