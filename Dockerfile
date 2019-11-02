FROM node
WORKDIR /src
COPY ./package.json /src/
RUN npm install
COPY . /src/
RUN npm run build
ENTRYPOINT npm run serve

