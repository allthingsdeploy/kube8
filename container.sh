ACR=robertoaksacr001
RG=rgaksstorerg
LOC=australiaeast

az acr create \
  --resource-group $RG \
  --name $ACR \
  --sku Standard

  az acr list -o table