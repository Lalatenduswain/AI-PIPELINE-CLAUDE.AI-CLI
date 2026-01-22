# Task: CI/CD Pipeline Setup
## Objective
Automate build, test, and deployment with GitHub Actions.

## Inputs
- Repository: `https://github.com/username/task-app`.
- AWS ECR and EC2 for deployment.

## Instructions
1. Create a workflow to lint (ESLint), test (Jest), and build Docker images.
2. Push images to AWS ECR.
3. Deploy to EC2 via SSH.

## Outputs
- Save workflow to `.github/workflows/ci-cd.yml`.

## Constraints
- Use Node.js v20, Docker v24.
- Use AWS credentials as GitHub secrets.