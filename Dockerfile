# Gunakan image Node.js resmi sebagai base
FROM node:18

# Buat direktori kerja di dalam container
WORKDIR /app

# Salin file package.json dan package-lock.json (jika ada)
COPY package*.json ./

# Install dependencies
RUN npm install

# Salin seluruh isi proyek ke dalam container
COPY . .

# Expose port 3002
EXPOSE 3002

# Jalankan server
CMD ["npm", "run", "start:dev"]
