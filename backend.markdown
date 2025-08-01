# Task: Backend Development
## Objective
Create a Node.js/Express.js REST API for task management.

## Inputs
- Database: MongoDB Atlas (connection string in `.env`).
- Features: Task CRUD, user authentication with JWT, task categories.

## Instructions
1. Set up Express.js server with CORS and JSON parsing.
2. Create routes: GET/POST/PUT/DELETE `/tasks`, POST `/auth/register`, POST `/auth/login`, GET/POST `/categories`.
3. Use Mongoose for MongoDB models (Task, User, Category).
4. Implement JWT authentication for protected routes.

## Outputs
- Save server code to `src/server/app.js`.
- Save models to `src/server/models/`.
- Save routes to `src/server/routes/`.
- Save `.env.example` with required variables.

## Constraints
- Use Express.js v4, Mongoose v7, JWT v9.
- Follow REST API best practices.