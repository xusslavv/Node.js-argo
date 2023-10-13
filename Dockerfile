FROM node:slim

WORKDIR /app

COPY . .

# EXPOSE 8000

RUN apt update -y &&\
    chmod +x app.js start.sh server swith web /app &&\
    npm install -r package.json

CMD ["node", "app.js"]