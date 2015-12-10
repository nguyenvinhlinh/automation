passpharse_ssh=""
email_ssh=""
passpharse_current_user=""

### Install software
softwares=("git" "emacs" "zsh" "autojump-zsh" "aria2" "xclip" "expect");
for software  in "${softwares[@]}"
do
    echo "Installing "$software;
    sudo dnf install $software -y;
done

### Make directory
directories=("~/Software" "~/Projects")
for dir in "${directory[@]}"
do
    mkdir $dir;
done

### Generate ssh pub/private key
ssh-keygen -t rsa -b 4096 -C "${email_ssh}" -N "${passpharse_ssh}" -f ~/.ssh/rsa_key_file;

### Install git repositories
git clone https://github.com/ziahamza/webui-aria2.git ~/Software/webui-aria2;
git clone https://github.com/nguyenvinhlinh/.emacs.d.git ~/.emacs.d;
git clone https://github.com/nguyenvinhlinh/nguyenvinhlinh.github.io.git ~/Projects/nguyenvinhlinh.github.io;
git clone -b intergrate-aria2c https://github.com/nguyenvinhlinh/conkeror.git ~/Software/Conkeror;
git -C ~/Software/Conkeror remote add origin-retroj git@github.com:retroj/conkeror.git;
git clone https://github.com/nguyenvinhlinh/.conkerorrc.git ~/.conkerorrc;
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh;

### Fetch the zsh configuration file
curl -o .zshrc https://raw.githubusercontent.com/nguyenvinhlinh/zshrc/master/.zshrc;
### Change defaul shell from bash to zsh
expect change_shell.exp "$passpharse_current_user";
