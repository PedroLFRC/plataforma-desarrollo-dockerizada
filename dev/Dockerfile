FROM ubuntu:latest

# Evita preguntas interactivas durante apt
ENV DEBIAN_FRONTEND=noninteractive

# Instalamos herramientas básicas
RUN apt-get update && apt-get install -y \
    bash \
    git \
    curl \
    wget \
    vim \
    nano \
    net-tools \
    iputils-ping \
    unzip \
    make \
    postgresql-client \
    locales \
    mysql-client \
    docker.io \
    build-essential \
    ca-certificates \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Añadir el repositorio oficial de MongoDB e instalar el cliente
RUN curl -fsSL https://pgp.mongodb.com/server-6.0.asc | gpg --dearmor -o /usr/share/keyrings/mongodb-server-6.0.gpg && \
    echo "deb [ signed-by=/usr/share/keyrings/mongodb-server-6.0.gpg ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" > /etc/apt/sources.list.d/mongodb-org-6.0.list && \
    apt-get update && \
    apt-get install -y mongodb-mongosh

# Configurar locale en inglés UTF-8
RUN locale-gen en_US.UTF-8 && \
    update-locale LANG=en_US.UTF-8

ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8

# Creamos el directorio de trabajo
WORKDIR /workspace
