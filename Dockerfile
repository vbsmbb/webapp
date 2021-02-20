FROM node:12.0.0

RUN mkdir -p D:\\Apps\\webapp

COPY dist D:\\Apps\\webapp\\dist
COPY assets D:\\Apps\\webapp\\assests

COPY data.json D:\\Apps\\webapp
COPY server.js D:\\Apps\\webapp
COPY deploy-package.json D:\\Apps\\webapp\\package.json

WORKDIR D:\\Apps\\webapp

RUN echo 'package-lock=false' >> .npmrc
RUN npm install

EXPOSE 4000

CMD ["node", "server.js"]
