
#!/bin/sh

umount_fs() {
	for mt in /nfs/* /fs/*; do
		mountpoint -q $mt && umount $mt
	done
}

umount_fs
