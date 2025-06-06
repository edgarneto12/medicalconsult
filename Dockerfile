FROM ubuntu:latest
LABEL authors="edgar"

ENTRYPOINT ["top", "-b"]