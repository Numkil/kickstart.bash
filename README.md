DotFiles
=======

Content inside DotFiles:

* All bash scripts
* Starship configuration
* basic configuration for the lsd command
* wezterm settings

#Don't forget to

```
brew install wezterm
brew install bash
brew install bash_completion@2
brew install thefuck
brew install lsd
brew install ripgrep
brew install starship
brew install ddev
brew install colima
brew install neovim
brew install tldr
brew install bat
```

and change the default shell to the new bash binary

```
sudo vim /etc/shells
add "/opt/homebrew/bin/bash"
chsh -s opt/homebrew/bin/bash
```

after everything is installed run the following command

``` chmod +x install.sh && sh install.sh ```
