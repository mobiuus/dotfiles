function vz
	set -l file (fd -i | fzf -i +m --border --height 80% --extended --reverse --cycle --bind 'ctrl-u:preview-up,ctrl-d:preview-down' --preview "bat --theme 'OneHalfDark' --style=numbers --color=always {} | head -100" --preview-window noborder)
	if [ ! -z "$file" ]
		vim "$file"
	end
end

function cz
	set -l directory (fd -i -td | fzf -i +m --border --height 80% --extended --reverse --cycle --bind 'ctrl-u:preview-up,ctrl-d:preview-down' --preview "exa --tree --level=2 --color=always {}" --preview-window noborder)
        if [ ! -z "$directory" ]
	    cd "$directory"
        end
end

function ch
    set -l directory (fd -i -td . ~/ | fzf -i +m --border --height 80% --extended --reverse --cycle --bind 'ctrl-u:preview-up,ctrl-d:preview-down' --preview "exa --tree --level=2 --color=always {}" --preview-window noborder)
    if [ ! -z "$directory" ]
        cd "$directory"
    end
end

function vg
	set -l file (fd -i . (git rev-parse --show-toplevel)| fzf -i +m --border --height 80% --extended --reverse --cycle --bind 'ctrl-u:preview-up,ctrl-d:preview-down' --preview "bat --theme 'OneHalfDark' --style=numbers --color=always {} | head -100" --preview-window noborder)
	if [ ! -z "$file" ]
		vim "$file"
	end
end

function cg
	set -l directory (fd -i -td . (git rev-parse --show-toplevel)| fzf -i +m --border --height 80% --extended --reverse --cycle --bind 'ctrl-u:preview-up,ctrl-d:preview-down' --preview "exa --tree --level=2 --color=always {}" --preview-window noborder)
	if [ ! -z "$directory" ]
		vim "$directory"
	end
end

# for Windows Subsystem for Linux
function cwh
    set -l directory (fd -i -td . /mnt/c/Users/ckdtj/ | fzf -i +m --border --height 80% --extended --reverse --cycle --bind 'ctrl-u:preview-up,ctrl-d:preview-down' --preview "exa --tree --level=2 --color=always {}" --preview-window noborder)
    if [ ! -z "$directory" ]
        cd "$directory"
    end
end

function vwh
    set -l file (fd -i . /mnt/c/Users/ckdtj | fzf -i +m --border --height 80% --extended --reverse --cycle --bind 'ctrl-u:preview-up,ctrl-d:preview-down' --preview "bat --theme 'OneHalfDark' --style=numbers --color=always {} | head -100" --preview-window noborder)
    if [ ! -z "$file" ]
        vim "$file"
    end
end

function fif
    if count $argv > /dev/null
       rg --files-with-matches "$argv[1]" | fzf\
        --border\
        --height 80%\
        --extended\
        --ansi\
        --reverse\
        --cycle\
        --header 'Find in File'\
        --bind 'ctrl-u:preview-up,ctrl-d:preview-down'\
        --bind 'ctrl-v:execute(vim {} >/dev/tty </dev/tty)'\
        --preview "bat --theme='OneHalfDark' --style=numbers --color=always {} | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 '$argv[1]';or rg --ignore-case --pretty --context 10 '$argv[1]' {}"\
        --preview-window noborder
    else
        echo "검색어를 입력해주세요"
    end
end

function fzf-bcd-widget -d 'cd backwards'
	pwd | awk -v RS=/ '/\n/ {exit} {p=p $0 "/"; print p}' | tac | eval (__fzfcmd) +m --select-1 --exit-0 $FZF_BCD_OPTS | read -l result
	[ "$result" ]; and cd $result
	commandline -f repaint
end

function fbr -d "Fuzzy-find and checkout br"
    set isgit (git rev-parse --is-inside-work-tree)
    if test $isgit = "true"
        set branch (git branch -a | fzf -i +m --border --height 80% --extended --reverse --cycle); and git checkout $branch
    else
        echo "Not a git repository"
    end
end

function fcoc -d "Fuzzy-find and checkout a commit"
  git log --pretty=oneline --abbrev-commit --reverse | fzf --tac +s -e | awk '{print $1;}' | read -l result; and git checkout "$result"
end
