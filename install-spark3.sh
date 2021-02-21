# /bin/bash 

# This script has been  written for debian
# Install Spark 3.0.1 and Python3.7, OpenJdk-11, Scala
# Execute at home directory

# Update debian
sudo apt update
sudo apt-get upgrade -y
sudo apt install software-properties-common -y
sudo apt-get install vim curl tar -y
sudo apt-get install wget -y

# Install python 3.7 PIP - Jupyter Notebooks
sudo apt-get install python3-pip -y
pip3 install jupyter 

# Install openjdk-11 Theres is no openjdk-8 for debian
sudo apt-get install openjdk-11-jdk -y
# Install Scala
sudo apt-get -y install scala

# Download spark 2.4.7
curl -o spark-3.0.1-bin-hadoop2.7.tgz  https://downloads.apache.org/spark/spark-3.0.1/spark-3.0.1-bin-hadoop2.7.tgz

# Unpack
tar -xvf spark-3.0.1-bin-hadoop2.7.tgz

# rename directory
mv spark-3.0.1-bin-hadoop2.7 spark

# Install pyspark
sudo pip3 install pyspark

# Create env variables
echo '' >> ~/.bashrc
echo '' >> ~/.bashrc
echo '## Path de Javaexport' >> ~/.bashrc
echo 'export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"' >> ~/.bashrc
echo 'export PATH=$JAVA_HOME:$PATH' >> ~/.bashrc

echo '' >> ~/.bashrc
echo '' >> ~/.bashrc
echo '## Spark' >> ~/.bashrc
echo 'export SPARK_HOME="/home/$USER/spark"' >> ~/.bashrc
echo 'export PATH=$SPARK_HOME:$PATH' >> ~/.bashrc

echo '' >> ~/.bashrc
echo '' >> ~/.bashrc
echo '## Python para ser utilizable por Spark' >> ~/.bashrc
echo 'export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH' >> ~/.bashrc
echo 'export PYSPARK_PYTHON=python3.7' >> ~/.bashrc 
echo 'export PATH=/home/spark/python3/bin:$PATH' >> ~/.bashrc 

echo '' >> ~/.bashrc
echo '' >> ~/.bashrc
echo '## Jupyter Configuration' >> ~/.bashrc
echo 'export PYSPARK_DRIVER_PYTHON="jupyter"' >> ~/.bashrc
echo 'export PYSPARK_DRIVER_PYTHON_OPTS="notebook"' >> ~/.bashrc
