RG=rgaksstorerg
LOC=australiaeast

az group create \
  --name $RG \
  --location $LOC

  az group show -n $RG -o table