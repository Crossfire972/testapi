# testapi
#
# VERSION               0.0.1

FROM golang:onbuild
LABEL Description="This image is used to start the testapi executable" Vendor="ACME Products" Version="0.0.1"
#ADD . /go/src/github.com/crossfire972/testapi
RUN go install github.com/Crossfire972/testapi
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .
EXPOSE 1323
VOLUME /data
ENTRYPOINT ["main"]

#RUN mkdir /app 
#ADD . /app/ 
#WORKDIR /app 
#RUN go build -o main . 
#CMD ["/app/main"]
