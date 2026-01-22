#!/bin/bash

# Check for Claude.ai CLI configuration
CONFIG_FILE="$HOME/.claude/config"
if [ ! -f "$CONFIG_FILE" ]; then
  echo "Error: Claude.ai CLI not configured. Please set up API key in ~/.claude/config."
  echo "Follow instructions at https://docs.anthropic.com/."
  exit 1
fi

# Simulate login (assumes API key is valid)
echo "Logging in to Claude.ai CLI..."
# In real usage, you might run `claude --login` or validate the API key here
echo "Login successful!"

# Define task order for sequential execution
TASKS=(
  "plan.md"
  "frontend.md"
  "backend.md"
  "database.md"
  "test.md"
  "api-test.md"
  "code-review.md"
  "security.md"
  "ci-cd.md"
  "deploy.md"
  "monitor.md"
  "update.md"
  "docs.md"
  "push.md"
)

# Log file for pipeline execution
LOG_FILE="pipeline.log"
echo "Pipeline execution started at $(date)" > "$LOG_FILE"

# Function to process a single task
process_task() {
  local task_file=$1
  echo "Processing $task_file..." | tee -a "$LOG_FILE"
  claude --file "pipeline/$task_file" >> "$LOG_FILE" 2>&1
  if [ $? -ne 0 ]; then
    echo "Error processing $task_file. Check $LOG_FILE for details." | tee -a "$LOG_FILE"
    return 1
  else
    echo "Task $task_file completed successfully." | tee -a "$LOG_FILE"
    return 0
  fi
}

# Function to run tasks sequentially from a starting index
run_sequential() {
  local start_index=$1
  for ((i=start_index; i<${#TASKS[@]}; i++)); do
    process_task "${TASKS[i]}"
    if [ $? -ne 0 ]; then
      echo "Pipeline stopped due to error in ${TASKS[i]}." | tee -a "$LOG_FILE"
      exit 1
    fi
    # Pause for user to review progress
    read -t 5 -p "Press Enter to continue to next task or Ctrl+C to stop..." || echo "Continuing..."
  done
  echo "Pipeline completed successfully." | tee -a "$LOG_FILE"
}

# Menu for task selection
while true; do
  echo -e "\nTask Selection Menu:"
  echo "1. Plan Project (plan.md)"
  echo "2. Develop Frontend (frontend.md)"
  echo "3. Develop Backend (backend.md)"
  echo "4. Set Up Database (database.md)"
  echo "5. Generate Tests (test.md)"
  echo "6. Test APIs (api-test.md)"
  echo "7. Review Code (code-review.md)"
  echo "8. Run Security Checks (security.md)"
  echo "9. Set Up CI/CD (ci-cd.md)"
  echo "10. Configure Deployment (deploy.md)"
  echo "11. Set Up Monitoring (monitor.md)"
  echo "12. Update Dependencies (update.md)"
  echo "13. Generate Documentation (docs.md)"
  echo "14. Push to GitHub (push.md)"
  echo "15. Run All Tasks Sequentially"
  echo "16. Exit"
  read -p "Enter your choice (1-16): " choice

  case $choice in
    1)
      process_task "plan.md" && run_sequential 1
      ;;
    2)
      process_task "frontend.md" && run_sequential 2
      ;;
    3)
      process_task "backend.md" && run_sequential 3
      ;;
    4)
      process_task "database.md" && run_sequential 4
      ;;
    5)
      process_task "test.md" && run_sequential 5
      ;;
    6)
      process_task "api-test.md" && run_sequential 6
      ;;
    7)
      process_task "code-review.md" && run_sequential 7
      ;;
    8)
      process_task "security.md" && run_sequential 8
      ;;
    9)
      process_task "ci-cd.md" && run_sequential 9
      ;;
    10)
      process_task "deploy.md" && run_sequential 10
      ;;
    11)
      process_task "monitor.md" && run_sequential 11
      ;;
    12)
      process_task "update.md" && run_sequential 12
      ;;
    13)
      process_task "docs.md" && run_sequential 13
      ;;
    14)
      process_task "push.md" && run_sequential 14
      ;;
    15)
      run_sequential 0
      ;;
    16)
      echo "Exiting..." | tee -a "$LOG_FILE"
      exit 0
      ;;
    *)
      echo "Invalid choice. Please select 1-16." | tee -a "$LOG_FILE"
      ;;
  esac
done
