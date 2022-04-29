
mkdir -p data/quorum/validator0/keys
mkdir -p data/quorum/validator1/keys
mkdir -p data/quorum/validator2/keys
mkdir -p data/quorum/validator3/keys

touch artifacts/goQuorum/passwords.txt

cp artifacts/goQuorum/* data/quorum/validator0
cp artifacts/goQuorum/* data/quorum/validator1
cp artifacts/goQuorum/* data/quorum/validator2
cp artifacts/goQuorum/* data/quorum/validator3

cp artifacts/validator0/* data/quorum/validator0/keys
cp artifacts/validator1/* data/quorum/validator1/keys
cp artifacts/validator2/* data/quorum/validator2/keys
cp artifacts/validator3/* data/quorum/validator3/keys


mkdir -p logs/quorum
mkdir -p logs/quorum
mkdir -p logs/quorum
mkdir -p logs/quorum