parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
 
PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}🖕)"
PROMPT+=' %{$fg[magenta]%}%c%{$reset_color%} $(kube_ps1) ' 
PROMPT+='%{$reset_color%}[%{$fg[green]%}$(git_current_branch)%{$reset_color%}] '


KUBE_PS1_COLOR_CONTEXT="%{$fg[blue]%}"
KUBE_PS1_COLOR_NS="%{$fg[cyan]%}"

#PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}) "
#PROMPT+='%{$fg[cyan]%}%c%{$reset_color%} '
#PROMPT+="%{$fg_bold[red]%}➜ )$(kube_ps1)\$(parse_git_branch) "
