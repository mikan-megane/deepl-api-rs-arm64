FROM alpine
RUN wget https://github.com/zu1k/deepl-api-rs/releases/download/0.1.2/deepl-aarch64-unknown-linux-musl-0.1.2.gz -O deepl.gz \
 && gunzip deepl.gz \
 && chmod +x deepl
RUN echo -n $'[global]\n\
address = "0.0.0.0"\n\
log_level = "critical"\n' > Rocket.toml
EXPOSE 8000
ENTRYPOINT ["/deepl"]
