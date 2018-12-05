# GPG verify
gpg --keyserver x-hkp://pool.sks-keyservers.net --recv-keys $ID
gpg --verify file.sign file
