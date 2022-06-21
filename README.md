# Application Deployement Scripts Demo

## Precondition for deployment

- prepare yaml env file

```bash
opsctl env2yaml --input ${env_input} --output ${env_output}
```

- render template for deployment

```bash
opsctl tmpl2art --config ${env_output} --tmpl ${tmpl_path} --output .
```

## Append the deployment scripts

append scripts into `deploy.sh`
