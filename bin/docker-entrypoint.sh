#!/bin/bash
set -e


yum --setopt=group_package_types=mandatory,default,optional group install "Development Tools" -y
yum update -y;yum install centos-release-scl -y; yum install rh-python36 -y;scl enable rh-python36 bash;
yum install -y wget; yum install -y curl ;yum install git -y;yum install java-11-openjdk-devel -y;yum install -y maven;yum install epel-release -y;yum install -y ansible
wget https://downloads.lightbend.com/scala/2.13.4/scala-2.13.4.rpm
rpm -ivh scala-2.13.4.rpm

curl https://bintray.com/sbt/rpm/rpm | tee /etc/yum.repos.d/bintray-sbt-rpm.repo
yum install sbt -y

curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"; unzip awscli-bundle.zip; ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
rm -rf scala-2.13.4.rpm awscli-bundle.zip

wget https://github.com/cli/cli/releases/download/v1.4.0/gh_1.4.0_linux_386.rpm;rpm -ivh gh_1.4.0_linux_386.rpm

rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch
yum install logstash -y

yum clean all

git --version
python --version

