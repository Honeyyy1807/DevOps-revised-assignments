FROM node:20-alpine

RUN adduser -D user1

USER user1

WORKDIR /app

COPY package*.json ./

RUN npm install 

COPY . .

EXPOSE 3000

CMD ["npm","start"]