FROM debian:latest
RUN apt-get update && apt-get install -y --no-install-recommends python
WORKDIR /benchmark/
ADD . /benchmark/
CMD /bin/bash
