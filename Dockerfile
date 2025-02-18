# Sử dụng Nginx làm image base
FROM nginx:alpine

# Sao chép file index.html vào trong container
COPY ./index.html /usr/share/nginx/html/

# Sao chép các hình ảnh vào trong container
COPY ./gitops-1.png /usr/share/nginx/html/
COPY ./gitops-2.png /usr/share/nginx/html/

# Mở cổng 80 cho Nginx
EXPOSE 80

# Cấu hình Nginx chạy nền
CMD ["nginx", "-g", "daemon off;"]
