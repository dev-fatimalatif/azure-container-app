# Azure Container App Deployment Using Terraform

This repository contains a comprehensive Terraform configuration for deploying an Azure Container App that runs a specified containerized application. The deployment process is designed to be modular, ensuring reusability, scalability, and ease of updates or replication across environments.

---

## **Features**

### **1. Azure Container App**

* Automatically deploys a containerized application in Azure.
* Supports seamless integration with Azure services for enhanced performance and security.

### **2. Terraform Modules**

* Infrastructure is defined using reusable Terraform modules.
* Modular design allows for easy replication and maintenance.

### **3. Scalable and Flexible**

* Configuration supports scaling, updating, and managing applications in multiple environments (e.g., dev, staging, production).
* Resource customization enables fine-tuned adjustments to meet specific workload needs.

### **4. Customization Through Variables**

* Customize key resources like:

  * Container images and registry credentials.
  * Environment variables and application settings.
  * Networking configurations and scaling rules.

---

## **Prerequisites**

Before deploying, ensure the following tools and resources are available:

1. **Terraform**: Installed (v1.9.5 or later).

   * [Install Terraform](https://developer.hashicorp.com/terraform/tutorials/azure-get-started/install-cli)

2. **Azure CLI**: Installed and authenticated with your Azure account.

   * [Install Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)

3. **Azure Subscription**: An active Azure subscription to host your resources.

4. **Container Registry**: A Docker container image uploaded to a registry (e.g., Azure Container Registry, Docker Hub, or private registry).

   > **Note:** If using a private registry, ensure proper authentication credentials are provided.

---

## **Getting Started**

### **1. Clone the Repository**

Clone this repository to your local machine using the following command:

```bash
git clone https://github.com/your-repository-url.git
cd azure-containerapp-repo
```

### **2. Customize Variables**

Define your variables in a `terraform.tfvars` file or pass them as command-line arguments. These variables allow you to tailor the deployment to your specific needs.

#### Example `terraform.tfvars` File:

```hcl

location            = "East US"
container_image     = "myregistry.azurecr.io/my-app:latest"
environment         = "production"

```

### **3. Initialize Terraform**

Run Terraform initialization to set up the working directory and download necessary modules and providers:

```bash
terraform init
```

### **4. Plan the Deployment**

Preview the changes Terraform will apply to your Azure environment:

```bash
terraform plan
```

This will display a detailed summary of the resources to be created or updated.

### **5. Apply the Deployment**

Deploy the container app and associated resources to Azure by running:

```bash
terraform apply
```

Confirm the action when prompted. Terraform will display the progress of the deployment.

### **6. Access the Application**

Once deployment is complete, Terraform will output the URL of the Azure Container App. Use this URL to access your deployed application.

---

## **Structure of the Repository**

### **Modules**

* Contains reusable Terraform modules for deploying Azure resources.

### **Main Configuration**

* The root directory includes the main Terraform files:

  * `main.tf`: Core configuration for the Azure Container App.
  * `variables.tf`: Defines input variables for customization.
  * `outputs.tf`: Specifies output values, such as the application URL.

### **Example Directory**

* Provides sample usage of the modules to guide you in defining your configurations.

---

## **Benefits of This Approach**

1. **Modular Design**: Simplifies resource management and promotes reusability across projects.
2. **Scalability**: Easily scale resources to handle increased workloads.
3. **Environment Isolation**: Use separate configurations for dev, staging, and production environments.
4. **Automation**: Streamlines deployment through Infrastructure as Code (IaC).

---

## **Troubleshooting**

### **Common Issues**

1. **Authentication Failure**:

   * Ensure the Azure CLI is logged in with the correct subscription.
   * Run `az login` to authenticate.

2. **Module Not Found**:

   * Check if `terraform init` was successfully executed.
   * Ensure internet access for downloading modules.

3. **Deployment Errors**:

   * Review the output of `terraform plan` for misconfigured variables.
   * Verify that the container image exists in the specified registry.

### **Logs and Diagnostics**

* Enable detailed logging by adding `TF_LOG=DEBUG` to your command:

  ```bash
  TF_LOG=DEBUG terraform apply
  ```
* Check Azure Portal for additional diagnostic information.

---

## **Contributing**

We welcome contributions! Feel free to open issues, submit pull requests, or suggest improvements to enhance this repository.

---

.
