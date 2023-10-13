img_name=p33-mocks

docker build -t ${img_name} .
docker run -dp 127.0.0.1:8080:8080 ${img_name}