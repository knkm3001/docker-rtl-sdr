# rtl-sdr on Docker

## デプロイ
- blacklist-rtlsdr.conf をホスト側の /etc/modprobe.d/ へ  
    `sudo mv conf-files/blacklist-rtlsdr.conf /etc/modprobe.d/`
- rtl-sdr.rules をホスト側の /etc/udev/ へ  
    `sudo mv conf-files/rtl-sdr.rules /etc/udev/`
- コンテナ起動  
    `docker-compose up -d`

## ホスト側
SDR# でアクセス 