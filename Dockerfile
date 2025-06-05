FROM nginx:latest

COPY ./nginx.conf /etc/nginx/nginx.conf.template
COPY ./docker-entrypoint.sh /docker-entrypoint.sh

RUN chmod +x /docker-entrypoint.sh

CMD ["/docker-entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]
