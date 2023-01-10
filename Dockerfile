# menggunakan image node versi 12
FROM node:12-alpine

RUN apk add --no-cache python2 g++ make

# membuat folder app
WORKDIR /app

# menyalin seluruh code ke folder app
COPY . .

# mengirimkan environment
ENV NODE_ENV=production DB_HOST=item-db

# melakukan install package node
RUN yarn install

# membuka port 8080 agar bisa diakses
EXPOSE 8080

# melakukan npm start
CMD ["npm", "start"]