# Gunakan image Node.js yang sesuai 
FROM node:18-alpine 

# Buat direktori kerja di dalam container
WORKDIR /app

# Salin `package.json` dan `package-lock.json` (jika ada)
COPY package*.json ./

# Install dependencies
RUN npm install

# Salin seluruh kode aplikasi Anda
COPY . .

# Perintah untuk menjalankan server development (pastikan script ini ada di `package.json`)
CMD ["npm", "run", "dev"]