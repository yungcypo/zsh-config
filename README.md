# ZSH configuration
My configuration for [ZSH](https://en.wikipedia.org/wiki/Z_shell)  

## Features
- Custom shell with `p10k` or `ohmyposh`
- Syntax Highlighting
- Autosuggestion
- Better history configuration
- Better key shortcuts
- Case insensivity
- `ll` command - alias to `ls -l --color`
- fzf

## Installation
1. Make sure you have ZSH installed 
    - `sudo apt install zsh` or `pacman -S zsh` or whatever suits your operating system
2. Set ZSH as your default shell
    - `chsh <username>`
    - Enter your password
    - Enter the locatioin of ZSH (usually `/bin/zsh`)
3. Clone this repository
    - `git clone https://github.com/yungcypo/zsh-config.git`
4. Backup already existing configuration *(optional)*
    - If you already have any configuration, you can make a backup so you don't lose it  
    - `mv ~/.zshrc ~/.zshrc.bak`  
5. Choose one file from this repository and use it as current ZSH configuration
    - You can see two files in this repository - `zshrc-p10k` and `zshrc-ohmyposh`
    - You can choose which one you want and use it with following command
        - `cp ./zshrc-ohmyposh ~/.zshrc` *(or `cp ./zshrc-p10k ~/.zshrc` respectively)*
    - You can make a link instead of copying the file
        - `ln ./zshrc-ohmyposh ~/.zshrc` *(or `ln ./zshrc-p10k ~/.zshrc` respectively)*
        - This has advantage of possible future updates
        - You can just pull from repository and the configuration will be updated automatically
6. Restart your console application to apply chages

> Note: It you are using `p10k` version, you need to configure it with command `p10k configure`  
> Note: Files starting with `.`, such as `.zshrc` are hidden in Linux. You can see them with command `ls -a` (or `ll -a` with this configuration)

### fzf
You can use `fzf` to work in console easier  
`fzf` allows you to find files mid-command for example  

First of all, you need to install it with `pacman -S fzf` or `sudo apt install fzf` or whatever suits your operating system  

When you start typing `cd` and then you hit `<ctrl + t>`, it will open up `fzf` and you can search through files  

Another similar feature is when you start typing command, for example `cd`  
Now you add space with two stars (` **`) at the end, like this `cd **`  
Now, when you press `<tab>`, it will show available options  
The advantage of this method comes with commands like `ssh` or `kill`, where it will suggest IP addresses or Processes respectively  

When you are in `fzf`, you can press `<tab>` to select more options, or `<shift + tab>` to deselect them  

You can also work with enviroments variables (`unset **<tab>`, `export **<tab>`) and aliases (`unalias **<tab>`)

You can hit `<ctrl + r>` to look through history  
