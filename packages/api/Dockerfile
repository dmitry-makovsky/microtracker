FROM node:alpine

# App folder
ARG APP_DIR=/home/node/api
WORKDIR ${APP_DIR}

# Install deps
COPY package*.json ./
RUN npm install

# Copy all
COPY . .

# Build app
RUN npm run build

# Set port
EXPOSE "${API_PORT}"

CMD ["npm", "start"]