xmrig-docker-compose
============

Credits:
https://github.com/khell/xmrig-docker

Docker-compose files for the `xmrig` Monero CPU miner. `xmrig` is built directly from master branch on its public Github repository with all defaults, except devfee which will now default to 0%.

### Usage
Please update Dockerfile and change your pool address and wallet address, maybe it is good for you to change cpu usage from 100% in case if you have anything else on your server.

```
apt-get update && apt-get upgrade -y && apt-get install docker-compose -y
mkdir /docker && cd /docker
git clone https://github.com/os11k/xmrig-docker-compose.git
cd ./xmrig-docker-compose/
docker-compose up -d --build
```

### Host server configuration for better hashrate
You need to load msr module:

```
modprobe msr allow_writes=on
```

If it doesn't help, check this manual:
https://xmrig.com/docs/miner/randomx-optimization-guide/msr

### Donations
If this image helped you mine Monero, please feel free to send a donation my way!

* XMR: `47awNeyfVMgBxARBh19jSFCPTDxuFbVdyD9evJgr69b1TCVAcXEAzvNdjjPZ8ErEegBWysdoducfvH7W5DUEBbMBQuCXnQT`
* BTC: `3HsqyC1434CPoffZv9ygptHAyKCFijYefR`
* ETH: `0x8c067F138684cebF7e39BF6F1D113C273D14Eff6`
* ADA: `addr1q8a8j3v0aqqxhvkprrkp858qyrmzw63ke0ykpmqwnfpp0rfpxs6qm3uphaf0xnjq55u8kqgflaz02322298r2nukpkps8xmm85`
