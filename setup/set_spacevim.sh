rpm -Uvh http://mirror.ghettoforge.org/distributions/gf/gf-release-latest.gf.el7.noarch.rpm
rpm --import http://mirror.ghettoforge.org/distributions/gf/RPM-GPG-KEY-gf.el7

yum -y remove vim-minimal vim-common vim-enhanced
yum -y --enablerepo=gf-plus install vim-enhanced sudo

curl -sLf https://spacevim.org/install.sh | bash
