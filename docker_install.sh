#/bin/bash

#安装docker相关依赖
yum install yum-utils device-mapper-persistent-data lvm2 -y

#使用阿里云docker源
yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo

#开启稳定版开关，默认关闭
yum-config-manager --enable docker-ce-edge

#安装前重新清理yum缓存，使得新配置生效
yum makecache fast

#安装docker-ce和docker-compose
yum install docker-ce.x86_64 3:19.03.5-3.el7 -y
yum install docker-compose-1.18.0-4.el7.noarch -y
