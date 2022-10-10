FROM node:14

WORKDIR /app

COPY package.json ./

RUN npm install

ENV TZ="Asia/Kolkata"

COPY server.js ./

COPY entry.sh  ./

RUN chmod +x entry.sh

EXPOSE 8080

USER 1000

ENTRYPOINT ["sh","entry.sh"]
