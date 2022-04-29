
# 修改为quorum-genesis-tool实际生成的路径
mv artifacts/2022-04-29-12-51-23/* artifacts

mkdir -p data/quorum/validator0/keys
mkdir -p data/quorum/validator1/keys
mkdir -p data/quorum/validator2/keys
mkdir -p data/quorum/validator3/keys

touch artifacts/goQuorum/passwords.txt

cp artifacts/goQuorum/* data/quorum/validator0
cp artifacts/goQuorum/* data/quorum/validator1
cp artifacts/goQuorum/* data/quorum/validator2
cp artifacts/goQuorum/* data/quorum/validator3

mkdir -p logs/quorum
