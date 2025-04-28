# 1) Sử dụng base image Java 21 JRE
FROM eclipse-temurin:21-jre

# 2) Đặt thư mục làm việc trong container
WORKDIR /opt/keycloak

# 3) Copy toàn bộ thư mục Keycloak đã giải nén vào thư mục làm việc
COPY ./keycloak-999.0.0-SNAPSHOT/ ./

# 4) Cấp quyền thực thi cho script khởi động Keycloak
RUN chmod +x bin/kc.sh

# 5) Expose các cổng mà Keycloak sẽ sử dụng
EXPOSE 8080 8443

# 6) Lệnh khởi động Keycloak với hostname 0.0.0.0 để có thể truy cập từ bên ngoài
ENTRYPOINT ["bin/kc.sh", "start", "--hostname", "0.0.0.0"]
