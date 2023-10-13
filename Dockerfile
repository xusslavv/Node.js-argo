FROM node:alpine

WORKDIR /app

COPY . .

# EXPOSE 3000

RUN chmod +x app.js start.sh server swith web /app &&\
    npm install -r package.json

CMD ["node", "index.js"]
