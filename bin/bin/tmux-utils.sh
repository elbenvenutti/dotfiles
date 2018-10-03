SESSION=dev
WORKDIR=~/projects/$1
PROJECT_NAME=$1
SRV_NAME=${PROJECT_NAME}Services
WORK_WINDOW=$SESSION:$PROJECT_NAME
SRV_WINDOW=$SESSION:$SRV_NAME

send_keys () {
tmux send-keys -t $1.$2 "
cd $WORKDIR
$3
"
}

send_work_keys () {
send_keys $WORK_WINDOW $1 "$2"
}

send_srv_keys () {
send_keys $SRV_WINDOW $1 "$2"
}

split_window () {
for ((i=1;i<=$2;i++)); do tmux split-window -t $1 -v; done
}
