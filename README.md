# Best Practices Terraform

Why use modules?

- Capsulate Infra
    - Capsulate the infra, we have the benefits how, using variables, outputs and resouces names, uniques for each module/infra
    - Minimize erros and config infra between configurations file terraform

- Reuse Infra/Configuration
    - With modules, we can make a module private, and reuse in many projects, passing variables inside then to use in a many projects
    - Reuse modules public, for not waste much time building the self configuration infra/resource

## How run the code?

First of all, put the `ACCESS_KEY` and `SECRET_KEY` on the file `provider.tf`.

After it, you can run the following step above:

```bash
# Download resources/providers/libs/modules
$ terraform init

# show the infra
$ terraform plan

# apply infra
$ terraform apply

# destroy infra
$ terraform destroy
```