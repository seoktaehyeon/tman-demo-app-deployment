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
