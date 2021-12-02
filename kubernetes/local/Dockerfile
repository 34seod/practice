FROM golang:1.17.3-alpine
RUN apk add --update nodejs npm lsof && npm install -g nodemon
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
# none 이미지 삭제 : docker rmi $(docker images -f "dangling=true" -q)

# 1. 호스트 디렉토리를 미니쿠베에 연결하여 시작 -> minikube start --mount --mount-string=$PWD:/host
# 2. minikube에 로컬 도커 이미지 연결하기 -> eval $(minikube -p minikube docker-env)
# 3. 로컬이미지 빌드 -> docker build . -t gin
# 4. pod 생성
# 5. 서버 로그 보기 -> k logs -f gin-app

#   export DOCKER_TLS_VERIFY="1"
#   export DOCKER_HOST="tcp://$(minikube ip):2376"
#   export DOCKER_CERT_PATH="/Users/btpink/.minikube/certs"
#   export MINIKUBE_ACTIVE_DOCKERD="minikube"