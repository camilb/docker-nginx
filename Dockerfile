FROM nginx:latest

MAINTAINER Camil Blanaru "camil@edka.io"

# Remove the default Nginx configuration file
RUN rm -v /etc/nginx/nginx.conf

# Copy a configuration file from the current directory
ADD nginx.conf /etc/nginx/

VOLUME ["/var/cache/nginx"]

WORKDIR /usr/share/nginx/html

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
