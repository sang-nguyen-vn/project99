# Sử dụng Nginx làm image base
FROM nginx:alpine

# Copy file cấu hình Nginx
COPY ./nginx.conf /etc/nginx/nginx.conf

# Sao chép file index.html vào trong container
COPY ./index.html /usr/share/nginx/html/

# Copy MIME types (vì Alpine không có sẵn)
COPY ./mime.types /etc/nginx/mime.types

# Sao chép các hình ảnh vào trong container
COPY ./gitops-1.png /usr/share/nginx/html/
COPY ./gitops-2.png /usr/share/nginx/html/
COPY ./Codestar-NguyenHoangSang.png /usr/share/nginx/html/
COPY ./Infras-as-code.png /usr/share/nginx/html/
COPY ./Traffic-Flow.png /usr/share/nginx/html/
COPY ./CI-CD.png /usr/share/nginx/html/

# Đảm bảo quyền cho user nginx
RUN chown -R nginx:nginx /usr/share/nginx/html

# Mở cổng 80 cho Nginx
EXPOSE 80

# Cấu hình Nginx chạy nền
CMD ["nginx", "-g", "daemon off;"]
