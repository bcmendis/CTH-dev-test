FROM node:16-slim
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
EXPOSE 3000
RUN npm run build
CMD ["npm", "start"]