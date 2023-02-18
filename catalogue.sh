source common.sh
R
curl -sL https://rpm.nodesource.com/setup_lts.x | bash
yum install nodejs -y
useradd roboshop
mkdir /app
rm -rf /app/*
curl -L -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip
cd /app
unzip /tmp/catalogue.zip
cd /app
npm install
cp configs/catalogue.service /etc/systemd/system/catalogue.service

systemctl daemon-reload
systemctl enable catalogue
systemctl start catalogue

cp configs/mongodb.repo /etc/yum.repos.d/mongodb.repo
yum install mongodb-org-shell -y

mongo --host mongodb.devopsb71.online </app/schema/catalogue.js
