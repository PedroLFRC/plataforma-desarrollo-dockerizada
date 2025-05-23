FROM php:8.4-cli-alpine

# Crea usuario no root y sin contraseña
RUN adduser -D devuser

# Crea directorio de trabajo
WORKDIR /workspace

# Copia los archivos del proyecto (opcional)
# COPY . .

# Usa el nuevo usuario
USER devuser

# Mantiene el contenedor activo
CMD ["tail", "-f", "/dev/null"]

