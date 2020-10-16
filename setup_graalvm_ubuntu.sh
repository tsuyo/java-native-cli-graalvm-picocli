sudo apt-get update
sudo apt-get install gcc zlib1g-dev build-essential unzip
wget https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-18.2.0/graalvm-ce-java11-linux-amd64-20.2.0.tar.gz
tar zxf graalvm-ce-java11-linux-amd64-20.2.0.tar.gz
sudo mv graalvm-ce-java11-20.2.0 /usr/lib/jvm
echo 'export PATH=/usr/lib/jvm/graalvm-ce-java11-20.2.0/bin:$PATH' >> ~/.bashrc
echo 'export JAVA_HOME=/usr/lib/jvm/graalvm-ce-java11-20.2.0' >> ~/.bashrc
source ~/.bashrc
gu install native-image
