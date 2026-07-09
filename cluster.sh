AKS=aks-store
ACR=robertoaksacr001
RG=rgaksstorerg
LOC=australiaeast


az aks create \
    --resource-group $RG \
    --name $AKS \
    --node-count 2 \
    --node-vm-size Standard_D4s_v5 \
    --enable-managed-identity \
    --enable-oidc-issuer \
    --generate-ssh-keys