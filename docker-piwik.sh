https://github.com/piwik/docker-piwik（语法过时）
https://hub.docker.com/r/_/piwik/
piwik是一款通用的网站统计工具，强大的统计能力，适合二次开发使用。

先创建关联数据库
docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=123456 -d mysql

直接使用官方piwik镜像创建容器，并关联数据库
docker run -p 80:80 --name some-piwik --link some-mysql:db -d piwik

访问并配置piwik

效果如下
