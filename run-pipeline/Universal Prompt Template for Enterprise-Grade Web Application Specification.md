# Universal Prompt Template for Enterprise-Grade Web Application Specification

## Instructions
Fill in the placeholders (e.g., `{{APP_IDEA}}`, `{{MAIN_ENTITY}}`) with specific details about your web application. This prompt template is designed to generate a comprehensive technical specification for an enterprise-grade web application, including tech stack, login page design, API routes, Prisma schema, security measures, and deliverables. Submit this prompt to an AI model like Grok 3 to generate the full specification.

---

**Prompt:**

Generate a detailed technical specification for an enterprise-grade web application based on the following details:

1. **Application Idea**: {{APP_IDEA}}  
   - Description: Provide a high-level overview of the application’s purpose and functionality.  
   - Example: A task management system for distributed teams to assign, track, and manage tasks with real-time collaboration.

2. **Main Resource/Entity**: {{MAIN_ENTITY}}  
   - Description: Specify the primary resource or entity the application revolves around (e.g., Task, User, Order).  
   - Example: Task

3. **Fields for Main Entity**:  
   - {{FIELD_1}}: {{FIELD_1_TYPE}} (e.g., title: string)  
   - {{FIELD_2}}: {{FIELD_2_TYPE}} (e.g., status: enum[ToDo, InProgress, Done])  
   - {{FIELD_3}}: {{FIELD_3_TYPE}} (e.g., assignedTo: relation(User))  
   - Add more fields as needed: {{ADDITIONAL_FIELDS}}  
   - Example:  
     - title: string  
     - description: text  
     - status: enum[ToDo, InProgress, Done]  
     - assignedTo: relation(User)  
     - dueDate: dateTime

4. **User Roles and Permissions**:  
   - {{ROLE_1}}: {{ROLE_1_PERMISSIONS}} (e.g., Admin: Full CRUD on all entities, manage users)  
   - {{ROLE_2}}: {{ROLE_2_PERMISSIONS}} (e.g., Member: Create and edit own tasks, view others)  
   - Add more roles as needed: {{ADDITIONAL_ROLES}}  
   - Example:  
     - Admin: Full CRUD on tasks, manage users, view analytics  
     - Member: Create/edit own tasks, view team tasks  
     - Viewer: Read-only access to tasks

5. **Additional Requirements**:  
   - {{ADDITIONAL_REQUIREMENT_1}} (e.g., Real-time notifications for task updates)  
   - {{ADDITIONAL_REQUIREMENT_2}} (e.g., Integration with Slack for alerts)  
   - Add more requirements as needed: {{ADDITIONAL_REQUIREMENTS}}  
   - Example:  
     - Real-time collaboration via WebSockets  
     - Export task reports as PDF  
     - Multi-language support

**Output Requirements**:  
Generate a comprehensive technical specification document with the following sections:  

1. **Overview**: Summarize the application’s purpose, target users, and key features based on the provided idea.  
2. **Tech Stack**:  
   - Frontend: React with TypeScript, Tailwind CSS, and any necessary libraries (e.g., Redux for state management).  
   - Backend: Node.js with Express, TypeScript, and Prisma ORM.  
   - Database: PostgreSQL with Prisma schema.  
   - Authentication: JWT-based with OAuth 2.0 support for third-party logins (e.g., Google, GitHub).  
   - Hosting/Deployment: AWS (ECS or Lambda), Vercel, or similar, with CI/CD via GitHub Actions.  
   - Additional tools: WebSocket for real-time features, Redis for caching, etc.  
   - Justify the choices based on scalability, maintainability, and enterprise needs.  
3. **Login Page Design**:  
   - Describe the UI/UX of the login page (responsive, accessible, Tailwind CSS-based).  
   - Include fields (e.g., email, password, SSO options), error handling, and security features (e.g., rate limiting, CAPTCHA).  
   - Provide a Tailwind CSS snippet for the login page layout.  
4. **API Routes**:  
   - List RESTful API endpoints for the main entity (e.g., `GET /api/{{MAIN_ENTITY}}`, `POST /api/{{MAIN_ENTITY}}`).  
   - Include authentication-protected routes and role-based access control (RBAC).  
   - Provide a table with endpoint, method, description, and required permissions.  
   - Example:  
     | Endpoint | Method | Description | Permissions |  
     |----------|--------|-------------|-------------|  
     | `/api/tasks` | GET | List all tasks | Viewer, Member, Admin |  
     | `/api/tasks` | POST | Create a task | Member, Admin |  
5. **Prisma Schema**:  
   - Provide a Prisma schema (`schema.prisma`) for the main entity and related entities (e.g., User for authentication).  
   - Include fields, relations, and indexes for performance.  
   - Example:  
     ```prisma
     model Task {
       id        Int      @id @default(autoincrement())
       title     String
       status    TaskStatus
       assignedTo User? @relation(fields: [assignedToId], references: [id])
       assignedToId Int?
     }
     enum TaskStatus {
       ToDo
       InProgress
       Done
     }
     ```  
6. **Security Measures**:  
   - Authentication: JWT, OAuth 2.0, password hashing (bcrypt).  
   - Authorization: RBAC for role-based permissions.  
   - Data Protection: HTTPS, input validation, SQL injection prevention via Prisma.  
   - Additional measures: Rate limiting, CSRF protection, CORS configuration.  
7. **Deliverables**:  
   - Source code repository structure (e.g., `/frontend`, `/backend`, `/prisma`).  
   - Deployment pipeline setup (e.g., GitHub Actions workflow).  
   - Documentation: API docs (OpenAPI/Swagger), user guides, and setup instructions.  
   - Testing: Unit tests (Jest), integration tests, and E2E tests (Cypress).  

**Constraints**:  
- Ensure the application is scalable for {{USER_COUNT}} concurrent users (default: 10,000).  
- Support {{SUPPORTED_LANGUAGES}} languages for internationalization (default: English).  
- Follow OWASP Top 10 security best practices.  
- Use modern, enterprise-grade tools and frameworks suitable for {{INDUSTRY}} (default: General).  

**Output Format**:  
- Provide the specification in Markdown format.  
- Include code snippets for the login page (Tailwind CSS), Prisma schema, and sample API route implementation (TypeScript).  
- Wrap the specification in a single `<xaiArtifact>` tag with a unique `artifact_id`, `title="technical_specification.md"`, and `contentType="text/markdown"`.  

**Example Input**:  
- App Idea: Task management system for distributed teams.  
- Main Entity: Task  
- Fields: title (string), description (text), status (enum[ToDo, InProgress, Done]), assignedTo (relation(User)), dueDate (dateTime)  
- Roles: Admin (full CRUD, manage users), Member (create/edit own tasks, view team tasks), Viewer (read-only)  
- Additional Requirements: Real-time notifications, Slack integration, PDF export.  

**Generate the specification now.**

---

## How to Use This Template
1. Replace placeholders (e.g., `{{APP_IDEA}}`, `{{MAIN_ENTITY}}`) with your specific details.
2. Submit the completed prompt to an AI model like Grok 3.
3. The AI will generate a detailed technical specification based on your input, including all required sections and code snippets.
4. Review the output, refine the prompt if needed, and use the specification for development.

## Example Filled Prompt
**Prompt:**

Generate a detailed technical specification for an enterprise-grade web application based on the following details:

1. **Application Idea**: A task management system for distributed teams to assign, track, and manage tasks with real-time collaboration.  
2. **Main Resource/Entity**: Task  
3. **Fields for Main Entity**:  
   - title: string  
   - description: text  
   - status: enum[ToDo, InProgress, Done]  
   - assignedTo: relation(User)  
   - dueDate: dateTime  
4. **User Roles and Permissions**:  
   - Admin: Full CRUD on all entities, manage users  
   - Member: Create and edit own tasks, view team tasks  
   - Viewer: Read-only access to tasks  
5. **Additional Requirements**:  
   - Real-time notifications for task updates  
   - Integration with Slack for alerts  
   - Export task reports as PDF  

**Output Requirements**:  
... (same as above)  

**Constraints**:  
- Ensure the application is scalable for 10,000 concurrent users.  
- Support English and Spanish languages.  
- Follow OWASP Top 10 security best practices.  
- Use modern, enterprise-grade tools suitable for general industry use.  

**Output Format**:  
... (same as above)