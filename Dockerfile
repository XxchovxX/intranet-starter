FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --only=production
RUN npm ci --omit=dev
RUN npm run build
EXPOSE 3000
CMD ["npm","start"]
