# Etapa única: modo desarrollo
FROM node:20-alpine

RUN apk update && apk upgrade

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 3000

CMD ["npm", "run", "dev"]
