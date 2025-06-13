# 🧑‍💻 Terraform Playground 🚀
## Objectives
Develop TF IaC to deploy an azure enterprise landing zone with
- ✅ Azure Verified Modules
- 🔐 Keyvault
- 🗃️ Blob storage for state
- 🧪 Dev / UAT / Prod environments
- 🏷️ CAF aligned naming convention
- 🌐 Hub / Spoke VNETS
    - 🛡️ NSGs
    - 🧭 UDRs
    - 🔗 VNET Peering
- 🖥️ IaaS
- 🛢️ SQL PaaS
- 🎯 Load Balancer
- 🌍 Front Door

## 🛠️ Step 1: Set up developer environment
### 🌐 git
[Install git on macOS](https://git-scm.com/downloads/mac)
### 🧱 VSCode
[Install VS Code on macOS](https://code.visualstudio.com/docs/setup/mac#_install-vs-code-on-macos)
VSCode addons:
- [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
- [Azure Terraform](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-azureterraform)
- [Terraform Extension](https://marketplace.visualstudio.com/items?itemName=HashiCorp.terraform)
- Azure CLI  
  ```bash
  brew update && brew install azure-cli
  ```
### Github
- Create github account and repo
- Clone repo

### 📁 Create repo folder structure
```folders
terraform/
├── modules/
│   ├── network/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── keyvault/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── storage/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── compute/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── sql/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── loadbalancer/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── frontdoor/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
├── environments/
│   ├── dev/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── uat/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── prod/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
└── shared/
    ├── provider.tf
    └── backend.tf
```
Bash script here: [create-folder-structure.sh](./create-folder-structure.sh)
### ⚙️ Terraform CLI