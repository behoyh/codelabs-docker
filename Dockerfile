FROM golang AS claat

RUN go get github.com/googlecodelabs/tools/claat

COPY ./codelabs /codelabs-html

WORKDIR /codelabs-html

RUN for filename in *.md; do echo "Importing $filename: "; claat export "$filename"; done

FROM node as node

RUN mkdir /www
WORKDIR /www

RUN git clone https://github.com/googlecodelabs/tools
WORKDIR /www/tools/site

COPY --from=claat /codelabs-html /www/tools/site/codelabs-html

RUN npm install -g gulp-cli
RUN npm install

RUN [ "gulp", "dist", "--codelabs-dir=codelabs-html" ]

FROM nginx

COPY --from=node /www/tools/site/dist /usr/share/nginx/html
COPY --from=claat /codelabs-html /usr/share/nginx/html/codelabs

COPY ./nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 6464
