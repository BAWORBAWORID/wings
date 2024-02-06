#!/bin/sh

# Membuat direktori /etc/pterodactyl
mkdir -p /etc/pterodactyl

# Menyalin file config.yml ke /etc/pterodactyl
cp -r config.yml /etc/pterodactyl

# Menjalankan ngrok tunnel
# Ganti URL dan label sesuai dengan kebutuhan Anda
ngrok tunnel --label edge=edghts_2bxJ5LsR4IZttIKG1DYZhfCzi9Y http://localhost:443 &

# Menunggu beberapa saat agar ngrok dapat berjalan
sleep 5

# Menjalankan docker-compose
docker-compose up -d --force-recreate
