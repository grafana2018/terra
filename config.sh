sudo yum update -y
sudo yum install -y python-pip
sudo pip install --upgrade pip
sudo pip install boto3
sudo pip install requests

mkdir -p /tmp/AmazonCloudWatchAgent
cd /tmp/AmazonCloudWatchAgent
wget https://s3.amazonaws.com/amazoncloudwatch-agent/linux/amd64/latest/AmazonCloudWatchAgent.zip
unzip AmazonCloudWatchAgent.zip
sudo ./install.sh
