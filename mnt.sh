#!/bin/sh
mkdir archive
mkdir data
mkdir work_archive

mount_smbfs //username:pass@estes/archive      /Volumes/archive
mount_smbfs //username:pass@estes/data         /Volumes/data
mount_smbfs //username:pass@estes/work_archive /Volumes/work_archive
