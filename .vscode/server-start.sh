#!/bin/sh
set -eu
root=$PWD
while [ "$root" != / ] && [ ! -f "$root/scripts/server.sh" ]; do root=$(dirname "$root"); done
if [ -f "$root/scripts/server.sh" ]; then exec sh "$root/scripts/server.sh"; fi
env_file="$PWD/server-env.sh"
if [ -f "$env_file" ]; then
  . "$env_file"
  cd "$SERVER_JAR_DIR"
  RESOURCEPACK_HASH=$(curl -L "$RESOURCEPACK_URI" | sha1sum | tr ' ' '\t' | cut -f1)
  sed -e "s|^resource-pack=.*$|resource-pack=$RESOURCEPACK_URI|" -i ./server.properties
  sed -e "s/^resource-pack-sha1=.*$/resource-pack-sha1=$RESOURCEPACK_HASH/" -i ./server.properties
  echo "Resourcepack hash updated: $RESOURCEPACK_HASH"
  java $SERVER_ARGS -jar "$SERVER_JAR_NAME" nogui
  exit $?
fi
cat > "$env_file" <<'EOF'
# Edit these values, then run the task again.
SERVER_JAR_DIR=
SERVER_JAR_NAME=server.jar
SERVER_ARGS="-Xms2G -Xmx4G"
RESOURCEPACK_URI="https://github.com/ProjectTSB/TSB-ResourcePack/releases/download/dev/resources.zip"
EOF
echo "Created $env_file; edit it and run the task again." >&2
exit 1
