# To set up your dev environment:

1. create a github account

2. Set up an Ubuntu 16.04 virtual machine

## 3. Installing Ruby

### Install some Ruby dependencies
```
sudo apt-get update

sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev nodejs
```

### Build Ruby from source
```
cd

wget http://ftp.ruby-lang.org/pub/ruby/2.4/ruby-2.4.1.tar.gz

tar -xzvf ruby-2.4.1.tar.gz

cd ruby-2.4.1/

./configure

make

sudo make install
```

### install Bundler
```
gem install bundler

```

## 4. Configure Git
Replace your username and email, but keep the quotes
```
git config --global color.ui true

git config --global user.name "YOUR NAME"

git config --global user.email "YOUR@EMAIL.com"

ssh-keygen -t rsa -b 4096 -C "YOUR@EMAIL.com"
```

Run the following command:
```
cat ~/.ssh/id_rsa.pub
```
and paste the output [here](https://github.com/settings/keys).

## 5. Install Rails
```
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

sudo apt-get install -y nodejs

gem install rails -v 5.1.3
```
