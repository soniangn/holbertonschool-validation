apt-get update && apt-get install -y hugo make
wget https://github.com/gohugoio/hugo/releases/download/v0.111.3/hugo_0.111.3_linux-amd64.tar.gz
tar -xvf hugo_0.111.3_linux-amd64.tar.gz hugo
rm hugo_0.111.3_linux-amd64.tar.gz
mv hugo /usr/local/bin/

make build