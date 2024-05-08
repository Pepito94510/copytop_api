## Recuperation de l'image docker Node (officiel), version latest
FROM node:latest as build

## Creation du répertoire
WORKDIR /Copytop_api

## Copie des sources dans le répertoire
COPY --chown=node:node . .

## Installation des packages npm
RUN npm install --omit=dev

## Ouverture du port 5001
EXPOSE 5001

USER node

## Lancement du script
CMD ["node", "server.js"]
