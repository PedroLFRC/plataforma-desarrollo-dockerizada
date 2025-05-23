-- Script de inicialización de ejemplo
-- Se ejecuta una sola vez si la base de datos no existe aún

CREATE TABLE IF NOT EXISTS example (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);
