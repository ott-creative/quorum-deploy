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

## 3 修改地址

在artifacts/2022-04-29-12-51-23/goQuorum/下的disallowed-nodes.json和static-nodes.json，把host修改为docker-compose.yml中配置的ip。

```json
[
  "enode://1647ade9de728630faff2a69d81b2071eac873d776bfdf012b1b9e7e9ae1ea56328e79e34b24b496722412f4348b9aecaf2fd203fa56772a1a5dcdaa4a550147@127.0.0.1:30300?discport=0&raftport=53000",
  "enode://0e6f7fff39188535b6084fa57fe0277d022a4beb988924bbb58087a43dd24f5feb78ca9d1cd880e26dd5162b8d331eeffee777386a4ab181528b3817fa39652c@127.0.0.1:30301?discport=0&raftport=53001",
  "enode://d40a766cb6fe75f052fe21f61bc84ca3851abb6f999d73f97dd76e14fc2dea175d4cf554ccbcc2c7c639a0901932775b523554cb73facdfab08def975208f8e6@127.0.0.1:30302?discport=0&raftport=53002",
  "enode://80a98f66d243c6604cda0e1c722eed3d9e080591c81710eec70794e0909e58661f4863e29a7a63bf7fb9387afc8609df37bacbf3d5c523d97bf598c3470840f5@127.0.0.1:30303?discport=0&raftport=53003",
  "enode://7fa183662285993efaf7a59e303ec5543bbcd09cb2883e7611d9576ed90f3bcf0400b70af11c5266e5110eebe8afd4e817437bde574d686f440df1ec85822add@127.0.0.1:30304?discport=0&raftport=53004"
]
```

## 4 初始化基本参数

```bash
npx quorum-genesis-tool --consensus qbft --chainID 1337 --blockperiod 5 --requestTimeout 10 --epochLength 30000 --difficulty 1 --gasLimit '0xFFFFFFF' --coinbase '0x0000000000000000000000000000000000000000' --validators 4 --members 0 --bootnodes 0 --outputPath 'artifacts'
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
