FROM node:16-alpine AS development

ENV NODE_ENV development

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install

COPY . .

EXPOSE 3002

CMD [ "npm", "run", "dev" ]
