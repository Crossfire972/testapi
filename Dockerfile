# testapi
#
# VERSION               0.0.1

FROM golang:onbuild
LABEL Description="This image is used to start the testapi executable" Vendor="ACME Products" Version="0.0.1"
#ENV GOPATH="/go"
#RUN go get github.com/Crossfire972/testapi
#RUN go install github.com/Crossfire972/testapi
WORKDIR /go/src/app
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo .
EXPOSE 1323
VOLUME /data
ENTRYPOINT ["/go/src/app/app"]
