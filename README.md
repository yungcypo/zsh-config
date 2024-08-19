# ZSH configuration
My configuration for [ZSH](https://en.wikipedia.org/wiki/Z_shell)  

This configuration is mainly for Linux  
Most of this will work the same on Mac, but I'm not sure about Windows  

## Features
- Custom shell with `p10k`, `ohmyposh` or `starship` prompt
- Syntax Highlighting
- Autosuggestion
- Better history configuration
- Better key shortcuts
- Case insensivity
- `ll` command - alias to `ls -lv --color` with `YYYY-MM-DD` time format
- fzf

## Requirements
To install any of these packages, you need to run command `sudo apt install <package-name>` or `sudo pacman -S <package-name>` (depending on your operating system and package manager)  
> Note: Make sure to replace `<package-name>` with the actual name of the package  

Required packages  
- `zsh`
- `git`
- `wget` or `curl`
- `unzip`
- `fzf`

You need to have installed Nerd font and set as default for your terminal application  

Optional, but recommended - Custom prompt  
- Prompt doesn't change the way how the terminal works, only how it looks  
- You can definitely use the default prompt, but I always use one of custom prompts (`p10k`, `ohmyposh` or `starship`) 
- To install one of these, see [Prompt section](#Prompt%20installation)

## Installation
1. Make sure you have all the [requirements](#Requirements)  
2. Set ZSH as your default shell  
    - `chsh <username>`
    - Enter your password
    - Enter the locatioin of ZSH (usually `/bin/zsh`)
3. Clone this repository  
    - `git clone https://github.com/yungcypo/zsh-config.git ~/.zsh-config`
4. Move to cloned repository
    - `cd ~/.zsh-config/`
5. Change permissions to run `use.sh`  
    - `chmod u+x use.sh`
6. Run `use.sh`
    - Use this command to run it: `./use.sh`
    - Follow instructions
    - You will be asked, which prompt you want to use (`p10k`, `ohmyposh` or `starship`)  
    - Simply enter the number and let the script do it's job  
    - This will take longer, if you are running it for the first time  
    - If you already have any configuration for `zsh`, it will be placed in `backups` folder *(`~/.zsh-config/backups/`)*
7. Restart your terminal to apply chages

> Note: Files and folders starting with `.`, such as `.zshrc` or `.zsh-config/` are hidden in Linux. You can see them with command `ls -a` (or `ll -a` with this configuration)

## Possible future updates
There might be some improvements in this configuration  
Simply follow these commands  
- `git remote update`
- `git pull`
- `./use.sh`

### Prompt installation
Before using one of custom prompts, you need to install it  
The installation process varies from prompt to prompt  

#### `p10k`
This one installs automatically  
If you want to change the theme, run this command: `p10k reconfigure`

#### `ohmyposh`
Run this command: `curl -s https://ohmyposh.dev/install.sh | bash -s`  

If you want to change the theme, you have to edit `~/.zshrc` file  
Look for line that says `eval "$(oh-my-posh init zsh)"` and replace it with following:  
`eval "$(oh-my-posh init zsh --config /path/to/theme/name.omp.json)"`
- Make sure to replace `/path/to/theme/name.omp.json` with actual path to theme  
- You can view themes on [ohmyposh website](https://ohmyposh.dev/docs/themes)  
- I put some themes here, in `ohmyposh-themes` folder
    - You can easily use them: `eval "$(oh-my-posh init zsh --config ~/.zsh-config/ohmyposh-themes/stelbent-compact.minimal.omp.json)"` for example  

If you are lost, follow instructions on [ohmyposh website](https://ohmyposh.dev/docs/installation/customize)

#### `starship`
`curl -sS https://starship.rs/install.sh | sh`  
If you are using `pacman` as your package manager, you can use this command instead: `sudo pacman -S starship`

If you want to change the theme, you have to edit `~/.zshrc` file  
Choose one of [presets](https://starship.rs/presets/#nerd-font-symbols) and add corresponding line somewhere in `.zshrc` file
- For example `starship preset gruvbox-rainbow -o ~/.config/starship.toml`
- Preferably add this line right bellow `eval "$(starship init zsh)"`  

If you are lost, follow instructions on [Starship website](https://starship.rs/)


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
