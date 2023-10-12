FROM alpine:latest
RUN apk add --update nodejs npm

RUN node -v
RUN npm -v
WORKDIR /app
COPY . /app
RUN npm install
EXPOSE 3001
CMD node index.js
