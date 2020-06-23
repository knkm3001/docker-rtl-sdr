# rtl-tcp on Docker

## デプロイ
conf-files の中の blacklist-rtlsdr.conf をホスト側の /etc/modprobe.d/ へ
conf-files の中の rtl-sdr.rules をホスト側の /etc/udev/ へ

`docker-compose up -d`

## ホスト側
SDR# でアクセス 