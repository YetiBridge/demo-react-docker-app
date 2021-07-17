# pull the official base image
FROM node:alpine
# set working direction
WORKDIR /usr/src/app
# add `/app/node_modules/.bin` to $PATH
ENV PATH /usr/src/app/node_modules/.bin:$PATH
# install application dependencies
COPY package.json ./
RUN npm install
# add app
COPY . ./
# start app
EXPOSE 3000
CMD ["npm", "start"]