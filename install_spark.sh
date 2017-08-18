sudo apt-get update
sudo apt-get install default-jre default-jdk scala --assume-yes
mkdir ~/Downloads
mkdir ~/spark-dl
wget https://archive.apache.org/dist/spark/spark-1.4.1/spark-1.4.1-bin-hadoop2.4.tgz -P ~/Downloads  
tar zxvf ~/Downloads/spark-* -C ~/spark-dl
mv ~/spark-dl/spark-* ~/spark
chown -R ubuntu $SPARK_HOME 
cp ./spark-env.sh $SPARK_HOME/conf/spark-env.sh  

