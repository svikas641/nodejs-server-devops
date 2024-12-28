# Step 1: Use the official Node.js image
FROM node:18

# Step 2: Set the working directory in the container
WORKDIR /usr/src/app

# Step 3: Copy the package.json and package-lock.json
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the application code
COPY . .

# Step 6: Expose the application port
EXPOSE 3000

# Step 7: Define the command to run the app
CMD ["node", "index.js"]
