FROM nginx:latest
#Use official Nginx Image
RUN rm -rf /usr/share/nginx/html/*
#remove default nginx assets
COPY *.html /usr/share/nginx/html
#copy your websitefiles
EXPOSE 80
CMD ["nginx" , "-g" , "daemon off;"]
