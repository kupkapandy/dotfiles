# It's more of a guide and not install script

sudo pacman -S zsh tmux dunst nvim picom zathura zathura-pdf-poppler kitty \
  xorg-xinit xorg-xrandr xorg-server libx11 libxft libxinerama \
  clang base-devel unzip dmenu feh fastfetch terminus-font \
  pipewire pipewire-alsa pipewire-pulse wireplumber \
  texlive-latex texlive-latexrecommended texlive-latexextra \
  texlive-fontsrecommended texlive-binextra texlive-mathscience \
  texlive-langpolish nvidia xf86-video-intel \
  xorg-xset xorg-xsetroot xorg-xkbcomp xorg-xinput \
  xorg-setxkbmap xorg-xauth curl \
  linux-firmware linux-headers intel-ucode --needed

mv .config .scripts .xinitrc .zshrc .git ~/.

curl -L -o CascadiaMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/CascadiaMono.zip
sudo mkdir /usr/share/fonts/nerd/
sudo mv *.ttf /usr/share/fonts/nerd/
fc-cache -f -v

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

tmux source ~/.config/tmux/tmux.conf
source ~/.zshrc

git clone https://aur.archlinux.org/yay
cd yay
makepkg -si
cd ..
