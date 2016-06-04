
_synergyp() {
	local cur prev words cword split
    _init_completion -s || return

    case $prev in
        -p|--profile|-k|--kill|--set-default)
			COMPREPLY=( $(compgen -W "$(synergyp --profile-completion "$cur")" -- "$cur" ) )
            return 0
            ;;
        -l|--list-profiles|-a|--list-aliases|--kill-all|-h|--help|--add-alias)
            return 0
            ;;
		--host)
			COMPREPLY=( $(compgen -W "$(synergyp --list-hostnames)" -- "$cur") )
			return 0
			;;
    esac


	case "$cur" in
		*)
			COMPREPLY=( $(compgen -W "$(synergyp --completion)" -- "$cur") )
			return 0
			;;
	esac


} && complete -F _synergyp synergyp
