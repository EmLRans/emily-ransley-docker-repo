FROM quay.io/upslopeio/node-alpine
#Define directory
WORKDIR /usr/src/app
#Copy packages into docker
COPY package*.json .
#Download NPM matching to to the one in json file
RUN npm ci
#Copy all
COPY . .
EXPOSE 3000
#Start
CMD ["npm", "start"]