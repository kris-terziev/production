#!/bin/bash

SCRIPT_DIR="$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
UPDATE=${SCRIPT_DIR}/data/update.zip

cd $WEB_DOCUMENT_ROOT
cd ..

cp $UPDATE update.zip
unzip -qqo update.zip

# fake cleanup file
# touch /app/$(head -n1 /app/update-assets/cleanup.txt)
