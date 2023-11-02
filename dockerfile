FROM node:14
# working directory yang digunakan berada di /app
WORKDIR /app

# menyalin semua file yang ada di source code ke working directory
COPY . .
#environment pengembangan production menggunakan database host item-db
ENV NODE_ENV=production
ENV DB_HOST=item-db

#build aplikasi
RUN npm install --production --unsafe-perm && npm run build

#Berjalan di port 8080
EXPOSE 8080
#menjalankan perintah npm start untuk menjalankan aplikasi
CMD ["npm", "start"]
