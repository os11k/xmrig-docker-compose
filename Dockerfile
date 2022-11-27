FROM ubuntu:jammy

ARG DONATE_LEVEL=0

USER root

ENV TZ=Europe/Riga

RUN apt-get update && \
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
apt-get install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev && \
cd /usr/src/ && \
git clone https://github.com/xmrig/xmrig.git && \
cd /usr/src/xmrig && \
#git checkout $GIT_TAG && \
sed -i -r "s/k([[:alpha:]]*)DonateLevel = [[:digit:]]/k\1DonateLevel = ${DONATE_LEVEL}/g" src/donate.h && \
mkdir build && \
cd build && \
cmake .. && \
make -j$(nproc)

CMD ["/usr/src/xmrig/build/xmrig", "--max-cpu-usage=60", "--cpu-priority=5", "--coin=XMR", "--tls", "-o", "xmr.2miners.com:2222", "-u", "45SGrpAExC2VYUrwQJAQPSHiuQJTcKY3FX7QcrW3HQFi7essHCvNtNhhj82eRcwwYu9qgKcB3tBjxNaSGSQrETDn6jvK952", "-p", "x"]
