# updating
sudo apt update -y
sudo apt upgrade -y


# install apt packages
sudo apt install neovim tmux neofetch git default-jre curl zsh libaa-bin -y 

# copy dot files
cp .zshrc $HOME
mkdir $HOME/.config/nvim -p
cp .config/nvim/init.vim $HOME/.config/nvim/init.vim

# make zsh the default
chsh -s /usr/bin/zsh


# install oh-my-zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git $HOME/.oh-my-zsh


# oh my zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions # auto suggestions

# theme
mkdir -p "$HOME/.zsh"
git clone https://github.com/reobin/typewritten.git "$HOME/.zsh/typewritten"

# install onefetch
sudo add-apt-repository ppa:o2sh/onefetch
sudo apt-get update
sudo apt-get install onefetch


# install btm (view cpu, ram, etc usage)
curl -LO https://github.com/ClementTsang/bottom/releases/download/0.6.6/bottom_0.6.6_amd64.deb
sudo dpkg -i bottom_0.6.6_amd64.deb
sudo rm bottom_0.6.6_amd64.deb

# docker
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update -y
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

sudo usermod -aG docker ${USER}
sudo chmod 666 /var/run/docker.sock

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# neovim plugin manager
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


# git config
git config --global user.email "casta.ma502@gmail.com"
git config --global user.name "Lucidreline"

exit
