# rtl-sdr on Docker
## サーバ側
- RTL-SDR.COM V3を挿入
- 本レポジトリをclone
- rtl-sdr.rulesをコピー
    `$ curl https://github.com/osmocom/rtl-sdr/blob/master/rtl-sdr.rules > conf-files/rtl-sdr.rules`
- blacklist-rtlsdr.conf をホスト側の /etc/modprobe.d/ へ  
    `sudo mv conf-files/blacklist-rtlsdr.conf /etc/modprobe.d/`
- rtl-sdr.rules をホスト側の /etc/udev/ へ  
    `sudo mv conf-files/rtl-sdr.rules /etc/udev/`
- コンテナ起動  
    `docker-compose up -d`

## ホスト側
SDR# で`サーバIP:1234`へアクセス 
