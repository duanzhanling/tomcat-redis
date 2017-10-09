#!/bin/bash
#env=$1
#password=$2

if [ -z "$en" ] ; then
    echo "Error：未设置环境参数！"
else
  if [ "$en" == "online" ] ; then
        openssl enc -aes-256-cbc -d -in /usr/src/autoconfig/${en}.properties_en > /usr/src/autoconfig/${en}.properties -pass pass:$password
        if [ $? -eq 0 ] ; then
          eval "autoconfig -I -c utf-8 /usr/local/tomcat/webapps/*.war -u /usr/src/autoconfig/${en}.properties"
#          rm -fr /usr/src/autoconfig/${env}.properties
        else
              echo "请输入正确的解密密码"
        fi
  else
     eval "autoconfig -I -c utf-8 /usr/local/tomcat/webapps/*.war -u /usr/src/autoconfig/${en}.properties"
  fi
fi
#exit 0
