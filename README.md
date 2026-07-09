# kube8

A set of Azure CLI (`az`) shell scripts to provision an AKS (Azure Kubernetes Service) environment with an attached Azure Container Registry (ACR), all in the `rgaksstorerg` resource group in the `australiaeast` region.

## Suggested run order

1. **`rg.sh`** — Creates the Azure resource group (`rgaksstorerg`) in `australiaeast` and displays it in table format.
2. **`cluster.sh`** — Creates the AKS cluster (`aks-store`) with 2 nodes of size `Standard_D4s_v5`, managed identity, OIDC issuer enabled, and auto-generated SSH keys.
3. **`container.sh`** — Creates the Azure Container Registry (`robertoaksacr001`) with the `Standard` SKU and lists all registries in the subscription.
4. **`attach.sh`** — Attaches the ACR (`robertoaksacr001`) to the AKS cluster (`aks-store`) so the cluster can pull images from it without extra credentials.
5. **`getcred.sh`** — Fetches and merges the AKS cluster credentials into your local `kubectl` config (`~/.kube/config`), overwriting any existing entry for this cluster.

## Prerequisites

- [Azure CLI](https://learn.microsoft.com/cli/azure/install-azure-cli) installed and logged in (`az login`)
- `kubectl` installed (for use after `getcred.sh`)
- Sufficient Azure permissions to create resource groups, AKS clusters, and ACR instances

## Notes

- Variable values (resource group, cluster name, ACR name, location) are hardcoded at the top of each script — edit them as needed before running.
- Run the scripts in the order above, since later scripts depend on resources created by earlier ones.
