
# 修改为quorum-genesis-tool实际生成的路径
mv output/2022-08-31-16-12-16/* output

mkdir -p data/quorum/validator0/keys
mkdir -p data/quorum/validator1/keys
mkdir -p data/quorum/validator2/keys
mkdir -p data/quorum/validator3/keys

cp output/validator0/* data/quorum/validator0/keys
cp output/validator1/* data/quorum/validator1/keys
cp output/validator2/* data/quorum/validator2/keys
cp output/validator3/* data/quorum/validator3/keys

touch output/goQuorum/passwords.txt

cp output/goQuorum/* data/quorum/validator0
cp output/goQuorum/* data/quorum/validator1
cp output/goQuorum/* data/quorum/validator2
cp output/goQuorum/* data/quorum/validator3

mkdir -p logs/quorum
