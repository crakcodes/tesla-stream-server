FROM ubuntu:22.04

# Installer nginx et le module RTMP
RUN apt update && apt install -y nginx libnginx-mod-rtmp

# Copier notre configuration nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Dire quels ports on va utiliser
EXPOSE 1935 80

# Démarrer nginx quand le serveur se lance
CMD ["nginx", "-g", "daemon off;"]
