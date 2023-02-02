FROM debian:11.6-slim
CMD ["./demo"]
EXPOSE 5000
WORKDIR /opt/wpp
RUN apt-get update
RUN apt-get install -y build-essential
COPY . .
RUN make
RUN apt-get purge -y build-essentials
RUN apt-get autoremove -y 
