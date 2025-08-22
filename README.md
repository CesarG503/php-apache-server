```bash
# Construir la imagen de Docker
docker build -t apache-php:v0 .

# Ejecutar el contenedor
docker run -d --name mi-server --rm -p 8080:80 -v .:/var/www/html apache-php:v0
```