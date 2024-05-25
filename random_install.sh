#!/bin/bash

# 生成随机密码（12个字符，包含大小写字母和数字）
PASSWORD=$(< /dev/urandom tr -dc A-Za-z0-9 | head -c24)

# 生成随机端口（1024到65535之间）
PORT=$((RANDOM%64512+1024))

# 下载并设置脚本
wget --no-check-certificate -qO InstallNET.sh 'https://raw.githubusercontent.com/leitbogioro/Tools/master/Linux_reinstall/InstallNET.sh' && chmod a+x InstallNET.sh

# 执行脚本并传入参数
bash InstallNET.sh -debian 12 -timezone "Asia/Hong_Kong" -port "$PORT" -pwd "$PASSWORD"

# 输出随机生成的密码和端口
echo "Generated Password: $PASSWORD"
echo "Generated Port: $PORT"
