eval "$(rbenv init -)"

alias ll='ls -al'
alias wk='cd ~/junkYard/dronemarket-www/ '
alias dcr='docker-compose run --rm '
alias dcrw='docker-compose run --rm web '
alias dc='docker-compose '

#th=throw away
alias gitth="git bra | grep -v develop | awk '{print $1}' | xargs git bra -d"

#drmi=docker rmi
alias drmi="docker rmi $(docker images | awk '/^<none/ {print $3}')"


# タイムスタンプを日付に変換。
# 使用例）
# ut2date 1234567890
# date2ut "2009/02/14 08:31:30"
function ut2date {
  /bin/date -u -r $1 +"%Y/%m/%d %H:%M:%S UTC"
  /bin/date -r $1 +"%Y/%m/%d %H:%M:%S"
}
function date2ut {
  /bin/date -j -f "%Y/%m/%d %H:%M:%S" "$1" +%s
}

source ~/.git-completion.bash
