FROM openjdk:25-slim

# Crea un usuario sin privilegios y sin contraseña
RUN adduser --disabled-password --gecos "" devuser

# Crea el directorio de trabajo
WORKDIR /workspace

# Copia los archivos del proyecto (opcional, si usas Main.java)
# COPY . .

# Cambia a usuario no root
USER devuser

# Mantiene el contenedor vivo para uso interactivo
CMD ["tail", "-f", "/dev/null"]
