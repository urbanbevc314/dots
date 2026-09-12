if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting

abbr aptup 'sudo apt update && sudo apt upgrade'
abbr bye 'shutdown -h now'
abbr c clear
abbr cat 'bat -p'
abbr fzf 'fzf --preview="bat -p --color=always {}"'
abbr gco 'git checkout'
abbr gl 'git log --graph --oneline'
abbr gp 'git pull'
abbr gpo 'git pull origin'
abbr gs 'git status'
abbr inst 'sudo apt install'
abbr la 'ls -lah'
abbr ll 'ls -l'
abbr py python3

end
