#/bin/bash
#get credentials
AKS=aks-store
RG=rgaksstorerg

az aks get-credentials --resource-group $RG --name $AKS --overwrite-existing