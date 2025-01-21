# Sử dụng Nginx làm image base
FROM nginx:alpine

# Sao chép thư mục html vào trong container
COPY ./index.html /usr/share/nginx/html
COPY ./A1.png /usr/share/nginx/html

# Mở cổng 80 cho Nginx
EXPOSE 80

# Cấu hình thêm, nếu cần
CMD ["nginx", "-g", "daemon off;"]

