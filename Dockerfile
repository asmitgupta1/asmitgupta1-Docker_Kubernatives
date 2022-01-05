# Base image
FROM node:alpine

# Step 2: Download and install dependency
WORKDIR /usr/app
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Step 3: Tell the image what to do when it starts as container
CMD ["npm", "start"]



#  docker build -t asmit1603/docker_kubernatives .
# docker run -p 8080:8080 --name docker_kubernatives asmit1603/docker_kubernatives
