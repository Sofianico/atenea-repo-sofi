# Usamos node para construir
FROM node:18 as build
WORKDIR /app
COPY . .
RUN npm install && npm run build

# Usamos una imagen liviana para servir los archivos estáticos
FROM node:18-slim
WORKDIR /app
RUN npm install -g serve
COPY --from=build /app/dist .
EXPOSE 3000
CMD ["serve", "-s", ".", "-l", "3000"]
