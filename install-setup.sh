#!/bin/bash

install_deps() {
  sudo apt update; sudo apt upgrade -y
  sudo apt install git terminator python3-venv wget
  pip3 install venv
  
  clear
}


install_neovim () {
  # Install neovim
  echo "Grab latest neovim app image from here https://github.com/neovim/neovim/releases"
  read -p "Enter neovim appimage url: " neovim_url

  wget $neovim_url -o /tmp/nvim

  sudo mv /tmp/nvim /usr/bin/nvim 
  sudo chmod +x /usr/bin/nvim 

  # Install nvchad
  git clone https://github.com/NvChad/starter ~/.config/nvim

  rm -rf ~/.config/nvim/.git/

  echo "Run ':MasonInstallAll' when setup complted"
}


install_node () {
  echo "Grab latest node https://nodejs.org/en/download/prebuilt-binaries"
  read -p "Enter node url: " node_url
  
  wget $node_url -O /tmp/$(basename $node_url)

  tar xaf /tmp/$(basename $node_url) --one-top-level=/tmp/node

  sudo mv /tmp/node/*/ /opt/node

  echo "export PATH=\$PATH:/opt/node/bin" >> ~/.bashrc

  rm -rf /tmp/node*
}


install_custom_configs () {
  git clone https://github.com/bl4ckb3ard/dotfiles.git /tmp/dotfiles

  cp -rf /tmp/dotfiles/terminator/ ~/.config/terminator
  cp /tmp/dotfiles/.bash_aliases ~/.bash_aliases
  cat << EOF >> /tmp/test
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
EOF
  
  cp -rf /tmp/dotfiles/new-nvim ~/.config/nvim

}


main () {
  install_deps
  install_neovim
  install_node
  install_custom_configs
}

main
