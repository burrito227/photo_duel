# photo_duel
Pre-Deployment steps (net-new):
    1. Create service principal in Azure for terraform.
    2. Store service principal secrets in Github.
    3. Create storage account to store Terraform state.
    4. Create KeyVault for storing secrets, set permission for service principal.
    5. update tfvars file