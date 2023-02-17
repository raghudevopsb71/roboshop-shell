cp configs/mongodb.repo /etc/yum.repos.d/mongo.repo
yum install mongodb-org -y
systemctl enable mongod
systemctl start mongod

# Update /etc/mongod.conf file from 127.0.0.1 with 0.0.0.0
