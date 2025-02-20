FROM node:lts

WORKDIR /usr/app

COPY package*.json .

RUN npm clean-install

COPY . .

EXPOSE 5000

CMD ["sh", "-c", "npm run migrate up && npm run start"]
