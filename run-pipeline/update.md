# Task: Dependency Updates
## Objective
Check and update project dependencies.

## Inputs
- `package.json` files in `src/server/` and `src/client/`.

## Instructions
1. Identify outdated dependencies using `npm outdated`.
2. Suggest safe updates (patch/minor versions).
3. Generate updated `package.json` files.

## Outputs
- Save updated files to `src/server/package.json` and `src/client/package.json`.

## Constraints
- Avoid breaking changes (no major version updates).
- Use npm v8.