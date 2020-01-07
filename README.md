# v2ray
目前自动安装脚本支持所有主流系统，只需一行命令即可完成安装过程，当你想要更新V2Ray的时候同样只需要运行下面一行命令即可。

`bash <(curl -L -s https://install.direct/go.sh)`
运行以上命令需要 root 权限，所以请切换到 root 账户下运行。该脚本会自动安装unzip和deamon，并自动安装以下两个文件：

/usr/bin/v2ray/v2ray：V2Ray 程序；
/etc/v2ray/config.json：配置文件；

脚本安装完成无误后，可以进行如下操作：

编辑 `vim /etc/v2ray/config.json` 文件来配置你需要的代理方式；

运行 `systemctl start v2ray` 来启动 V2Ray 进程；

之后可以使用 `systemctl start|stop|status|restart v2ray` 控制 V2Ray 的运行。

以上命令均需要 root 权限。对于第一步编辑配置文件，可以偷懒不进行改动，不过最好改动一下端口以及 ID，改动 ID 是为了安全不被盗用，改动端口为三位数或更少，对速度有所改善（**最好改为80、443端口**），这是一种玄学, 80端口从来没有被封过 ) 。
