yum update -y

yum install -y vim
yum install -y wget
yum install -y tig
yum install -y make
yum install -y patch

# rbenv
git clone https://github.com/sstephenson/rbenv.git /usr/local/rbenv
git clone https://github.com/sstephenson/ruby-build.git /usr/local/rbenv/plugins/ruby-build
echo 'export RBENV_ROOT="/usr/local/rbenv"' >> ~/.bash_profile
echo 'PATH=$PATH:$RBENV_ROOT/bin' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile
