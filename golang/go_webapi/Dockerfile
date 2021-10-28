FROM golang:latest

RUN mkdir /app
WORKDIR /app

RUN go get github.com/gin-gonic/gin
RUN go get github.com/go-sql-driver/mysql
RUN go get github.com/jinzhu/gorm

EXPOSE 8080

CMD ["go", "run", "main.go"]
