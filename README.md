# cloud-infra-automation

A hands-on engineering repository demonstrating modern Cloud Infrastructure as Code (IaC) and CI/CD automation using GitHub Actions and Terraform.

---

## Project Overview

`cloud-infra-automation` provides modular, practical examples for designing automated CI/CD pipelines and managing cloud resources declaratively. The repository contains two distinct learning and operational modules:

- **Module 1 (`.github/workflows/`)**: Progressive GitHub Actions workflows demonstrating automation fundamentals, matrix strategies, parallel/sequential job dependencies, conditional routing, and automated publishing.
- **Module 2 (`module-2/`)**: Terraform configuration managing GitHub repositories as code, including automated repository creation, branch protection policies, workflow provisioning, and metadata management.

---

## Features

- **Progressive GitHub Actions Workflows**:
  - `01-hello-world.yml`: Workflow triggers, context variables, outputs, and basic runners.
  - `02-parallelism-sequencing.yml`: DAG job dependencies (`needs`), parallel execution, and artifact passing.
  - `03-conditionals.yml`: Complex step/job condition logic, branch-sensitive execution, and input flags.
  - `04-js-library-automation.yml`: End-to-end continuous integration and delivery lifecycle (install, test, build, conditional release).
- **Declarative Infrastructure with Terraform**:
  - Automated GitHub repository lifecycle management via `integrations/github` provider.
  - Enforced branch protection rules and mandatory PR reviews.
  - Programmatic creation of `.github/workflows` and templated documentation (`README.md.tpl`).

---

## Prerequisites

- **Git**: Configured locally with authenticated GitHub credentials.
- **Terraform**: Version `>= 1.0` (for Module 2).
- **GitHub Personal Access Token (PAT)**:
  - Classic Token with `repo` and `workflow` scopes, or a fine-grained token with Repository Administration and Workflow permissions.
  - Store token securely in your environment as `GITHUB_TOKEN`.

---

## Security Best Practices

> [!CAUTION]
> **Never embed authentication tokens directly into Git remote URLs** (e.g., `https://<TOKEN>@github.com/...`). Embedding secrets into URLs causes credentials to be written to `.git/config` in plaintext and risks leakage through process tables or system logs.

### Recommended Git Authentication

Use either **SSH keys** or the **Git Credential Manager**:

```bash
# Option A: SSH (Recommended)
git remote set-url origin git@github.com:AntonioHellin/cloud-infra-automation.git

# Option B: Git Credential Manager (HTTPS)
git credential-manager configure
```

For automated scripts, export credentials as environment variables rather than embedding them into scripts:

```bash
export GITHUB_TOKEN="ghp_yourSecureTokenHere"
```

---

## Module 1: GitHub Actions CI/CD

Workflows are located in `.github/workflows/` and can be triggered on push or manually via GitHub Actions dispatch.

```bash
# Inspect available workflows
ls -la .github/workflows/
```

### Workflow Catalog

1. **`01-hello-world.yml`**: Baseline workflow illustrating syntax, variables (`$GITHUB_ACTOR`, `$RUNNER_OS`), and job steps.
2. **`02-parallelism-sequencing.yml`**: Multi-job orchestration showing parallel runs, matrix builds, and inter-job output passing.
3. **`03-conditionals.yml`**: Branch filtering and conditional execution expressions (`if: github.ref == 'refs/heads/main'`).
4. **`04-js-library-automation.yml`**: Simulated JavaScript package release pipeline with build, test, and release gates.

---

## Module 2: Terraform Infrastructure as Code

Module 2 provisions and governs GitHub repositories declaratively.

### Directory Structure

```
module-2/
├── main.tf                    # Core resource definitions (repo, files, branch protection)
├── variables.tf               # Input variable specifications
├── outputs.tf                 # Output attribute definitions
├── terraform.tfvars.example   # Variable template (rename to terraform.tfvars)
└── templates/
    ├── README.md.tpl          # Templated README for provisioned repositories
    └── demo-workflow.yml      # Templated workflow deployed by Terraform
```

### Execution Steps

1. Navigate to the module directory:
   ```bash
   cd module-2
   ```

2. Copy the example variables file and adjust parameters:
   ```bash
   cp terraform.tfvars.example terraform.tfvars
   ```

3. Export your GitHub token:
   ```bash
   export GITHUB_TOKEN="ghp_your_token_here"
   # On Windows PowerShell:
   # $env:GITHUB_TOKEN="ghp_your_token_here"
   ```

4. Initialize and apply Terraform:
   ```bash
   terraform init
   terraform plan
   terraform apply
   ```

5. When finished, decommission resources safely:
   ```bash
   terraform destroy
   ```

---
