# quorum-deploy

## 1 安装依赖软件

- Node.js version 15 or later.
- Docker
- docker-compose

## 2 克隆quorum部署地址

```bash
git clone git@github.com:ott-creative/quorum-deploy.git
cd quorum-deploy
```

## 3 初始化基本参数

```bash
npx quorum-genesis-tool --consensus qbft --chainID 1337 --blockperiod 5 --requestTimeout 10 --epochLength 30000 --difficulty 1 --gasLimit '0xFFFFFFF' --coinbase '0x0000000000000000000000000000000000000000' --validators 4 --members 0 --bootnodes 0 --outputPath 'artifacts'
```

## 4 修改地址

在artifacts/2022-04-29-12-51-23/goQuorum/下的 permissioned-nodes.json和static-nodes.json，把host修改为docker-compose.yml中配置的ip。

```json
[
  "enode://f8e745e2f1298946384fe3bc470756fb9f946708fd8c1e66ec26f675f0a63063eb6a4d7e1687d6a77037b1b597c216d6285c2670b8f58d3937565b2053a615fd@172.16.239.10:30303?discport=0&raftport=53000",
  "enode://49149357364a94b67b34dbe97ea6f8b4aabeb88cdb3cca11d63f73c8e571ff98fc8b215bd52af69b0b31697d2d697e07b5166b01ca541f84b96e69d6cf71a1bd@172.16.239.11:30303?discport=0&raftport=53000",
  "enode://35c6a865df9d73da6fdf988390a00f82cfcec74f71bacbbe99a57dee6d2336ccd144bacf7b37017c3acceb3404cc88aed3c04f8ccb48e7a01bae4e062ed79e8d@172.16.239.12:30303?discport=0&raftport=53000",
  "enode://440821b9e498e3413e6cacc6326780857950e5fcddb3848b58845b09d97cfa846a64dff5bba993696ec6cd373ba117f5754544333a08c5c7a24555b80939db82@172.16.239.13:30303?discport=0&raftport=53000"
]
```

## 5 调整目录适配docker-compose

```bash
./init.sh
```

## 6 启动

```bash
docker-compose up --detach

# docker-compose stop 停服

```
