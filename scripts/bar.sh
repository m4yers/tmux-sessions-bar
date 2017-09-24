#!/usr/bin/env bash

add_rw_mark() {
  printf "#{?client_readonly,#[bg=colour9] R ,#[fg=colour0,bg=colour10] RW }"
}

add_sessions_list() {
  tmux list-sessions -F "#{session_name}:#{session_attached}" | \
  while read line; do
    attached=${line##*:};
    line=${line/$/};
    line=${line%%:*};
    if [[ "${attached}" == "1" ]]; then
      printf "#[fg=colour0,bg=colour12] ${line} ";
    else
      printf "#[fg=colour8,bg=colour0] ${line} ";
    fi;
  done
}

main() {
  add_sessions_list
  add_rw_mark
}

main
