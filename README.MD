# DEPLOY FAST NGINX RTMP
Two application setup in install.sh

## Install
```
sudo apt update
sudo apt install -y unzip git
wget https://github.com/GautheyValentin/rtmp-fast-deploy/archive/master.zip
unzip master.zip
rm master.zip
cd rtmp-fast-deploy-master
chmod +x install.sh
sudo ./install.sh
```

## Usage


publish ```http://{ip}/server-one/{token}``` \
publish ```http://{ip}/server-two/{token}```

play ```rtmp://{ip}/server-one/{token}``` \
play ```rtmp://{ip}/server-two/{token}``` 