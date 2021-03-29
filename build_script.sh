sudo apt update -y -q;
clear;
echo "updating system with apt";
sleep 2;
clear;
sudo apt-get install build-essential patch ruby-dev zlib1g-dev liblzma-dev postgresql-client libpq5 libpq-dev libpcap0.8-dbg libpcap0.8-dev sqlite3 libsqlite3-dev -y -q;
sudo mkdir ~/scripts ;
sudo mkdir ~/projects ;
sudo apt install ruby -q -y;
clear;
echo "installing ruby";
sleep 2;
#sudo apt-get install nmap -y;
sudo mkdir ~/tools;
cd ~/tools; 
sudo git clone https://github.com/java-decompiler/jd-gui.git;
cd java-decompiler;
#./configure;
#sudo make &;
#sudo make install &;
echo 'alias d2j-dex2jar="sh ~/tools/dex2jar-2.0/d2j-dex2jar.sh" >> ~/.profile';
cd ~/tools;
sudo git clone https://github.com/pxb1988/dex2jar.git;
cd dex2jar;
#./configure ;
#sudo make &;
#sudo make install &;
cd ~/tools;
sudo git clone https://github.com/sqlmapproject/sqlmap.git;
clear;
echo "installing sqlmap";
sleep 2;
cd sqlmap;
#./configure &;
#sudo make &;
#sudo make install &;
cd ~/tools;
sudo git clone https://github.com/linkedin/qark.git;
cd linkedin;
#./configure;
#sudo make;
#sudo make install;
myvariable=$(whoami);
clear;
echo "installing qark";
sleep2;
echo 'alias qark="python ~/tools/qark/qark/qarkMain.py" >> ~/.profile';
sudo apt install adb -y -q ;
clear;
echo "installing adb";
sleep 2;
sudo wget https://dl.google.com/dl/android/studio/ide-zips/3.0.1.0/android-studio-ide-171.4443003-linux.zip --no-check-certificate;
sudo wget https://portswigger.net/burp/releases/download?product=community&version=1.7.30&type=jar --no-check-certificate;
cd ~/tools;
sudo wget https://nmap.org/dist/nmap-7.70.tar.bz2 --no-check-certificate;
sudo bzip2 -cd nmap-7.70.tar.bz2 | sudo tar xvf -;
cd nmap-7.70;
sudo ./configure;
sudo make;
sudo make install;
msfupdate;
cd /usr/share/wordlists/;
sudo gunzip rockyou.txt.gz;
cd ~;
clear;
echo "Downloading burp plugins!";
sleep 2;
cd ~/tools;
sudo mkdir burp-store;
cd burp-store;
sudo wget https://portswigger.net/bappstore/bapps/download/3123d5b5f25c4128894d97ea1acc4976;
sudo wget https://portswigger.net/bappstore/bapps/download/a019ad8b3cea46ac9032d279440f5372;
sudo wget https://portswigger.net/bappstore/bapps/download/1bf95d0be40c447b94981f5696b1a18e;
sudo wget https://portswigger.net/bappstore/bapps/download/c5071c7a7e004f72ae485e8a72911afc;
sudo wget https://portswigger.net/bappstore/bapps/download/33e4402eee514724b768c0342abadb8a;
sudo wget https://portswigger.net/bappstore/bapps/download/858352a27e6e4a6caa802e61fdeb7dd4;
sudo wget https://portswigger.net/bappstore/bapps/download/0ac13c45adff4e31a3ca8dc76dd6286c;
sudo wget https://portswigger.net/bappstore/bapps/download/8e8f6bb313db46ba9e0a7539d3726651;
sudo wget https://portswigger.net/bappstore/bapps/download/ae62baff8fa24150991bad5eaf6d4d38;
sudo wget https://portswigger.net/bappstore/bapps/download/594a49bb233748f2bc80a9eb18a2e08f;
sudo wget https://portswigger.net/bappstore/bapps/download/98275a25394a417c9480f58740c1d981;
clear;
cd ~/tools;
sudo mkdir burp;
cd burp;
sudo wget http://search.maven.org/remotecontent?filepath=org/python/jython-standalone/2.7.0/jython-standalone-2.7.0.jar;
cd ~;
clear;
echo "open burp and finish installing plugins";
sleep 1;
echo "INSTALLING Sn1per, Thanks 1n3 aka darn you Tooker";
sleep 2;
sudo git clone https://github.com/1N3/Sn1per.git;
cd Sn1per/;
sudo sh install.sh;
expect "[This script will install sniper under /usr/share/sniper. Are you sure you want to continue? (Hit Ctrl+C to exit)]" {send "\r\n"};
cd ~/tools;
sudo git clone https://github.com/1N3/IntruderPayloads.git;
cd IntruderPayloads/;
sudo ./install.sh;
cd ~/tools;
sudo apt install keepnote -q -y;
#wget https://github.com/Arachni/arachni/releases/download/v1.5.1/arachni-1.5.1-0.5.12-linux-x86_64.tar.gz;
#tar -zxvf arachni-1.5.1-0.5.12-linux-x86_64.tar.gz;
#cd arachni-1.5.1-0.5.12;
#sudo apt install arachni -y -q;
clear;
echo "Installing Responder";
sleep 1;
sudo git clone https://github.com/SpiderLabs/Responder.git;
echo "INSTALLING METASPLOIT";
sleep 2;
cd /opt;
sudo git clone https://github.com/rapid7/metasploit-framework.git;
cd metasploit-framework;
sudo gem install bundler;
bundle install;
clear;
echo "All tools have been installed, Thank you";
uname -a;
ls ~/tools;
sleep 1;
ls /opt;
alias oops='sudo $(history -p !!)';
clear;
echo ' I have taken the liberty of creating an alias';
echo 'for running previous command as sudo, as i have'; 
echo 'made that mistake too many times. the command is now "oops"';

