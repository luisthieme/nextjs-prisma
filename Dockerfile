FROM node:20-alpine

WORKDIR /app

copy package*.json ./

RUN npm install

COPY . .

RUN npx prisma generate

# RUN npm run build

CMD ["npm", "run", "dev"]
