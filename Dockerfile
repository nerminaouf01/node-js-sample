# Utiliser une image Node.js officielle comme base
FROM node:14

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers du projet dans le conteneur
COPY package*.json ./

# Installer les dépendances du projet
RUN npm install

# Copier le reste des fichiers du projet dans le conteneur
COPY . .

# Exposer le port 3000
EXPOSE 3000

# Commande pour démarrer l'application
CMD ["npm", "start"]
