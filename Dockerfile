# --- Etapa 1: construir el frontend ---
    FROM node:23-slim AS builder
    WORKDIR /app
    
    # Copiar e instalar frontend
    COPY . .
    WORKDIR /app
    RUN npm run install:all && npm run build
    
    CMD ["npm", "start"]
    