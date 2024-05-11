FROM node:20-alpine

WORKDIR /app

COPY package*json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]

#docker build -t nextjs-app .
#docker run -p 3000:3000 -d --name nextjs-app nextjs-app
