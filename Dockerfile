FROM debian
WORKDIR /opt/wpp
COPY . .
RUN apt-get update
RUN apt-get install -y build-essential
RUN make 
CMD ["./demo"]

