#!/usr/bin/env bash

add_rw_mark() {
  printf "#{?client_readonly,#[bg=#882222] R ,#[fg=#fbf4c1,bg=#115511] RW }"
}

add_sessions_list() {
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

main() {
  add_sessions_list
  add_rw_mark
}

main
