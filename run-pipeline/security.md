# Task: Security Checks
## Objective
Perform code quality and security analysis.

## Inputs
- Source code: `src/`.
- SonarQube server: `http://sonar.example.com`.
- Snyk CLI configured locally.

## Instructions
1. Generate `sonar-project.properties` for SonarQube analysis.
2. Run Snyk scan on `package.json` files.
3. Perform OWASP ZAP scan on `http://localhost:3000`.
4. List vulnerabilities and mitigation steps.

## Outputs
- Save SonarQube config to `sonar-project.properties`.
- Save security report to `reports/security.md`.

## Constraints
- Use SonarQube v10, Snyk CLI, OWASP ZAP v2.12.
- Focus on OWASP Top 10 vulnerabilities.