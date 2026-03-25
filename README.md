# Module 1: GitHub Actions Examples

This module contains comprehensive GitHub Actions examples designed for teaching AI/DevOps concepts. Each workflow demonstrates key concepts with real-world scenarios.

## 📋 Table of Contents

1. [Prerequisites](#-prerequisites)
2. [Getting Started](#-getting-started)
3. [Hello World](#1-hello-world)
4. [Parallelism and Sequencing](#2-parallelism-and-sequencing)
5. [Conditionals](#3-conditionals)
6. [JavaScript Library Automation](#4-javascript-library-automation)

## ✅ Prerequisites

Before working with this module, make sure you have:

- A [GitHub](https://github.com) account
- Git installed and configured locally
- A GitHub **Personal Access Token (PAT)** with `repo` and `workflow` scopes

> **Note:** Pushing files under `.github/workflows/` requires the `workflow` scope. Standard OAuth tokens (e.g. VS Code's built-in Git auth) will be rejected. Generate a PAT at **GitHub > Settings > Developer settings > Personal access tokens > Tokens (classic)** and update your remote:
> ```bash
> git remote set-url origin https://<YOUR_TOKEN>@github.com/<your-username>/<your-repo>.git
> ```

---

## 🚀 Getting Started

```bash
# Clone the repository
git clone https://github.com/AntonioHellin/infra_and_cloud_bigschool.git
cd infra_and_cloud_bigschool

# Explore the workflows
ls .github/workflows/
```

Workflows trigger automatically on `push` or `pull_request` to `main`, or manually via **Actions > Run workflow** in the GitHub UI.

---

## 🎯 Learning Objectives

By studying these examples, students will understand:

- Basic GitHub Actions syntax and structure
- Job dependencies and execution order
- Parallel vs sequential job execution
- Conditional logic and branching strategies
- Real-world CI/CD automation patterns
- Security considerations and best practices

---

## 1. Hello World

**File**: `.github/workflows/01-hello-world.yml`

### 📖 Concepts Demonstrated

- **Basic workflow structure**: name, triggers (on), jobs, steps
- **Runners**: Using `ubuntu-latest` as the execution environment
- **Simple commands**: `echo`, `date`, multi-line scripts
- **GitHub context variables**: `$RUNNER_OS`, `$GITHUB_ACTOR`, etc.
- **Triggers**: push, pull_request, workflow_dispatch
- **outputs**: Passing data between jobs using `$GITHUB_OUTPUT`
- **Reusable actions**: Defining common patterns for reuse


---

## 2. Parallelism and Sequencing

**File**: `.github/workflows/02-parallelism-sequencing.yml`

### 📖 Concepts Demonstrated

- **Job dependencies**: Using `needs` keyword
- **Parallel execution**: Jobs running simultaneously
- **Sequential execution**: Jobs waiting for dependencies
- **Matrix strategies**: Running jobs across multiple configurations
- **Job outputs**: Passing data between jobs
- **Artifact handling**: Sharing data between jobs
---

## 3. Conditionals

**File**: `.github/workflows/03-conditionals.yml`

### 📖 Concepts Demonstrated

- **Basic if statements**: Simple conditional logic
- **Job-level conditions**: Running entire jobs conditionally
- **Step-level conditions**: Running individual steps conditionally
- **Branch detection**: Different behavior for main vs other branches
- **Manual inputs**: Boolean flags to control workflow behavior
- **Always conditions**: Steps that run regardless of failures

---

## 4. JavaScript Library Automation

**File**: `.github/workflows/04-js-library-automation.yml`

### 📖 Concepts Demonstrated

- **Simple CI/CD pipeline** for JavaScript projects
- **Sequential job dependencies** (install → test → build → publish)
- **Conditional publishing** (only when requested or on tags)
- **Basic Node.js setup** and dependency management
- **Build verification** and testing
- **Publication workflow** with proper gating

---
