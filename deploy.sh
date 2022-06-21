#!/bin/bash
set -ex
env_input="env"
env_output=".env"
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
kubectl 
exit $?
