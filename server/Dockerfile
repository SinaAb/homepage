FROM scratch

ADD ./certs /certs
ADD ./ca-certificates.cer /etc/ssl/certs/
ADD ./gcs_key.json /gcs_key.json

ADD ./SPA /SPA
ADD ./main-server /main-server
CMD ["/main-server"]