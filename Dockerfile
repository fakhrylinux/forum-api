FROM node:lts

WORKDIR /usr/app

COPY package*.json .

RUN npm clean-install

COPY . .

EXPOSE 5000

CMD ["npm", "run", "start"]
