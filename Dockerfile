FROM busybox:latest
ARG BASE=/opt/hihi

# Your code 1:
COPY docker/config/file1.yml $BASE/config/thatfile.yml

RUN echo 'first thatfile:' && cat ${BASE}/config/thatfile.yml

 # Your code 2:
COPY docker/config/file2.yml $BASE/config/thatfile.yml

RUN echo 'second thatfile:' && cat ${BASE}/config/thatfile.yml
