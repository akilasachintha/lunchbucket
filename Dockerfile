FROM node:latest

# Install Expo CLI
RUN npm install -g expo-cli

# Copy project files into the container
WORKDIR /app
COPY package.json yarn.lock ./

# Install project dependencies
RUN npm install

# Expose ports for Expo dev server and Metro Bundler
EXPOSE 19000 19001

# Start the Expo dev server
CMD ["yarn", "start"]

# sudo docker run -it --rm --name lunchbucket -p 19000:19000 -p 19001:19001 lunchbucket
# sudo docker build -t lunchbucket .