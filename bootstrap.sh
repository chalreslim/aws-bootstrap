#!/bin/bash

/usr/bin/yum update -y
/bin/amazon-linux-extras install -y epel
/usr/bin/yum install -y python-pip httpd unzip
/bin/pip3 install awscli
/bin/aws s3api get-object --bucket cs4740-csl4wd-private --key bundle.zip bundle.zip
/bin/unzip bundle.zip -d /etc/httpd/conf/httpd.conf
/etc/init.d/httpd start