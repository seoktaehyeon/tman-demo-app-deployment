# Application Deployement Scripts Demo

## 部署前的预处理

- 把 env 导出文件转换成 YAML 格式

```bash
opsctl env2yaml --input ${env_input} --output ${env_output}
```

- 渲染 template 目录中的所有文件

```bash
opsctl tmpl2art --config ${env_output} --tmpl ${tmpl_path} --output .
```

## 添加部署脚本

追加脚本到 `deploy.sh` 

## 各个服务的版本变量

服务名 | 版本变量名称 
----|----
tman-demo-svc-js     | bamboo_svcjs_version
tman-demo-svc-java   | bamboo_svcjava_version
tman-demo-svc-python | bamboo_svcpython_version
tman-demo-svc-go     | bamboo_svcgo_version
