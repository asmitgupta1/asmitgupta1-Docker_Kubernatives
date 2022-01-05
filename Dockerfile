# Base image
FROM node:alpine

# Step 2: Download and install dependency
# WORKDIR /
COPY ./ ./
RUN npm install

# Step 3: Tell the image what to do when it starts as container
CMD ["npm", "start"]