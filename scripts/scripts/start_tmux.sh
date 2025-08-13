#!/bin/bash
if [ -z "$TMUX" ]; then
  tmux new-session -A -s default
else
  tmux attach -t default
fi
