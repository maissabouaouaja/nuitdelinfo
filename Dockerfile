# Dockerfile
FROM votre_image_web

# Installez les dépendances nécessaires
RUN apt-get update && apt-get install -y git

# Copiez le code source dans l'image
COPY . /app

WORKDIR /app
