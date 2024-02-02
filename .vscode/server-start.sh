#!/bin/bash

# .env ファイルのパス
env_file="${PWD}/server-env.sh"

# .env ファイルが存在する場合のみ実行する
if [ -e "$env_file" ]; then
    source "$env_file"
    cd "$SERVER_JAR_DIR"
    RESOURCEPACK_HASH=$(curl -L https://github.com/ProjectTSB/TSB-ResourcePack/releases/download/dev/resources.zip | sha1sum | tr ' ' '\t' | cut -f1)
    sed -e "s/^resource-pack-sha1=.*$/resource-pack-sha1=$RESOURCEPACK_HASH/" -i ./server.properties
    echo "Resourcepack hash updated: $RESOURCEPACK_HASH"
    java $SERVER_ARGS -jar "$SERVER_JAR_NAME" nogui
fi


# .env ファイルが存在しない場合、生成する
if [ ! -e "$env_file" ]; then
    echo "# VSCode の task からサーバーを起動する際に利用する環境変数" > "$env_file"
    echo "SERVER_JAR_DIR=" >> "$env_file"
    echo "SERVER_JAR_NAME=server.jar" >> "$env_file"
    echo "SERVER_ARGS=\"-Xms2G -Xmx4G\"" >> "$env_file"
    echo ".env ファイルが存在しません。自動生成された値を編集の上再度実行してください。"
fi
