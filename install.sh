#!/bin/bash
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py --user
rm -rf get-pip.py
pip install cfn-lint --user
sudo yum install gcc -y
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.6.4
mkdir -p ~/.local/bin/
cp run.sh ~/.local/bin/cfn-push
chmod +x ~/.local/bin/cfn-push
