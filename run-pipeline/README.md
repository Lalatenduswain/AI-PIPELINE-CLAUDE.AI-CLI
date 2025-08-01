# Task Management Web App Pipeline 🚀

Welcome to the **Task Management Web App Pipeline** repository! This project provides a modular, beginner-friendly workflow to build, test, secure, and deploy a robust task management web application using the Claude.ai CLI. The pipeline leverages modern tools like Node.js, React, MongoDB Atlas, GitHub Actions, SonarQube, Snyk, OWASP ZAP, and Docker, deployed on AWS EC2.

**Author:** Lalatendu Swain | [GitHub](https://github.com/Lalatenduswain) | [Website](https://blog.lalatendu.info/)

---

## 📌 Features

- **Modular Workflow**: Organized Markdown files (`plan.md`, `frontend.md`, etc.) for each development phase, processed via Claude.ai CLI.
- **Full-Stack App**: Node.js/Express.js backend with MongoDB Atlas, React frontend with Tailwind CSS.
- **Testing**: Unit and integration tests with Jest and React Testing Library, plus API tests with Supertest and Postman.
- **Security**: Code quality scans with SonarQube, dependency checks with Snyk, and penetration testing with OWASP ZAP.
- **CI/CD**: Automated build, test, and deployment using GitHub Actions.
- **Deployment**: Dockerized app deployed to AWS EC2 with Nginx reverse proxy.
- **Monitoring**: Logging with Winston, metrics with Prometheus, and dashboards with Grafana.
- **Documentation**: User and developer guides generated for easy onboarding.
- **Interactive Script**: `run-pipeline.sh` provides a menu to select tasks (e.g., `1` for planning, `2` for frontend).

---

## 📖 Installation Guide

### Prerequisites

Before running the pipeline, ensure the following tools and accounts are set up:

- **Node.js v20**: Install from [nodejs.org](https://nodejs.org/en/download/).
  - Verify: `node -v` (should output `v20.x.x`).
- **Docker**: Install [Docker Desktop](https://www.docker.com/products/docker-desktop/) or server version.
  - Verify: `docker --version`.
  - Ensure Docker daemon is running: `sudo systemctl start docker`.
- **Git**: Install with `sudo apt install git` (Ubuntu) or equivalent.
  - Verify: `git --version`.
- **Claude.ai CLI**: Follow setup instructions at [docs.anthropic.com](https://docs.anthropic.com/).
  - Configure API key in `~/.claude/config`.
- **GitHub Account**: Create a repository at [github.com/new](https://github.com/new).
- **MongoDB Atlas**: Sign up at [mongodb.com/cloud/atlas](https://www.mongodb.com/cloud/atlas).
- **AWS Account**: Set up EC2 instance via [aws.amazon.com/free](https://aws.amazon.com/free/).
- **Snyk CLI**: Install with `npm install -g snyk` and authenticate (`snyk auth`).
- **OWASP ZAP**: Install from [zaproxy.org](https://www.zaproxy.org/download/).
- **SonarQube**: Access a server (e.g., `http://sonar.example.com`) or set up locally with Docker.
  - Example: `docker run -d -p 9000:9000 sonarqube:10.6-community`.
- **Text Editor**: Recommended: VS Code with JavaScript, Docker, and Markdown extensions.
- **Permissions**: Some commands require `sudo` (e.g., Docker, file permissions).
- **Bash**: Ensure a Bash-compatible shell (`bash --version`).

### Clone the Repository

Clone the repository to your local machine:

```bash
git clone https://github.com/Lalatenduswain/run-pipeline.git
cd run-pipeline
```

### Directory Structure

```
run-pipeline/
├── pipeline/             # Markdown files for tasks
│   ├── plan.md          # Project planning
│   ├── frontend.md      # Frontend development
│   ├── backend.md       # Backend development
│   ├── database.md      # Database setup
│   ├── test.md          # Unit/integration tests
│   ├── api-test.md      # API testing
│   ├── code-review.md   # Code quality review
│   ├── security.md      # Security checks
│   ├── ci-cd.md         # CI/CD pipeline
│   ├── deploy.md        # Deployment setup
│   ├── monitor.md       # Monitoring setup
│   ├── update.md        # Dependency updates
│   ├── docs.md          # Documentation
│   ├── push.md          # Git operations
├── src/                  # Source code
│   ├── client/           # React frontend
│   ├── server/           # Node.js backend
│   ├── tests/            # Tests
├── docs/                 # Documentation
├── scripts/              # Automation scripts
├── reports/              # Security/quality reports
├── .github/workflows/    # CI/CD workflows
├── run-pipeline.sh       # Task selection script
```

### Install Dependencies

1. **Create directories**:
   ```bash
   mkdir -p pipeline src/client src/server src/tests docs scripts reports .github/workflows
   ```

2. **Copy Markdown files**:
   - Place the provided Markdown files (`plan.md`, `frontend.md`, etc.) in `pipeline/`.
   - Ensure `run-pipeline.sh` is in the root directory.

3. **Set script permissions**:
   ```bash
   chmod +x run-pipeline.sh
   ```

4. **Install Node.js dependencies** (after generating code):
   - Backend: `cd src/server && npm install`.
   - Frontend: `cd src/client && npm install`.

### Configure Environment

1. **MongoDB Atlas**:
   - Create a cluster and obtain the connection string (e.g., `mongodb+srv://dummyuser:<password>@cluster0.mongodb.net/taskapp`).
   - Save in `src/server/.env` (generated by `backend.md`).

2. **AWS EC2**:
   - Launch an EC2 instance (Ubuntu 24.04 recommended).
   - Configure security groups to allow HTTP (port 80), HTTPS (443), and SSH (22).

3. **GitHub Secrets**:
   - Add `SONAR_TOKEN`, `SONAR_HOST_URL`, `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`, and SSH credentials to GitHub repository secrets.

4. **Claude.ai CLI**:
   - Ensure API key is configured: `cat ~/.claude/config`.

### Run the Script

The `run-pipeline.sh` script provides an interactive menu to process pipeline tasks using the Claude.ai CLI.

1. Execute the script:
   ```bash
   ./run-pipeline.sh
   ```

2. Sample output:
   ```
   Logging in to Claude.ai CLI...
   Login successful!

   Task Selection Menu:
   1. Plan Project (plan.md)
   2. Develop Frontend (frontend.md)
   3. Develop Backend (backend.md)
   4. Set Up Database (database.md)
   5. Generate Tests (test.md)
   6. Test APIs (api-test.md)
   7. Review Code (code-review.md)
   8. Run Security Checks (security.md)
   9. Set Up CI/CD (ci-cd.md)
   10. Configure Deployment (deploy.md)
   11. Set Up Monitoring (monitor.md)
   12. Update Dependencies (update.md)
   13. Generate Documentation (docs.md)
   14. Push to GitHub (push.md)
   15. Exit
   Enter your choice (1-15):
   ```

3. Select a task (e.g., `1` for `plan.md`) to generate outputs (e.g., `docs/structure.md`).

### Script Explanation

**Script Name**: `run-pipeline.sh`

**Purpose**: Automates the task management web app development pipeline by providing a menu-driven interface to process Markdown files with the Claude.ai CLI.

**Functionality**:
- **Login Check**: Verifies Claude.ai CLI configuration (`~/.claude/config`).
- **Task Selection**: Displays a menu with 15 options, each corresponding to a Markdown file (e.g., `plan.md`, `frontend.md`).
- **Task Execution**: Runs `claude --file pipeline/<file>.md` for the selected task.
- **Error Handling**: Reports errors if the CLI fails and confirms successful task completion.
- **Exit Option**: Allows graceful exit with option `15`.

**Key Features**:
- Beginner-friendly interface with numbered choices.
- Modular design, aligning with Markdown-based pipeline.
- Safe execution with API key validation.

**Usage**:
- Run `./run-pipeline.sh` and select tasks sequentially (start with `1` for planning).
- Outputs are saved to specified directories (e.g., `src/`, `docs/`, `reports/`).

### Test the Application

1. **Backend**:
   ```bash
   cd src/server
   npm install
   npm start
   ```
   - Access API at `http://localhost:3000/tasks`.

2. **Frontend**:
   ```bash
   cd src/client
   npm install
   npm start
   ```
   - Open `http://localhost:3001` in a browser.

3. **Database**:
   - Run seed script: `node scripts/seed.js`.

4. **API Tests**:
   - Import `tests/api-collection.json` into Postman.
   - Run Supertest: `cd src/tests/server/api && npm test`.

### Deploy to AWS EC2

1. Run deployment task (`deploy.md`):
   - Select option `10` in the script.
   - Outputs: `src/server/Dockerfile`, `src/client/Dockerfile`, `src/nginx.conf`, `scripts/deploy.sh`.

2. Execute deployment:
   ```bash
   chmod +x scripts/deploy.sh
   ./scripts/deploy.sh
   ```

3. Verify:
   - Access app at `http://<ec2-public-ip>`.

### Monitor and Maintain

1. **Monitoring**:
   - Check logs in `src/server/logs/` (generated by `monitor.md`).
   - Access Grafana at `http://<ec2-ip>:3000` for metrics.

2. **Security**:
   - Review `reports/security.md` and `reports/code-review.md`.
   - Update dependencies with option `12` (`update.md`).

3. **Documentation**:
   - Read `docs/user-guide.md` and `docs/developer-guide.md` (option `13`).

---

## 💖 Support & Donations

Encountering issues? Submit a bug report or feature request on our [GitHub Issues page](https://github.com/Lalatenduswain/run-pipeline/issues).

If you find this project helpful, consider showing your appreciation:

- ⭐ Star the repository on [GitHub](https://github.com/Lalatenduswain/run-pipeline).
- ☕ Buy me a coffee at [Buy Me a Coffee](https://www.buymeacoffee.com/lalatendu.swain).
- 📧 Contact me via [blog.lalatendu.info](https://blog.lalatendu.info/).

---

## Disclaimer | Running the Script

This script and pipeline are provided as-is and may require modifications based on your environment. Use at your own risk. The author is not liable for any damages or issues caused by its usage.

- **Test Locally First**: Run tasks in a non-production environment.
- **Secure Secrets**: Never commit `.env` files or sensitive data to Git.
- **Backup Data**: Ensure backups before running deployment or database tasks.
- **Permissions**: Use `sudo` cautiously for Docker and system commands.

---

## Resources

- [Node.js Documentation](https://nodejs.org/en/docs/)
- [React Documentation](https://react.dev/learn)
- [MongoDB Atlas](https://www.mongodb.com/docs/atlas/)
- [GitHub Actions](https://docs.github.com/en/actions)
- [SonarQube](https://docs.sonarqube.org/latest/)
- [Snyk](https://docs.snyk.io/)
- [OWASP ZAP](https://www.zaproxy.org/docs/)
- [AWS EC2](https://aws.amazon.com/ec2/getting-started/)
- [Claude.ai CLI](https://docs.anthropic.com/)