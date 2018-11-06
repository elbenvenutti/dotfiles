BACKEND_PROJECTS="him fuzzylumpkins mojo-jojo"
FRONTEND_PROJECTS="bubbles blossom"
LIBS="utonium morbucks"
ALL="$BACKEND_PROJECTS $FRONTEND_PROJECTS $LIBS"

complete -W "$BACKEND_PROJECTS" be
complete -W "$FRONTEND_PROJECTS" fe
complete -W "$LIBS" lib

complete -W "$ALL" killtabs
complete -W "$ALL" break-editor-pane
