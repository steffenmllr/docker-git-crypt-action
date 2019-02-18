#!/bin/sh

cd $GITHUB_WORKSPACE
echo $GIT_CRYPT_KEY | base64 -d > /tmp/key.key
git-crypt unlock /tmp/key.key
