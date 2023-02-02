FROM debian:11.6-slim AS builder
RUN apt-get update && apt-get install -y build-essential
WORKDIR /opt/wpp
COPY . .
RUN make

FROM debian:11.6-slim AS runtime
WORKDIR /opt/wpp
COPY --from=builder /opt/wpp/demo .
CMD ["./demo"]
EXPOSE 5000

