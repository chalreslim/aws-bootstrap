#!/bin/bash

sudo /usr/bin/yum update -y
sudo /bin/amazon-linux-extras install -y epel
/usr/bin/yum install -y python-pip httpd unzip
sudo /bin/pip install awscli
/bin/aws s3api get-object --bucket cs4740-csl4wd-private --key bundle.zip bundle.zip
/bin/unzip bundle.zip -d /etc/httpd/conf/httpd.conf
/etc/init.d/httpd start
/sbin/reboot