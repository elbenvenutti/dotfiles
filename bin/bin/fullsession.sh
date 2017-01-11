#!/usr/bin/env bash
cd ~/projects/mojo-jojo
tmux new-session -d -s 'dev'

tmux rename-window 'bubbles'
tmux split-window -v
tmux split-window -v
tmux split-window -v
tmux split-window -v

tmux select-layout main-vertical
tmux resize-pane -t 2 -x 80

tmux new-window -n 'bservices'
tmux split-window -v
tmux split-window -v

tmux send-keys -t dev:bservices.1 cd Space ../bubbles Space C-m Space npm Space run Space dyson C-m
tmux send-keys -t dev:bservices.2 cd Space ../bubbles Space C-m Space npm Space run Space start C-m
tmux send-keys -t dev:bservices.3 cd Space ../bubbles Space C-m Space NODE_ENV=local Space npm Space run Space start Space -- Space --port=8086 C-m

tmux send-keys -t dev:bubbles.1 cd Space ../bubbles Space C-m Space vim Space -S Space Session.vim C-m
tmux send-keys -t dev:bubbles.2 cd Space ../bubbles Space C-m Space npm Space run Space flow:watch C-m
tmux send-keys -t dev:bubbles.3 cd Space ../bubbles Space C-m Space npm Space run Space lint:watch C-m
tmux send-keys -t dev:bubbles.4 cd Space ../bubbles Space C-m Space npm Space run Space test:unit:watch C-m
tmux send-keys -t dev:bubbles.5 cd Space ../bubbles Space C-m Space npm Space run Space test:e2e:watch C-m

tmux select-window -t dev:bubbles
tmux select-pane -t dev:bubbles.1
tmux send-keys -t dev:bubbles.1 C-w =

tmux new-window -n 'mojojojo'
tmux split-window -v
tmux split-window -v
tmux split-window -v
tmux split-window -v

tmux select-layout main-vertical
tmux resize-pane -t 2 -x 80

tmux new-window -n 'mjservices'
tmux split-window -v
tmux select-pane -t dev:mjservices.2
tmux split-window

tmux send-keys -t dev:mjservices.1 npm Space run Space build:watch C-m
tmux send-keys -t dev:mjservices.2 npm Space run Space start:watch C-m
tmux send-keys -t dev:mjservices.3 tail Space -f Space logs/mojo-jojo.log C-m

tmux send-keys -t dev:mojojojo.1 vim Space -S Space Session.vim C-m
tmux send-keys -t dev:mojojojo.2 npm Space run Space flow:watch C-m
tmux send-keys -t dev:mojojojo.3 npm Space run Space lint:watch C-m
tmux send-keys -t dev:mojojojo.4 npm Space run Space test:unit:watch C-m
tmux send-keys -t dev:mojojojo.5 npm Space run Space test:integration:watch C-m

tmux select-window -t dev:mojojojo
tmux select-pane -t dev:mojojojo.1
tmux send-keys -t dev:mojojojo.1 C-w =

tmux new-window -n 'murphy'
tmux split-window -v
tmux send-keys -t dev:murphy.1 cd Space ../murphy C-m ./gradlew Space runShadow C-m

tmux at
