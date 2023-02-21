source common.sh

roboshop_app_password=$1
if [ -z "${roboshop_app_password}" ]; then
  echo -e "\e[31mMissing RabbitMQ App User Password argument\e[0m"
  exit 1
fi

component=payment
python
