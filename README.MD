# DEPLOY FAST NGINX RTMP
Server RTMP to deploy on AWS EC2 T2.Micro (only support one stream 1080P60FPS 10K bitrate) \
SSL Not Include

## Install

Don't forget to open TCP 1935 in AWS Security Group
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


publish ```http://{ip}/live/{token}``` 

play ```rtmp://{ip}/live/{token}``` 
