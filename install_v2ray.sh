#! /bin/bash
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
yum makecache fast
yum -y install docker-ce
systemctl enable docker
systemctl start docker

docker pull v2ray/official:latest

docker run -d --name v2ray -p 443:443 -v /root/v2ray/config.json:/etc/v2ray/config.json v2ray/official
