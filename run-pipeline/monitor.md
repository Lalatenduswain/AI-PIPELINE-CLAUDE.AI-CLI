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