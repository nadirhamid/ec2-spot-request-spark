apt-get update
apt-get install default-jre default-jdk scala --assume-yes
mkdir ~/Downloads
wget https://archive.apache.org/dist/spark/spark-1.4.1/spark-1.4.1.tgz -P ~/Downloads  
tar zxvf ~/Downloads/spark-* -C /usr/local  
mv /usr/local/spark-* /usr/local/spark  
SPARK_HOME="/usr/local/spark"
PATH=$PATH:$SPARK_HOME/bin
echo "export SPARK_HOME=/usr/local/spark\nexport PATH=$PATH:$SPARK_HOME/bin" >> ~/.profile
chown -R ubuntu $SPARK_HOME 
cp ./spark-env.sh $SPARK_HOME/conf/spark-env.sh  

