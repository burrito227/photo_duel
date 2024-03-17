# photo_duel
Pre-Deployment steps (net-new):
    1. Create service principal in Azure for terraform & store service principal secrets in Github.
    2. Create storage account to store Terraform state.
    3. Create KeyVault for storing secrets, set permission for service principal.
    4. Store DJANGO secret key in keyvault.
    5. update tfvars file