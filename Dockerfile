# FROM node:6-stretch
FROM node:14.1.0

RUN export api_key=a4db08b7-5729-4ba9-8c08-f2df493465a1

RUN mkdir /usr/src/goof
RUN mkdir /tmp/extracted_files
COPY . /usr/src/goof
WORKDIR /usr/src/goof

RUN npm update
RUN npm install
EXPOSE 3001
EXPOSE 9229
ENTRYPOINT ["npm", "start"]
