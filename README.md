# Tmux sessions bar

Tmux plugin that enables displaying sessions list and *RW* flag of the current
session.

Introduces a new #{sessions\_bar} format.

This plugin will be useful if you have a workflow similar to mine:

 - every separate project requires a separate session
 - every separate action/task(e.g. build, test, debug etc) within a project
   requires a separate pane
 - panes are grouped in some meaningful way using windows(e.g. test, docs, conf)

## Usage

Add #{sessions\_bar} format string to your existing status-right tmux option.
```
set -g status-right "#{sessions_bar}"
```
