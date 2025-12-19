FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS cluster0.rxuvxrw.mongodb.net
ENV MONGODB_USERNAME ravikalaneaws
ENV MONGODB_PASSWORD aL3rLVGq5vCTnpTL

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]