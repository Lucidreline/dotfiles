sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt upgrade -y

# install apt packages
sudo apt install neovim tmux neofetch git default-jre curl nodejs npm


# install btm (view cpu, ram, etc usage)
curl -LO https://github.com/ClementTsang/bottom/releases/download/0.6.6/bottom_0.6.6_amd64.deb
sudo dpkg -i bottom_0.6.6_amd64.deb


# copy dot files
cat .config/fish/config.fish > ../.config/fish/config.fish
cat .config/nvim/init.vim > ../.config/nvim/init.vim

# install docker
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch='(dpkg --print-architecture)' signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  '(lsb_release -cs)' stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io


# git config
git config --global user.email "casta.ma502@gmail.com"
git config --global user.name "Lucidreline"


# install fisher (package manager)
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher


# isntall fisher packages
fisher install IlanCosman/tide@v5 # fish theme
