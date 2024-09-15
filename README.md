Terraform commands:-
- Refer Terraform.io, registry.terraform.io sites to build your own infra structure.
- Install terraform from site terraform.io
- Install yum install tree -y -- it will show the tree structure of folders. "#tree /root/modules"
- terraform --version  - To check the version
- File sections
-     providers.tf,main.tf,myvalues.tfvars,variables.tf,output.tf files.
-  Different commands in terraform
-     terraform init - initializes with all dependencies by downloading it.
-     terraform plan -auto-approve -var-file myvalues.tfvars - dry run
-     terraform apply -auto-approve -var-file myvalues.tfvars - create the infrastructure
-     terraform destroy -auto-approve -var-file myvalues.tfvars - deletes/destroys the infrastructure.
-     terraform show list
-     terraform workspace list - It will show the default workspace.
-     terraform workspace new dev - creating environments
-     terraform workspace new sit - creating environments. These folders we can see in ls -l terraform.tfstate.d/dev,sit
-     terraform workspace select sit - switch between workspaces
-     terraform workspace show - it will show the workspaces and selected one with * symbol.
Here .tfstate file is the heart of the infrastructure and if we lose this file, then entire setup will lost. better maintain the tfstate file in s3 bucket with enabling the bucket versioning.
