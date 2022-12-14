# pull the official base image
FROM node:alpine
# set working direction
WORKDIR /app
# add '/app/node_modules/.bin' to $PATH
ENV PATH /app/node_modules/.bin:$PATH
# install application dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm i
RUN npm install bootstrap
# add app
COPY . ./
# start app
EXPOSE 80
CMD ["npm", "start"]