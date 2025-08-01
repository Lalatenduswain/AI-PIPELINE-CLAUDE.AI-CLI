# Task: API Testing
## Objective
Generate tests for REST API endpoints.

## Inputs
- API routes: `src/server/routes/`.
- Framework: Express.js.

## Instructions
1. Create a Postman collection for `/tasks`, `/auth`, and `/categories` endpoints.
2. Write automated tests using Supertest for all endpoints.
3. Validate responses (status codes, data structure).

## Outputs
- Save Postman collection to `tests/api-collection.json`.
- Save Supertest scripts to `src/tests/server/api/`.

## Constraints
- Use Supertest v6, Postman-compatible JSON.
- Test all CRUD operations.