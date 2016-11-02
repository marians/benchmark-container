FROM debian:latest
RUN apt-get update && apt-get install -y --no-install-recommends python time
WORKDIR /benchmark/
ADD . /benchmark/
CMD ./run-all.sh
