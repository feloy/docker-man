FROM gcr.io/cloud-marketplace/google/ubuntu1804 AS builder

RUN apt update \
 && apt install -y \
           xz-utils \
           gcc \
           pkg-config \
           libpipeline-dev \
           libgdbm-dev \
           groff-base

RUN cd $HOME \
 && curl -L http://download.savannah.nongnu.org/releases/man-db/man-db-2.8.7.tar.xz --output man-db.tar.xz \
 && tar xf man-db.tar.xz \
 && cd man-db-2.8.7 \
 && ./configure --disable-manual \
 && make install



FROM gcr.io/cloud-marketplace/google/ubuntu1804 

RUN apt update \
 && apt install -y \
           libpipeline1 \
           libgdbm5 \
           groff \
           less

COPY --from=builder /usr/local /usr/local
