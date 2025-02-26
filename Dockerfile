# Build phase to get all of the web files set up

FROM node:lts-alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

##########

# Run phase is used to start up an nginx server that can actually serve up the files from the previous builder phase

FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html
