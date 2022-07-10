FROM ubuntu:22.04
RUN apt-get update && apt-get install -y clang-14
RUN apt-get -y install make build-essential checkinstall zlib1g-dev

COPY build.sh .
CMD ["sh", "build.sh"]

#ENTRYPOINT ["/bin/bash"]
