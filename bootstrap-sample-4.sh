echo "************************************************************"
echo "**************** Begin of bootstrap Script *****************"
echo "************************************************************"
sudo apt-get update
sleep 2m
echo "=============>   ************ Install Java ************"
sudo apt-get install -y openjdk-8-jdk &
sleep 2m
echo "JAVA_HOME=/usr" | sudo tee -a /etc/environment
sleep 10
echo "=============>  ************ Install NodeJS and NPM ************"
curl -sL https://deb.nodesource.com/setup_8.x | sudo bash -
sleep 2m
sudo apt-get install -y nodejs
sleep 2m
sudo apt-get update
sleep 60
echo "=============>  ************ Install Zip and UnZip ************"
sudo apt-get install -y zip unzip
sleep 2m
echo "=============>  ************ Install Grails ************"
curl -s https://get.sdkman.io | bash
sleep 2m
source "/root/.sdkman/bin/sdkman-init.sh"
sleep 10
sdk install grails 
sleep 3m
echo "=============>  ************ Install and Start Mongo DB ************"
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
sleep 3m
sudo apt-get update
sleep 60
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sleep 30
sudo apt-get install -y mongodb-org
sleep 3m
sudo systemctl start mongod
sleep 30
sudo systemctl enable mongod
sleep 10
echo "************************************************************"
echo "***************** End of bootstrap Script ******************"
echo "************************************************************"
