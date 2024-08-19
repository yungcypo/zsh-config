#!/bin/bash

echo "Make sure you have your prompt installed before proceeding"

function make_file {
    if [ -f .zshrc ]; then rm .zshrc; fi

    cat ./base-first > .zshrc

    case "$1" in
        1) 
            cat ./prompts/p10k >> .zshrc
            ;;
        2) 
            cat ./prompts/ohmyposh >> .zshrc
            ;;
        3)
            cat ./prompts/starship >> .zshrc
            ;;
        *) 
            echo "Unexpected error occurred"
            exit 1
    esac
    
    cat ./base-last >> .zshrc
    
    if [ -f ~/.zshrc ]; then
        mkdir -p backups
        nocb=$(ls -a backups | wc -l)  # number of current backups
        mv ~/.zshrc ./backups/.zshrc.bak"$((nocb - 1))"
        mv .zshrc ~/.zshrc
    fi

    echo "Finished!"
    echo "Restart your terminal to see changes"

    return 0
}

case "$1" in
    "p10k") 
        make_file 1;;
    "ohmyposh" | "oh-my-posh") 
        make_file 2;;
    "starship")
        make_file 3;;
    *)
        echo "Which Prompt do you want to use?"
        PS3="Your choice: "
        select prompt in "p10k" "oh-my-posh" "starship"

        do
            case $prompt in
                "1" | "p10k")
                    make_file 1
                    break;;
                "2" | "oh-my-posh" | "ohmyposh")
                    make_file 2
                    break;;
                "3" | "starship")
                    make_file 3
                    break;;
                *)
                    echo "Unexpected input"
            esac
        done
        ;;
esac

