#!/bin/bash

__start_ksy() {
	local cur prev opts
	COMPREPLY=()
	cur="${COMP_WORDS[COMP_CWORD]}"
	prev="${COMP_WORDS[COMP_CWORD-1]}"
	opts="--help --verbose --version"

	echo ${COMP_WORDS[@]}
	echo ${cur}
	echo ${prev}

	if [[ ${cur} == -* ]]
	then
		COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
		return 0
	fi
}

complete -F __start_ksy ksy
