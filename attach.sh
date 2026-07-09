AKS=aks-store
ACR=robertoaksacr001
RG=rgaksstorerg
LOC=australiaeast

az aks update \
  --resource-group $RG \
  --name $AKS \
  --attach-acr $ACR