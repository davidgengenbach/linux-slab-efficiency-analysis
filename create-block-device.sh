#!/usr/bin/env bash

FILE_PATH=${1:-BLOCK_DEVICE}
HOST=${2:-$(hostname)}
HOST_FILE="${3:-lkp-tests/hosts/${HOST}}"

create_file() {
	dd if=/dev/zero of=$FILE_PATH bs=1M count=8024
}

create_device() {
	sudo losetup -fP "$FILE_PATH"
}

get_device() {
	losetup | grep "$FILE_PATH" | cut -d " " -f1
}

if [ ! -f "$FILE_PATH" ]; then
	echo "Creating file"
fi


if [ ! -z "$(get_device)" ]
then
	sudo losetup -D "$(get_device)"
fi

create_device

REPLACEMENT=$(echo $(get_device) |  sed 's/\//\\\//g')

sed -i "s/hdd_partitions:.*/hdd_partitions: $REPLACEMENT/" $HOST_FILE

echo "Hostfile:"
cat $HOST_FILE

echo
echo "IMPORTANT: Do not forget to re-create the tests with the new host-config"
