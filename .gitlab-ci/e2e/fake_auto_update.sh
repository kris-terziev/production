#!/bin/bash

SCRIPT_DIR="$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
UPDATE=${SCRIPT_DIR}/data/update.zip

cd ${WEB_DOCUMENT_ROOT}
cd ..

mkdir -p files/update/files
cd files/update/files
cp ${UPDATE} update.zip
unzip -qqo update.zip
rm update.zip

TAG=${TAG:-'6.2.0'}

cd ..
mv files/update-assets .
echo '{"clientIp":"172.20.0.1","version":"'${TAG}'","locale":"de"}' > update.json

cd ${WEB_DOCUMENT_ROOT}
cd ..
