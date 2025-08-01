# Task: Deployment Setup
## Objective
Deploy the app to AWS EC2 with Docker.

## Inputs
- Backend: `src/server/`.
- Frontend: `src/client/`.
- Target: AWS EC2 instance.

## Instructions
1. Create Dockerfiles for Node.js backend and React frontend.
2. Configure Nginx as a reverse proxy.
3. Provide EC2 deployment script.

## Outputs
- Save Dockerfiles to `src/server/Dockerfile` and `src/client/Dockerfile`.
- Save Nginx config to `src/nginx.conf`.
- Save deployment script to `scripts/deploy.sh`.

## Constraints
- Use Docker v24, Nginx v1.24.
- Ensure HTTPS with self-signed certificates.