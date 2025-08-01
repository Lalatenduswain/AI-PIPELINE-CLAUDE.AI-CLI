# Task: Database Setup
## Objective
Configure MongoDB Atlas for the task management app.

## Inputs
- Features: Store users, tasks, and task categories.
- Database: MongoDB Atlas.

## Instructions
1. Define MongoDB schemas for User, Task, and Category.
2. Provide instructions to set up a MongoDB Atlas cluster.
3. Generate a connection string template for `.env`.
4. Include a script to seed initial data (e.g., sample tasks and categories).

## Outputs
- Save schemas to `src/server/models/`.
- Save setup instructions to `docs/database-setup.md`.
- Save seed script to `scripts/seed.js`.

## Constraints
- Use MongoDB v6, Mongoose v7.
- Ensure secure connection with SSL.