FROM rust AS build

RUN rustup target add x86_64-unknown-linux-musl

WORKDIR /usr/src/rustecho
COPY . .
RUN cargo install --target x86_64-unknown-linux-musl --path .

FROM scratch
COPY --from=build /usr/local/cargo/bin/rustecho .

EXPOSE 4646

CMD ["./rustecho"]