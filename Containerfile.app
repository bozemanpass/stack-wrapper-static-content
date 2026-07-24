FROM bozemanpass/static-content-base:stack AS builder

COPY . /content
RUN rm -rf /content/.git /content/.github

FROM bozemanpass/static-content-base:stack
COPY --from=builder /content /usr/share/nginx/html
