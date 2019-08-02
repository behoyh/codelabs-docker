FROM golang AS claat

RUN go get github.com/googlecodelabs/tools/claat

COPY ./codelabs /codelabs

WORKDIR /codelabs

RUN claat export how-to-write-a-codelab.md

FROM node as node

RUN mkdir /www
WORKDIR /www

RUN git clone https://github.com/googlecodelabs/tools
WORKDIR /www/tools/site

COPY --from=claat /codelabs /www/tools/site/codelabs

RUN npm install -g gulp-cli
RUN npm install

RUN [ "gulp", "dist" ]

FROM nginx

COPY --from=node /www/tools/site/dist /usr/share/nginx/html

COPY ./nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 6464
