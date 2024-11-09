FROM ubuntu:latest

# smallest image possible
RUN apt-get update && apt-get install -y --no-install-recommends nginx

COPY nginx.conf /etc/nginx/nginx.conf

# expose the ports where the two servers will run
EXPOSE 8080 8081

# start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
