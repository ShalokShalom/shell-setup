# Aliases

alias h='history -fdDE -25'

if which exa > /dev/null 2>&1; then
	alias ls='exa --time-style=long-iso --color-scale -FBg'
	alias lg='exa --git --time-style=long-iso --color-scale -FBgl'
else
	case "$OS" in
		FreeBSD) alias ls='ls -G';;
		Linux)	alias ls='ls --color';;
		*)	alias ls='colorls -G';;
	esac
fi

alias l='ls -l'
alias ..='cd ..'
alias ...='cd ../..'
alias mutt='~/.mutt/mutt'
alias neomutt='~/.mutt/mutt'

if [ -n "$DEFAULT_X_TERMINAL" ] && [ -n "$DISPLAY" ]; then
	alias vi='background '${DEFAULT_X_TERMINAL}' -e vim'
else
	alias vi='vim'
fi

function background()
{
	$@ &
}
