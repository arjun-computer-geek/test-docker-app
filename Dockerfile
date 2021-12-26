FROM node

WORKDIR /app

COPY package.json ./

COPY package-lock.json ./

RUN npm install --production

COPY . .

EXPOSE 3000

ENTRYPOINT ["npm", "start"]

CMD ["npm", "start"]