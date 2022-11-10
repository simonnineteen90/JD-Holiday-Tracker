FROM node:18

# Create App Directory
WORKDIR /usr/src/app

#install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app resources
COPY . .

EXPOSE 3000
CMD ["node", "app.js"]