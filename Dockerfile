# Etapa 1: Construcción
FROM node:20-alpine AS builder

WORKDIR /app

COPY . .

RUN npm install
RUN npm run build

# Etapa 2: Producción
FROM node:20-alpine

WORKDIR /app

COPY --from=builder /app ./

EXPOSE 3000

CMD ["npm", "start"]
