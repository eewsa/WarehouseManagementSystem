FROM node:alpine
WORKDIR /app
COPY package.json ./
COPY package-lock.json ./
COPY ./ ./
RUN ls
RUN npm i --production
EXPOSE 4000
CMD ["npm", "run", "dev"]
