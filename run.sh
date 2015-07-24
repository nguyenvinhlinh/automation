sudo yum install emacs -y;
mkdir ~/Software;
git clone git@github.com:retroj/conkeror.git ~/Software/Conkeror;
git clone git@github.com:ziahamza/webui-aria2.git ~/Software/webui-aria2;
mkdir ~/Projects;
git clone git@github.com:nguyenvinhlinh/.emacs.d.git ~/.emacs.d;
git clone git@github.com:nguyenvinhlinh/.conkerorrc.git ~/.conkerorrc;
git clone git@github.com:nguyenvinhlinh/nguyenvinhlinh.github.io.git ~/Projects/nguyenvinhlinh.github.io;
git clone -b intergrate-aria2c git@github.com:nguyenvinhlinh/conkeror.git ~/Software/Conkeror;
cd ~/Software/Conkeror;
git remote add origin-retroj git@github.com:retroj/conkeror.git;
cd ~;
# Install zsh and autojump
sudo yum install zsh -y;
sudo yum install autojump-zsh -y;
#Install oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
curl -o .zshrc https://raw.githubusercontent.com/nguyenvinhlinh/zshrc/master/.zshrc;
#Change default shell
chsh -s /usr/bin/zsh;
#Install Aria2c
sudo yum install aria2 -y;
