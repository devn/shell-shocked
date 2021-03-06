# git
alias g='git'
alias gadd='git add .'
alias gap='git add -p'
alias gbr='git br'
alias gci='git ci -am'
alias gcl='git clone'
alias gco='git co'
alias gdel='git add -u'
alias gdf='git diff -a -w'
alias gfull='git status; git add .; git add -u; git status; git ci -am'
alias glog='git log'
alias gme='git me'
alias gmv='git mv'
alias gpull='git pull'
alias gpush='git push'
alias grm='git rm'
alias gst='git status'
alias glul='git log --oneline --graph --simplify-by-decoration'
alias glol='git log --oneline --graph'

alias be='bundle exec'

# music
alias ncmpc='ncmpc --colors --mouse'
alias tunes='ncmpc --colors --mouse'

# system
alias l='ls -aFG'
alias ls='ls -GFh'
alias ll='ls -GFhl'
alias la='ls -Ga'

alias please='sudo'
alias c='clear'

alias flush-dns='sudo dscacheutil -flushcache'
alias flush-arp='sudo arp -a -d'

alias psack='ps aux | ack'
alias psgrep='ps aux | grep'

# ruby
alias ri='ri -Tf ansi'
alias rdoc='rdoc --ri --line-numbers --all'
alias cr='rake'

# rubygems
alias audit='gem list'
alias buy='gem install'
alias gemedit='gem edit -e emacs'
alias polish='gem update'
alias price='gem list -r'
alias sell='gem uninstall'
alias shop='gem search -r'
alias surplus='gem list | ack ","'

# editors
# alias ee='$HOME/bin/emacsclient -c -n'
# alias e='$HOME/bin/emacsclient -c'
alias ee='/usr/local/Cellar/emacs/HEAD/Emacs.app/Contents/MacOS/bin/emacsclient -c -n'
alias e='/usr/local/Cellar/emacs/HEAD/Emacs.app/Contents/MacOS/bin/emacsclient -c'
alias evisor='/usr/local/Cellar/emacs/HEAD/Emacs.app/Contents/MacOS/Emacs -nw -q'
alias emacs-terminal='/usr/local/Cellar/emacs/HEAD/Emacs.app/Contents/MacOS/Emacs -nw'
alias emacs='/usr/local/Cellar/emacs/HEAD/Emacs.app/Contents/MacOS/Emacs -nw'

alias v='mvim'
alias vv='mvim .'

# ctags
alias generate_rails_tags='ctags -a -e -f TAGS --tag-relative -R app lib vendor'
alias generare_sc_tags='ctags -R -e'

# screen
alias sls='screen -ls'
alias sn='screen -aASU'
alias sresume='screen -aAr'
alias sx='screen -aAx'

# server
alias cycle_passenger='touch tmp/restart.txt'
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias mysqlup='mysql.server start'
alias mongoup='mongod run --config /usr/local/Cellar/mongodb/1.8.2-x86_64/mongod.conf'
alias nginx-down='sudo kill $(ps aux | grep nginx | grep master | cut -c 16-21)'
alias nginx-up='sudo nginx'

# mount points
alias tcr='/Applications/TrueCrypt.app/Contents/MacOS/TrueCrypt ~/Desktop/s'
alias tcb='/Applications/TrueCrypt.app/Contents/MacOS/TrueCrypt ~/Desktop/b'

# bookmarks
alias m1='alias g1="cd `pwd`"'
alias m2='alias g2="cd `pwd`"'
alias m3='alias g3="cd `pwd`"'
alias m4='alias g4="cd `pwd`"'
alias m5='alias g5="cd `pwd`"'
alias m6='alias g6="cd `pwd`"'
alias m7='alias g7="cd `pwd`"'
alias m8='alias g8="cd `pwd`"'
alias m9='alias g9="cd `pwd`"'
alias mdump='alias|grep -e "alias g[0-9]"|grep -v "alias m" > ~/.bookmarks'
alias lma='alias | grep -e "alias g[0-9]"|grep -v "alias m"|sed "s/alias //"'

if [[ -a "$HOME/.bookmarks" ]]; then
    source $HOME/.bookmarks
else
    touch $HOME/.bookmarks
fi

# private aliases not included in the github repo
if [[ -a "$HOME/.zsh/private_aliases.zsh" ]]; then
    source $HOME/.zsh/private_aliases.zsh
fi
