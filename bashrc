
log_in_help() {
    echo "==========================="
    echo "Help: lg SERVER TYPE"
    echo "  - SERVER is the ip address you want to connect. Also, you can"
    echo "  config a name in the file of '~/.ssh/config'"
    echo "  - TYPE(optional) is the connection type, you can choose [cn, int]"
    echo "  or input a key name, such as 'mathilde.pem'"
    echo "Examples:"
    echo "  1. lg 52.10.199.62 yingdai.pem"
    echo "  2. lg dev"
    echo "  3. lg dev int"
    echo "  4. lg 52.10.199.62 cn"
    echo "  5. lg 52.10.199.62"
    echo "==========================="
}

log_in() {
    key_path="/Users/test/.ssh/alauda.pem"
    if [ -z $2 ]
    then
        key_path="/Users/test/.ssh/alauda.pem"
    elif [ "$2" == "cn" ]
    then
        key_path="/Users/test/.ssh/alauda.pem"
    elif [ "$2" == "int" ]
    then
        key_path="/Users/test/.ssh/mathilde.pem"
    else
        key_path="/Users/test/.ssh/$2"
    fi

    if [ -z $1 ]
    then
        log_in_help
    else
        ssh -i $key_path ubuntu@$1
    fi
}
alias lg=log_in

mcd() {
    mkdir -p $1
    cd $1
}
alias mcd=mcd

alias ps?="ps aux | grep"

alias set_docker="eval $(docker-machine env default)"

