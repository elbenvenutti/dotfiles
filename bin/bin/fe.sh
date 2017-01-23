#!/usr/bin/env bash

SESSION=dev
WORKDIR=~/projects/$1
PROJECT_NAME=$1
SRV_NAME=${1}Services
WORK_WINDOW=$SESSION:$PROJECT_NAME
SRV_WINDOW=$SESSION:$SRV_NAME
SECONDARY_PORT=$2

tmux has-session -t $SESSION || tmux new-session -d -s "$SESSION"

tmux new-window -n "$PROJECT_NAME"

tmux split-window -t $WORK_WINDOW -v
tmux split-window -t $WORK_WINDOW -v
tmux split-window -t $WORK_WINDOW -v
tmux split-window -t $WORK_WINDOW -v

tmux select-layout -t $WORK_WINDOW main-vertical
tmux resize-pane -t $WORK_WINDOW.2 -x 80

tmux send-keys -t $WORK_WINDOW.1 C-m cd Space $WORKDIR C-m vim Space -S Space Session.vim C-m
tmux send-keys -t $WORK_WINDOW.2 C-m cd Space $WORKDIR C-m npm Space run Space flow:watch C-m
tmux send-keys -t $WORK_WINDOW.3 C-m cd Space $WORKDIR C-m npm Space run Space lint:watch C-m
tmux send-keys -t $WORK_WINDOW.4 C-m cd Space $WORKDIR C-m npm Space run Space test:unit:watch C-m
tmux send-keys -t $WORK_WINDOW.5 C-m cd Space $WORKDIR C-m npm Space run Space test:e2e:watch C-m

tmux new-window -n "$SRV_NAME"
tmux split-window -t $SRV_WINDOW -v
tmux split-window -t $SRV_WINDOW -v

tmux send-keys -t $SRV_WINDOW.1 C-m cd Space $WORKDIR C-m npm Space run Space dyson C-m
tmux send-keys -t $SRV_WINDOW.2 C-m cd Space $WORKDIR C-m npm Space run Space start C-m
tmux send-keys -t $SRV_WINDOW.3 C-m cd Space $WORKDIR C-m NODE_ENV=local Space npm Space run Space start Space -- Space --port=$SECONDARY_PORT C-m

tmux select-layout -t $SRV_WINDOW even-horizontal
