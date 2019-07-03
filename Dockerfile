FROM node:latest
COPY dist .
RUN npm i serve -g
CMD [ "serve", "-s" ]