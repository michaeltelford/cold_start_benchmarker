FROM golang:alpine AS build-env
WORKDIR /app
COPY main.go .
RUN go build -o goapp

FROM alpine
WORKDIR /app
COPY --from=build-env /app/goapp .
CMD ./goapp
