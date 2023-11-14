FROM node:latest

WORKDIR /app

COPY app/package*.json ./

RUN npm install
RUN npm rebuild better-sqlite3 --update-binary

COPY app/ .

CMD ["sh", "-c", "node registerCommands.js && node bot.js"]


