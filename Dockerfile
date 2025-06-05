FROM nginx:latest

ENV BACKEND_ADDR teamspeak.bootkitism.svc
ENV BACKEND_PORT 10101

COPY ./nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
