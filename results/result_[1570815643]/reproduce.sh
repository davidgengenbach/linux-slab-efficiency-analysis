wipefs -a --force /dev/loop15
mkfs -t ext4 -q -F /dev/loop15
mkdir -p /fs/loop15
mount -t ext4 /dev/loop15 /fs/loop15
 "fs_mark" "-d" "/fs/loop15/1" "-d" "/fs/loop15/2" "-d" "/fs/loop15/3" "-d" "/fs/loop15/4" "-d" "/fs/loop15/5" "-d" "/fs/loop15/6" "-d" "/fs/loop15/7" "-d" "/fs/loop15/8" "-d" "/fs/loop15/9" "-d" "/fs/loop15/10" "-d" "/fs/loop15/11" "-d" "/fs/loop15/12" "-d" "/fs/loop15/13" "-d" "/fs/loop15/14" "-d" "/fs/loop15/15" "-d" "/fs/loop15/16" "-d" "/fs/loop15/17" "-d" "/fs/loop15/18" "-d" "/fs/loop15/19" "-d" "/fs/loop15/20" "-d" "/fs/loop15/21" "-d" "/fs/loop15/22" "-d" "/fs/loop15/23" "-d" "/fs/loop15/24" "-d" "/fs/loop15/25" "-d" "/fs/loop15/26" "-d" "/fs/loop15/27" "-d" "/fs/loop15/28" "-d" "/fs/loop15/29" "-d" "/fs/loop15/30" "-d" "/fs/loop15/31" "-d" "/fs/loop15/32" "-D" "16" "-N" "256" "-n" "3200" "-L" "1" "-S" "1" "-s" "9"
