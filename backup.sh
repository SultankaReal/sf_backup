#!/bin/bash

#./backup.sh <name_of_the_folder_to_make_archive>
tar -cvpzf backup.tar.gz $1
#upload archive
curl -T $1 https://webdav.yandex.ru/backup.tar.gz --user <login>:<password>
