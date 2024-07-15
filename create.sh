docker pull --platform='linux/amd64' mcr.microsoft.com/azure-sql-edge:1.0.7
docker tag mcr.microsoft.com/azure-sql-edge:1.0.7 uesleilima/azure-sql-edge:1.0.7-amd64
docker push uesleilima/azure-sql-edge:1.0.7-amd64

docker build --platform='linux/arm64' . -t uesleilima/azure-sql-edge:1.0.7-arm64
docker push uesleilima/azure-sql-edge:1.0.7-arm64

docker manifest create uesleilima/azure-sql-edge:1.0.7 \
  --amend uesleilima/azure-sql-edge:1.0.7-amd64 \
  --amend uesleilima/azure-sql-edge:1.0.7-arm64
docker manifest push uesleilima/azure-sql-edge:1.0.7

docker manifest create uesleilima/azure-sql-edge:latest \
  --amend uesleilima/azure-sql-edge:1.0.7-amd64 \
  --amend uesleilima/azure-sql-edge:1.0.7-arm64
docker manifest push uesleilima/azure-sql-edge:latest