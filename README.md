Create a project to host our infrastructure.
Create a terrafrom (main.tf, variables.tf) files in directory.
Enable the Cloud Billing Budget API.
Enable google workspace alert center API
Add service account details (credentials.json) to varaibles.tf



Run the following commands

terraform init to get the plugins
terraform plan to see the infrastructure plan
terraform apply to apply the infrastructure build

permission:
IAM---service account---Owner

output

check Budget is created in Budget --> Budget&alert