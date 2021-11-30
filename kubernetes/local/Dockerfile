FROM golang:1.17.3
RUN apt update && apt install -y nodejs npm lsof && npm install -g nodemon
RUN mkdir app
WORKDIR /app

COPY go.mod .
COPY go.sum .
RUN go mod download

COPY . .
EXPOSE 8080
CMD nodemon --legacy-watch

# docker build . -t gin
# docker run -it -p 8080:8080 -v ${PWD}:/app gin
# https://blog.logrocket.com/how-to-build-a-rest-api-with-golang-using-gin-and-gorm/

1. minikube에 로컬 도커 이미지 연결하기
2. 호스트 디렉토리를 미니쿠베에 연결
3. 영구볼륨 설정
4. 컨테이너에 영구 볼륨 연결
5. 파일 변경 시 자동으로 갱신 되기