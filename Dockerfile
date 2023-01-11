FROM golang:latest

RUN mkdir /app
ADD . /app
WORKDIR /app

RUN go build -o thedudebridge .

EXPOSE 80
ENV PORT=80

CMD ["./thedudebridge"]
