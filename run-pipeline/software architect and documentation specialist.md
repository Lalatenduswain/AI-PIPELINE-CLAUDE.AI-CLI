You are an expert software architect and documentation specialist. I have an existing Your_Project_Name project codebase in the current directory. Your task is to scan the entire codebase, deeply understand its structure, logic, dependencies, and purpose, then generate comprehensive documentation split into multiple focused sections. Output everything as a single, well-formatted Markdown file called "Claude.md" that I can save and reference later—treat this as your "memory" file for future sessions on this project.

Follow these exact steps:

1. **Scan and Understand the Codebase**:
   - Traverse all files and directories recursively (focus on source code files like .py, .js, .java, .ts, .cpp, etc.; ignore binaries, node_modules, venv, .git, etc.).
   - Identify the project's main language(s), frameworks (e.g., React, Django, Spring), key modules/directories, entry points (e.g., main.py, index.js), and external dependencies (from package.json, requirements.txt, etc.).
   - Summarize the overall purpose: What does the Your_Project_Name project do? (E.g., is it an Environmental Health & Safety tracking app? Infer from code comments, README, config files.)
   - Note any patterns: MVC structure? Microservices? Data models? APIs? UI components? Error handling? Tests?

2. **Generate Multiple Documentation Sections**:
   Create 6-8 distinct, self-contained documents/sections within the Markdown file. Each should be 200-500 words, use bullet points/tables for clarity, include code snippets where helpful (use ``` blocks), and reference file paths. Sections must include:
   - **Project Overview**: High-level summary, goals, tech stack, setup instructions (e.g., how to run it locally).
   - **Architecture Diagram (Text-Based)**: Describe the system architecture in ASCII art or Mermaid diagram syntax (e.g., for data flow, components). Explain layers (frontend/backend/DB).
   - **Module Breakdown**: List and describe each major directory/module (e.g., /src/auth: purpose, key files, functions/classes). Include dependencies between modules.
   - **Key Data Flows and APIs**: Map out user journeys, API endpoints (if any), database schemas/models, input/output examples.
   - **Security and Best Practices Review**: Highlight strengths/weaknesses in auth, input validation, error handling, logging. Suggest 3-5 quick improvements.
   - **Testing and Deployment Notes**: Coverage of tests (if present), build scripts, deployment targets (e.g., Docker, AWS).
   - **Potential Refactor Ideas**: 3-5 actionable suggestions for modularity, performance, or scalability based on your scan.
   - **Glossary and References**: Key terms, file index, external links (e.g., docs for used libs).

3. **Output Format**:
   - Start with a YAML frontmatter: ---
     title: Your_Project_Name Project Documentation by Claude
     date: [current date]
     version: 1.0
     ---
   - Use H1 headers for sections (# Section Title), H2 for subsections (## Subsection).
   - Make it navigable: Include a table of contents at the top with links ([Overview](#project-overview)).
   - End with a "Memory Note" section: Summarize key insights in 100 words for quick recall in future chats.
   - Ensure the entire output is concise yet thorough—aim for 2000-4000 words total.

Scan now and generate the full "Claude.md" content below. Do not add extra commentary outside the file structure.
