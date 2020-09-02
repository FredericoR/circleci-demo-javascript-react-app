FROM node:14
WORKDIR /usr/src/app
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN yarn ci --only=production

COPY . .

EXPOSE 80

CMD [ "npm", "start" ]