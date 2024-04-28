FROM node:20-alpine

WORKDIR /app

copy package*.json ./

RUN npm install

COPY . .

RUN npx prisma generate

COPY start.sh /app

RUN sed -i 's/\r$//' $app/start.sh 
    
CMD ["chmod","+x", "/app/start.sh"]

