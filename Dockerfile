FROM centurylink/ca-certs

MAINTAINER Christian Blades <christian.blades@careerbuilder.com>

EXPOSE 4001 7001 2379 2380
VOLUME ["/data"]

COPY etcd /
ENTRYPOINT ["/etcd"]
CMD ["--data-dir=/data"]
