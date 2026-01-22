# CLAUDE.md - AI Pipeline Repository Guide

## Project Overview

This repository provides an **AI-driven development pipeline** using Claude Code CLI. It automates full-stack web application development through modular markdown-based workflows, custom slash commands, and specialized sub-agents.

**Primary Use Cases:**
- Generating complete web applications from specifications
- Automated testing (unit, E2E, security, accessibility, performance)
- CI/CD pipeline automation
- Code review and quality analysis
- Linear ticket management

## Directory Structure

```
/
├── .claude/
│   ├── commands/          # 38+ slash commands (user-invocable)
│   ├── agents/            # 6 sub-agents for specialized tasks
│   └── settings.json      # MCP and permission configuration
├── run-pipeline/          # Pipeline task markdown files
│   ├── plan.md           # Project planning prompts
│   ├── frontend.md       # Frontend development
│   ├── backend.md        # Backend development
│   ├── database.md       # Database setup
│   ├── test.md           # Testing generation
│   ├── security.md       # Security checks
│   ├── deploy.md         # Deployment configuration
│   └── ...               # Additional pipeline stages
├── run-pipeline.sh        # Interactive pipeline runner script
├── README.md              # Main documentation (includes Universal Project Architect v3.0)
└── PDF/                   # Reference documentation
```

## Command Categories

### Planning & Research
- `/create_plan` - Interactive plan creation with research (preferred)
- `/research_codebase` - Document codebase structure and patterns
- `/research_codebase_generic` - Generic variant without thoughts directory

### Implementation
- `/implement_plan` - Execute approved plans from thoughts/shared/plans/
- `/iterate_plan` - Refine existing plans based on feedback
- `/do-it-one-by-one` - Smart task prioritization and execution

### Testing (Comprehensive Suite)
- `/devcheck` - Quick environment health check (run first)
- `/testall` - Complete test suite orchestration
- `/apitest` - API endpoint testing with CRUD validation
- `/e2etest` - Playwright end-to-end tests
- `/dbtest` - Database schema and relationship testing
- `/perftest` - Performance bottleneck analysis
- `/securitytest` - OWASP Top 10 vulnerability scanning
- `/accessibilitytest` - WCAG 2.2 compliance testing
- `/loadtest` - Load and stress testing
- `/mobiletest` - Mobile responsiveness and PWA testing

### Git Workflow
- `/commit` - Create commits with user approval
- `/describe_pr` - Generate PR descriptions from templates
- `/create_handoff` - Document session for handoff

### Linear Integration
- `/linear` - Manage Linear tickets via MCP
- `/ralph_research` - Research highest priority ticket
- `/ralph_plan` - Plan highest priority ticket

## Sub-Agents

When spawning sub-agents via the Task tool, use these specialized types:

| Agent | Purpose | Use When |
|-------|---------|----------|
| `codebase-locator` | Find files and directories | Need to locate specific files by pattern |
| `codebase-analyzer` | Analyze implementation details | Need to understand how code works |
| `codebase-pattern-finder` | Find similar implementations | Looking for reusable patterns |
| `thoughts-locator` | Find documents in thoughts/ | Searching for context/decisions |
| `thoughts-analyzer` | Analyze thought documents | Deep diving on research topics |
| `web-search-researcher` | Web research with citations | Need current external information |

**Agent Constraints:** All agents are read-only and document existing code. They do NOT suggest improvements or modifications.

## Conventions

### File References
Always use `file_path:line_number` format when referencing code:
```
src/server/auth.js:42
```

### Plan Files
Plans are stored in: `thoughts/shared/plans/`
Format: `YYYY-MM-DD-descriptive-name.md`

### Thoughts Directory Structure
```
thoughts/
├── shared/
│   ├── plans/           # Implementation plans
│   ├── research/        # Research findings
│   └── decisions/       # Architecture decisions
└── sessions/            # Session-specific notes
```

### Command Output
Commands should provide:
1. Structured findings with file:line references
2. Categorized results (by type, severity, etc.)
3. Actionable next steps
4. Success/failure indicators using checkmarks

## Pipeline Workflow

The `run-pipeline.sh` script executes tasks sequentially:

1. **Plan** → 2. **Frontend** → 3. **Backend** → 4. **Database** → 5. **Test** → 6. **API Test** → 7. **Code Review** → 8. **Security** → 9. **CI/CD** → 10. **Deploy** → 11. **Monitor** → 12. **Update** → 13. **Docs** → 14. **Push**

Each task corresponds to a markdown file in `run-pipeline/` that provides prompts for Claude.

## Target Technology Stack

When generating applications, default to:

| Layer | Technology |
|-------|------------|
| Frontend | React 18, Tailwind CSS, Vite |
| Backend | Node.js 20, Express.js |
| Database | MongoDB Atlas (or PostgreSQL with Prisma) |
| Auth | JWT with refresh tokens |
| Testing | Jest, React Testing Library, Playwright |
| CI/CD | GitHub Actions |
| Deployment | Docker, AWS EC2, Nginx |
| Security | SonarQube, Snyk, OWASP ZAP |
| Monitoring | Winston, Prometheus, Grafana |

## Important Notes

1. **Read Before Modify**: Always read files completely before suggesting changes
2. **No Placeholders**: Generate complete, working implementations
3. **Security First**: Follow OWASP Top 10 guidelines in all generated code
4. **Test Coverage**: Aim for 80%+ coverage on generated code
5. **Accessibility**: WCAG 2.2 AA compliance is required for UI components

## Environment Assumptions

- Claude CLI configured at `~/.claude/config`
- Node.js v20+ installed
- Docker available for containerization
- Git configured for version control
- Linear MCP server available for ticket management (optional)

## Quick Start Commands

```bash
# Check environment health
/devcheck

# Start a new project plan
/create_plan

# Run comprehensive tests
/testall

# Create a commit
/commit
```
