#!/bin/bash
set -ex
env_input=".env"
env_output="config"
tmpl_path="template"
ls -al
[[ -f ${env_input} ]] || {
    echo "===== ERROR ===== No env input file"
    exit 1
}
[[ -d ${tmpl_path} ]] || {
    echo "===== ERROR ===== Template path is required"
    exit 1
}
opsctl env2yaml --input ${env_input} --output ${env_output}
opsctl tmpl2art --config ${env_output} --tmpl ${tmpl_path} --output .

# debug
[[ -f debug.yaml ]] && cat debug.yaml

# docker-compose
#docker-compose -f compose.yaml pull
#docker-compose -f compose.yaml up -d
#sleep 10
#docker-compose -f compose.yaml ps 

# K8S
#kubectl --kubeconfig=kubeconfig get namespace
