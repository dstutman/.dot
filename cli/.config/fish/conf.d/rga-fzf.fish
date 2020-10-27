function rga-fzf
	set -l RGA_PREFIX "rga --files-with-matches"
	set -l FZF_DEFAULT_COMMAND "$RGA_PREFIX \'$argv[1]\'"
	set file (fzf --sort --preview="rga --pretty --context 5 {q} {}" --phony -q "$argv[1]" --bind "change:reload:$RGA_PREFIX {q}" --preview-window="70%:wrap")
end
