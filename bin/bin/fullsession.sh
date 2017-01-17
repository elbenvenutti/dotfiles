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

tmux new-window -n 'bubblesServices'
tmux split-window -v
tmux split-window -v

tmux send-keys -t dev:bubblesServices.1 cd Space ../bubbles Space C-m Space npm Space run Space dyson
tmux send-keys -t dev:bubblesServices.2 cd Space ../bubbles Space C-m Space npm Space run Space start
tmux send-keys -t dev:bubblesServices.3 cd Space ../bubbles Space C-m Space NODE_ENV=local Space npm Space run Space start Space -- Space --port=8086

tmux send-keys -t dev:bubbles.1 cd Space ../bubbles Space C-m Space vim Space -S Space Session.vim
tmux send-keys -t dev:bubbles.2 cd Space ../bubbles Space C-m Space npm Space run Space flow:watch
tmux send-keys -t dev:bubbles.3 cd Space ../bubbles Space C-m Space npm Space run Space lint:watch
tmux send-keys -t dev:bubbles.4 cd Space ../bubbles Space C-m Space npm Space run Space test:unit:watch
tmux send-keys -t dev:bubbles.5 cd Space ../bubbles Space C-m Space npm Space run Space test:e2e:watch

tmux select-window -t dev:bubbles
tmux select-pane -t dev:bubbles.1
tmux select-layout -t dev:bubblesServices even-horizontal

tmux new-window -n 'blossom'
tmux split-window -v
tmux split-window -v
tmux split-window -v
tmux split-window -v

tmux select-layout main-vertical
tmux resize-pane -t 2 -x 80

tmux new-window -n 'blossomServices'
tmux split-window -v
tmux split-window -v

tmux send-keys -t dev:blossomServices.1 cd Space ../blossom C-m npm Space run Space dyson
tmux send-keys -t dev:blossomServices.2 cd Space ../blossom C-m npm Space run Space start
tmux send-keys -t dev:blossomServices.3 cd Space ../blossom C-m NODE_ENV=local Space npm Space run Space start Space -- Space --port=8086

tmux send-keys -t dev:blossom.1 cd Space ../blossom Space C-m Space vim Space -S Space Session.vim
tmux send-keys -t dev:blossom.2 cd Space ../blossom Space C-m Space npm Space run Space flow:watch
tmux send-keys -t dev:blossom.3 cd Space ../blossom Space C-m Space npm Space run Space lint:watch
tmux send-keys -t dev:blossom.4 cd Space ../blossom Space C-m Space npm Space run Space test:unit:watch
tmux send-keys -t dev:blossom.5 cd Space ../blossom Space C-m Space npm Space run Space test:e2e:watch

tmux select-window -t dev:blossom
tmux select-pane -t dev:blossom.1
tmux select-layout -t dev:blossomServices even-horizontal

tmux new-window -n 'mojojojo'
tmux split-window -v
tmux split-window -v
tmux split-window -v
tmux split-window -v

tmux select-layout main-vertical
tmux resize-pane -t 2 -x 80

tmux new-window -n 'mojojojoServices'
tmux split-window -v
tmux select-pane -t dev:mojojojoServices.2
tmux split-window

tmux send-keys -t dev:mojojojoServices.1 npm Space run Space build:watch
tmux send-keys -t dev:mojojojoServices.2 npm Space run Space start:watch
tmux send-keys -t dev:mojojojoServices.3 tail Space -f Space logs/mojo-jojo.log

tmux send-keys -t dev:mojojojo.1 vim Space -S Space Session.vim
tmux send-keys -t dev:mojojojo.2 npm Space run Space flow:watch
tmux send-keys -t dev:mojojojo.3 npm Space run Space lint:watch
tmux send-keys -t dev:mojojojo.4 npm Space run Space test:unit:watch
tmux send-keys -t dev:mojojojo.5 npm Space run Space test:integration:watch

tmux select-window -t dev:mojojojo
tmux select-pane -t dev:mojojojo.1
tmux select-layout -t dev:mojojojoServices even-horizontal

tmux new-window -n 'him'
tmux split-window -v
tmux split-window -v
tmux split-window -v
tmux split-window -v

tmux select-layout main-vertical
tmux resize-pane -t 2 -x 80

tmux new-window -n 'himServices'
tmux split-window -v
tmux select-pane -t dev:himServices.2
tmux split-window

tmux send-keys -t dev:himServices.1 cd Space ../him C-m npm Space run Space build:watch
tmux send-keys -t dev:himServices.2 cd Space ../him C-m npm Space run Space start:watch
tmux send-keys -t dev:himServices.3 cd Space ../him C-m tail Space -f Space logs/him.log

tmux send-keys -t dev:him.1 cd Space ../him C-m vim Space -S Space Session.vim
tmux send-keys -t dev:him.2 cd Space ../him C-m npm Space run Space flow:watch
tmux send-keys -t dev:him.3 cd Space ../him C-m npm Space run Space lint:watch
tmux send-keys -t dev:him.4 cd Space ../him C-m npm Space run Space test:unit:watch
tmux send-keys -t dev:him.5 cd Space ../him C-m npm Space run Space test:integration:watch

tmux select-window -t dev:him
tmux select-pane -t dev:him.1
tmux select-layout -t dev:himServices even-horizontal

tmux new-window -n 'fuzzylumpkins'
tmux split-window -v
tmux split-window -v
tmux split-window -v
tmux split-window -v

tmux select-layout main-vertical
tmux resize-pane -t 2 -x 80

tmux new-window -n 'fuzzylumpkinsServices'
tmux split-window -v
tmux select-pane -t dev:fuzzylumpkinsServices.2
tmux split-window

tmux send-keys -t dev:fuzzylumpkinsServices.1 cd Space ../fuzzylumpkins C-m npm Space run Space build:watch
tmux send-keys -t dev:fuzzylumpkinsServices.2 cd Space ../fuzzylumpkins C-m npm Space run Space start:watch
tmux send-keys -t dev:fuzzylumpkinsServices.3 cd Space ../fuzzylumpkins C-m tail Space -f Space logs/fuzzylumpkins.log

tmux send-keys -t dev:fuzzylumpkins.1 cd Space ../fuzzylumpkins C-m vim Space -S Space Session.vim
tmux send-keys -t dev:fuzzylumpkins.2 cd Space ../fuzzylumpkins C-m npm Space run Space flow:watch
tmux send-keys -t dev:fuzzylumpkins.3 cd Space ../fuzzylumpkins C-m npm Space run Space lint:watch
tmux send-keys -t dev:fuzzylumpkins.4 cd Space ../fuzzylumpkins C-m npm Space run Space test:unit:watch
tmux send-keys -t dev:fuzzylumpkins.5 cd Space ../fuzzylumpkins C-m npm Space run Space test:integration:watch

tmux select-window -t dev:fuzzylumpkins
tmux select-pane -t dev:fuzzylumpkins.1
tmux select-layout -t dev:fuzzylumpkinsServices even-horizontal

tmux new-window -n 'murphy'
tmux split-window -v
tmux send-keys -t dev:murphy.1 cd Space ../murphy C-m ./gradlew Space runShadow
tmux select-layout -t dev:murphy even-horizontal

tmux at
