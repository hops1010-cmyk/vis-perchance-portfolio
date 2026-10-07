FROM node:24-alpine
RUN apk upgrade --no-cache && \
    rm -rf /usr/local/lib/node_modules/npm /usr/local/bin/npm /usr/local/bin/npx /root/.npm
WORKDIR /app
COPY package.json ./
COPY server.js index.html embed.html xqvwmk521g.html vis-character.html ./.
ENV PORT=3006
EXPOSE 3006
CMD ["node", "server.js"]
