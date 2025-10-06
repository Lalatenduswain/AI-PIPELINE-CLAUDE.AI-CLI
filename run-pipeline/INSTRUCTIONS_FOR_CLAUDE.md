### 🧠 Instruction for Update

Please note that this is a **multi-project environment** with several interdependent services running in production.
Before performing any modification or deployment, carefully review the **Nginx configuration file** to understand how the services are routed and interlinked.
Avoid any configuration errors that may impact live applications.

---

### 🗂️ Tasks to Perform

#### 1. **Update `CLAUDE.md`**

Add a new section titled **“Multi-Project Environment Management”**, which must include:

* ⚠️ A clear **warning** that multiple production applications and dependencies are active on this server.
* A **service inventory** listing all detected running services and their respective ports or identifiers.
* Defined **verification steps** to follow before applying any changes.
* **Recovery commands** for each detected service (use PM2 or the relevant process manager).
* A brief **incident log** entry documenting today’s issue and corrective action.

---

#### 2. **Create `OPERATIONS_NOTES.md`**

Generate a new operational documentation file within the respective services directory containing:

* Service architecture overview
* PM2 or process management commands
* Health check and monitoring procedures
* Common issues and recommended resolutions
* Emergency and recovery steps

---

### 🛡️ Preventive Measures

Include a section outlining the following preventive guidelines:

* ✅ Always check running processes (e.g., `pm2 status`) before making any change.
* ✅ Never terminate or modify processes without confirming their role.
* ✅ Verify all services are running correctly after any update.
* ✅ Use documented recovery commands in case of failure.

---

### 📊 Status and Recovery Documentation

Claude should detect all active services and record their current status and ports, along with recovery commands similar to:

```bash
# Check running processes
pm2 status

# Service recovery (generic example)
cd /path/to/service && pm2 start "npm run start" --name <service-name>
```

---

### ✅ Final Note

This update ensures proper **environment documentation**, enables **faster recovery**, and prevents accidental downtime in a shared multi-service production server.
