# Utilisez une image de base adaptée à Python
FROM python:3.9

# Créez et définissez le répertoire de travail
WORKDIR /app

# Copiez les fichiers de votre application (incluant le fichier requirements.txt)
COPY . /app

# Installez les dépendances
RUN pip install -r app/requirements.txt

# Exposez le port sur lequel Flask s'exécutera
EXPOSE 5000

# Commande pour exécuter l'application Flask
CMD ["flask", "run", "--host=0.0.0.0"]
