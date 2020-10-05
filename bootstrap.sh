#!/bin/bash
/bin/yum update -y
/bin/yum install -y python-pip httpd unzip
/bin/pip install awscli
/bin/aws s3api get-object --bucket cs4740-csl4wd-private --key bundle.zip bundle.zip
/bin/unzip bundle.zip -d /var/www/html
/bin/systemctl enable httpd
/bin/systemctl start httpd