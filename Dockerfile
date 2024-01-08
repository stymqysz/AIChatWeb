


# docker build -t nanjiren01/chatmj-web:0.11.1 ../AIChatWeb
# docker push nanjiren01/chatmj-web:0.11.1
# docker tag nanjiren01/chatmj-web:0.11.1 nanjiren01/chatmj-web:latest
# docker push nanjiren01/chatmj-web:latest

FROM node:18-alpine

WORKDIR /app

COPY ./public ./public
COPY ./node_modules ./node_modules
COPY ./.next/standalone ./
COPY ./.next/static ./.next/static
COPY ./.next/server ./.next/server

ENV BASE_URL=http://aichat-admin:8080
ENV SECRET=123456

EXPOSE 3000

CMD node /app/server.js;
