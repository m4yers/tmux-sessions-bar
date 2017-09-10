#!/usr/bin/env bash

main() {
  tmux list-sessions -F "#{session_name}:#{session_attached}" | \
  while read line; do
    attached=${line##*:};
    line=${line/$/};
    line=${line%%:*};
    if [[ "${attached}" == "1" ]]; then
      printf "#[fg=#fbf4c1,bg=#882222] ${line} ";
    else
      printf "#[fg=#fbf4c1,bg=default] ${line} ";
    fi;
  done
}

main
