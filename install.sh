#!/bin/bash

if [ $UID  -eq  0 ] 
then 

    apt-get update
    apt-get install shc
    apt-get install jq
    apt-get install curl
    apt-get install unzip
    apt-get install tar
    apt-get install git
    apt-get install python3-pip
    #Install GO 1.19.1
    wget  https://go.dev/dl/go1.19.1.linux-amd64.tar.gz 
    sudo tar -xvf go1.19.1.linux-amd64.tar.gz 
    sudo cp -r go /usr/local
    cp go/bin/go /usr/bin 
    export PATH=$PATH:/usr/local/go/bin
    rm -rf go && rm -rf go1.19.1.linux-amd64.tar.gz
    #Install Subfinder
    git clone https://github.com/projectdiscovery/subfinder.git
    cd subfinder/v2/cmd/subfinder/ && go build . && mv subfinder /usr/bin && cd ../../../../ && rm -rf subfinder 
    #Install amass
    git clone https://github.com/owasp-amass/amass.git
    cd amass/cmd/amass/ && go build . && mv amass /usr/bin && cd ../../../ && rm -rf amass
    #Install findomain
    curl -LO https://github.com/findomain/findomain/releases/latest/download/findomain-linux-i386.zip
    unzip findomain-linux-i386.zip
    chmod +x findomain
    sudo mv findomain /usr/bin/findomain
    rm -rf findomain-linux-i386.zip
    findomain --help
    #Install httpx
    git clone https://github.com/projectdiscovery/httpx.git
    cd httpx/cmd/httpx/ && go build . && mv httpx /usr/bin && cd ../../../ && rm -rf httpx  
    #Install nuclei
    git clone https://github.com/projectdiscovery/nuclei.git
    cd nuclei/v2/cmd/nuclei/ && go build . && mv nuclei /usr/bin && cd ../../../../ && rm -rf nuclei && nuclei
    #Install waybackurls
    git clone https://github.com/tomnomnom/waybackurls.git
    cd waybackurls && go build . && mv waybackurls /usr/bin && cd .. && rm -rf waybackurls
    #Katana
    chmod +x katana
    cp katana /usr/bin
    #SecretFinder
    git clone https://github.com/m4ll0k/SecretFinder.git secretfinder
    cd secretfinder
    python -m pip install -r requirements.txt
    python3 SecretFinder.py
    #Install subzy
    git clone https://github.com/LukaSikic/subzy.git
    cd subzy && go build . && mv subzy /usr/bin && cd .. && rm -rf subzy
    #Install ffuf
    git clone https://github.com/ffuf/ffuf.git
    cd ffuf && go build . && mv ffuf /usr/bin && cd .. && rm -rf ffuf
    #Install gf
    git clone https://github.com/tomnomnom/gf.git
    cd gf
    sleep 1
    cp gf-completion.zsh /usr/local/go/src/ 
    sleep 1
    cd .. 
    git clone https://github.com/1ndianl33t/Gf-Patterns.git
    go install github.com/tomnomnom/gf@latest
    cp /root/go/bin/gf /usr/local/go/bin/
    echo source $GOROOT/src/gf-completion.zsh >> ~/.zshrc 
    cd gf/ 
    cp -r examples ~/.gf
    cd ..
    cd Gf-Patterns/
    cp *.json ~/.gf
    cd ..
    rm -rf gf Gf-Patterns
    mv gf-temp gf
    mv gf /usr/bin
    gf -list
    #For crt.sh
    sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
    sudo apt-get update
    #Install postgresql
    sudo apt-get -y install postgresql

else 
    echo "You are not root!"
fi










