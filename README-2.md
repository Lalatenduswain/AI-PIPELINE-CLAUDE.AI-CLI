# Comprehensive Plan for Building a Task Management Web Application

## Objective
Create a scalable, secure task management web application with a CI/CD pipeline, security checks, and deployment, designed for a beginner using modern tools and a modular Markdown-based workflow.

## Architecture Overview
- **Frontend**: React app with Tailwind CSS, hosted on AWS EC2.
- **Backend**: Node.js/Express.js REST API, connected to MongoDB.
- **Database**: MongoDB hosted on MongoDB Atlas (cloud).
- **CI/CD**: GitHub Actions for linting, testing, building, and deploying.
- **Security**: SonarQube for code quality, Snyk for dependencies, OWASP ZAP for penetration testing.
- **Deployment**: Docker containers on AWS EC2 with Nginx reverse proxy.
- **Version Control**: GitHub repository.
- **Automation**: Claude.ai CLI to process Markdown files.

## Tools Required
- **Node.js v20**: Backend runtime.
- **React v18**: Frontend framework.
- **MongoDB Atlas**: Cloud database.
- **Docker**: Containerization.
- **GitHub**: Source control and CI/CD.
- **SonarQube Community v10**: Code quality analysis.
- **Snyk**: Dependency security.
- **OWASP ZAP**: Penetration testing.
- **AWS EC2**: Hosting.
- **Claude.ai CLI**: Task automation (optional, can be manual).
- **VS Code**: Code editor for beginners.

## Prerequisites
1. Install Node.js: `https://nodejs.org/en/download/`.
2. Install Docker Desktop: `https://www.docker.com/products/docker-desktop/`.
3. Set up a GitHub account and repository: `https://github.com/new`.
4. Sign up for MongoDB Atlas: `https://www.mongodb.com/cloud/atlas`.
5. Install Claude.ai CLI (optional): Follow `https://docs.anthropic.com/`.
6. Set up an AWS account: `https://aws.amazon.com/free/`.
7. Install VS Code: `https://code.visualstudio.com/`.

## Directory Structure
```
task-app/
├── src/
│   ├── client/           # React frontend
│   ├── server/           # Node.js backend
│   └── tests/            # Unit and integration tests
├── pipeline/             # Markdown files for Claude.ai CLI
├── docs/                 # Documentation (architecture, etc.)
├── scripts/              # Automation scripts
├── reports/              # Security and code quality reports
└── .github/workflows/    # CI/CD pipelines
```

## Step-by-Step Plan

### Step 1: Project Setup and Planning
**File**: `pipeline/plan.md`
**Objective**: Define the project structure and architecture.
**Instructions**:
1. Create a GitHub repository (`task-app`).
2. Generate a folder structure for the project.
3. Define a high-level architecture diagram in Mermaid syntax.
4. Output files to `docs/`.
**Sample Prompt**:
```markdown
# Task: Project Planning
## Objective
Plan a task management web app with Node.js backend and React frontend.

## Inputs
- Features: User authentication, task CRUD (create, read, update, delete).
- Tech: Node.js v20, React v18, MongoDB Atlas, AWS EC2.

## Instructions
1. Define tech stack and key features.
2. Generate folder structure for backend, frontend, and tests.
3. Create a Mermaid architecture diagram.

## Outputs
- Save folder structure to `docs/structure.md`.
- Save diagram to `docs/architecture.md`.

## Constraints
- Keep architecture simple for a beginner.
- Use MongoDB Atlas for database.
```

### Step 2: Backend Development
**File**: `pipeline/backend.md`
**Objective**: Create a Node.js/Express.js REST API with MongoDB.
**Instructions**:
1. Set up Express.js server with routes for `/tasks` and `/auth`.
2. Connect to MongoDB Atlas.
3. Implement CRUD endpoints and JWT-based authentication.
4. Output code to `src/server/`.
**Sample Prompt**:
```markdown
# Task: Backend Development
## Objective
Create a Node.js/Express.js REST API for task management.

## Inputs
- Database: MongoDB Atlas (connection string in `.env`).
- Features: Task CRUD, user authentication with JWT.

## Instructions
1. Set up Express.js server with CORS and JSON parsing.
2. Create routes: GET/POST/PUT/DELETE `/tasks`, POST `/auth/register`, POST `/auth/login`.
3. Use Mongoose for MongoDB models (Task, User).
4. Implement JWT authentication for protected routes.

## Outputs
- Save server code to `src/server/app.js`.
- Save models to `src/server/models/`.
- Save routes to `src/server/routes/`.
- Save `.env.example` with required variables.

## Constraints
- Use Express.js v4, Mongoose v7, JWT v9.
- Follow REST API best practices.
```

### Step 3: Frontend Development
**File**: `pipeline/ui.md`
**Objective**: Build a React frontend with Tailwind CSS.
**Instructions**:
1. Create a React app with components for task list, task form, and login.
2. Use Tailwind CSS for styling.
3. Connect to backend API using Axios.
4. Output code to `src/client/`.
**Sample Prompt**:
```markdown
# Task: Frontend Development
## Objective
Create a React frontend with Tailwind CSS for task management.

## Inputs
- API endpoints: `http://localhost:3000/tasks`, `http://localhost:3000/auth`.
- Features: Task list, task form, login page.

## Instructions
1. Set up React app with Vite.
2. Create components: TaskList, TaskForm, Login.
3. Style with Tailwind CSS for responsive design.
4. Use Axios to fetch/post data to backend API.

## Outputs
- Save React app to `src/client/`.
- Save components to `src/client/components/`.

## Constraints
- Use React v18, Tailwind CSS v3, Axios v1.
- Ensure mobile-responsive design.
```

### Step 4: Testing
**File**: `pipeline/test.md`
**Objective**: Generate unit and integration tests.
**Instructions**:
1. Write Jest tests for backend API endpoints.
2. Write React Testing Library tests for frontend components.
3. Aim for 80% code coverage.
4. Output tests to `src/tests/`.
**Sample Prompt**:
```markdown
# Task: Test Generation
## Objective
Generate tests for backend and frontend.

## Inputs
- Backend code: `src/server/`.
- Frontend code: `src/client/`.
- Frameworks: Jest, React Testing Library.

## Instructions
1. Write Jest tests for `/tasks` and `/auth` endpoints.
2. Write React Testing Library tests for TaskList and Login components.
3. Ensure 80% code coverage.

## Outputs
- Save backend tests to `src/tests/server/`.
- Save frontend tests to `src/tests/client/`.

## Constraints
- Use Jest v29, React Testing Library v14.
```

### Step 5: Security Checks
**File**: `pipeline/security.md`
**Objective**: Perform code quality, dependency, and penetration testing.
**Instructions**:
1. Configure SonarQube for static code analysis.
2. Run Snyk for dependency vulnerabilities.
3. Use OWASP ZAP for penetration testing.
4. Output reports to `reports/`.
**Sample Prompt**:
```markdown
# Task: Security Checks
## Objective
Perform security and code quality analysis.

## Inputs
- Source code: `src/`.
- SonarQube server: `http://sonar.example.com`.
- Snyk account: Configured locally.

## Instructions
1. Generate `sonar-project.properties` for SonarQube.
2. Run Snyk scan on `package.json` files.
3. Perform OWASP ZAP scan on `http://localhost:3000`.
4. List vulnerabilities and mitigation steps.

## Outputs
- Save SonarQube config to `sonar-project.properties`.
- Save reports to `reports/security.md`.

## Constraints
- Use SonarQube v10, Snyk CLI, OWASP ZAP v2.12.
- Focus on OWASP Top 10 vulnerabilities.
```

### Step 6: CI/CD Pipeline
**File**: `pipeline/ci-cd.md`
**Objective**: Set up GitHub Actions for build, test, and deployment.
**Instructions**:
1. Create a workflow to lint, test, and build Docker images.
2. Push images to AWS ECR.
3. Deploy to AWS EC2.
4. Output workflow to `.github/workflows/`.
**Sample Prompt**:
```markdown
# Task: CI/CD Pipeline Setup
## Objective
Automate build, test, and deployment with GitHub Actions.

## Inputs
- Repository: `https://github.com/username/task-app`.
- AWS ECR and EC2 for deployment.

## Instructions
1. Create workflow to lint (ESLint), test (Jest), and build Docker images.
2. Push images to AWS ECR.
3. Deploy to EC2 via SSH.

## Outputs
- Save workflow to `.github/workflows/ci-cd.yml`.

## Constraints
- Use Node.js v20, Docker v24.
- Use AWS credentials as GitHub secrets.
```

### Step 7: Deployment
**File**: `pipeline/deploy.md`
**Objective**: Deploy the app to AWS EC2.
**Instructions**:
1. Create Dockerfiles for backend and frontend.
2. Set up Nginx as a reverse proxy.
3. Deploy containers to EC2.
4. Output files to `src/`.
**Sample Prompt**:
```markdown
# Task: Deployment Setup
## Objective
Deploy the app to AWS EC2 with Docker.

## Inputs
- Backend: `src/server/`.
- Frontend: `src/client/`.
- Target: AWS EC2 instance.

## Instructions
1. Create Dockerfiles for Node.js backend and React frontend.
2. Configure Nginx as reverse proxy.
3. Provide EC2 deployment script.

## Outputs
- Save Dockerfiles to `src/server/Dockerfile` and `src/client/Dockerfile`.
- Save Nginx config to `src/nginx.conf`.
- Save deployment script to `scripts/deploy.sh`.

## Constraints
- Use Docker v24, Nginx v1.24.
- Ensure HTTPS with self-signed certificates.
```

### Step 8: Monitoring
**File**: `pipeline/monitor.md`
**Objective**: Set up basic logging and monitoring.
**Instructions**:
1. Configure Winston for backend logging.
2. Set up Prometheus and Grafana for monitoring.
3. Output configs to `src/server/` and `monitoring/`.
**Sample Prompt**:
```markdown
# Task: Monitoring Setup
## Objective
Configure logging and monitoring for the app.

## Inputs
- Backend: `src/server/`.
- Monitoring: Prometheus, Grafana.

## Instructions
1. Add Winston logging to backend.
2. Configure Prometheus metrics for API endpoints.
3. Set up Grafana dashboard for monitoring.

## Outputs
- Save Winston config to `src/server/logger.js`.
- Save Prometheus/Grafana configs to `monitoring/`.

## Constraints
- Use Winston v3, Prometheus v0.12, Grafana v10.
```

### Step 9: Push to GitHub
**File**: `pipeline/push.md`
**Objective**: Commit and push code to GitHub.
**Instructions**:
1. Stage all files.
2. Commit with a meaningful message.
3. Push to GitHub repository.
4. Output script to `scripts/`.
**Sample Prompt**:
```markdown
# Task: Git Push
## Objective
Commit and push code to GitHub.

## Inputs
- Repository: `https://github.com/username/task-app`.
- Files: `src/`, `docs/`, `scripts/`, `reports/`.

## Instructions
1. Stage all modified files.
2. Commit with message: "Complete task-app setup".
3. Push to `main` branch.

## Outputs
- Save Git script to `scripts/push.sh`.

## Constraints
- Exclude `.env` and sensitive files.
```

## Execution Workflow
1. **Set Up Environment**:
   - Install prerequisites (Node.js, Docker, etc.).
   - Create GitHub repository and clone locally.
   - Set up MongoDB Atlas and AWS EC2.
2. **Create Markdown Files**:
   - Copy the above prompts into `pipeline/` directory.
3. **Run with Claude.ai CLI** (optional):
   ```bash
   claude --file pipeline/plan.md
   claude --file pipeline/backend.md
   claude --file pipeline/ui.md
   # ... continue for all files
   ```
   Or use a batch script:
   ```bash
   # scripts/run-pipeline.sh
   #!/bin/bash
   files=("plan.md" "backend.md" "ui.md" "test.md" "security.md" "ci-cd.md" "deploy.md" "monitor.md" "push.md")
   for file in "${files[@]}"; do
     echo "Processing $file..."
     claude --file "pipeline/$file"
   done
   ```
4. **Manual Execution**:
   - If not using Claude.ai CLI, manually create files based on the prompts’ outputs (e.g., copy generated code to `src/`).
   - Run commands like `npm install`, `docker build`, etc., as needed.
5. **Test Locally**:
   - Start backend: `cd src/server && npm start`.
   - Start frontend: `cd src/client && npm start`.
   - Test API with Postman or curl.
6. **Deploy**:
   - Run `scripts/deploy.sh` to deploy to EC2.
   - Verify app at `http://<ec2-public-ip>`.

## Beginner Tips
- **Start Small**: Focus on one file (e.g., `plan.md`) before running the full pipeline.
- **Use VS Code**: Its extensions for JavaScript, Docker, and Git make coding easier.
- **Check Outputs**: After each step, verify generated files (e.g., `src/server/app.js`).
- **Learn Basics**: Watch tutorials on Node.js, React, and Docker (e.g., freeCodeCamp on YouTube).
- **Ask for Help**: If stuck, share specific errors or outputs for troubleshooting.

## Security Best Practices
- Use `.env` for secrets (e.g., MongoDB URI, JWT secret).
- Enable HTTPS with Nginx.
- Regularly update dependencies with `npm update`.
- Monitor SonarQube and Snyk reports for issues.

## Resources
- Node.js: `https://nodejs.org/en/docs/`
- React: `https://react.dev/learn`
- MongoDB Atlas: `https://www.mongodb.com/docs/atlas/`
- GitHub Actions: `https://docs.github.com/en/actions`
- AWS EC2: `https://aws.amazon.com/ec2/getting-started/`
- SonarQube: `https://docs.sonarqube.org/latest/`
- Snyk: `https://docs.snyk.io/`
- OWASP ZAP: `https://www.zaproxy.org/docs/`
