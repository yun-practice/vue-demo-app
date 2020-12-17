FROM nginx
LABEL name = 'vue-app'
LABEL version = '1.0'
COPY ./dist /usr/share/nginx/html
COPY ./vue-app.conf /etc/nginx/conf.d
EXPOSE 80