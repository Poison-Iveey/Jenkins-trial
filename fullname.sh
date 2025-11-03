#!/bin/bash
# fullname.sh - prints full name and writes a build-info artifact
# Usage: ./fullname.sh FIRST LAST "something about me" ENV RUN_TESTS

set -euo pipefail

FIRST_NAME="${1:-John}"
LAST_NAME="${2:-Doe}"
SOMETHING="${3:-a DevOps student}"
ENVIRONMENT="${4:-dev}"
RUN_TESTS="${5:-false}"

# Output to console
echo "### Build info"
echo "Name: ${FIRST_NAME} ${LAST_NAME}"
echo "About: ${SOMETHING}"
echo "Environment: ${ENVIRONMENT}"
echo "Run tests? ${RUN_TESTS}"

# Create artifact directory
mkdir -p build_out

# Create artifact file
cat > build_out/build-info.txt <<EOF
Full name: ${FIRST_NAME} ${LAST_NAME}
About: ${SOMETHING}
Environment: ${ENVIRONMENT}
Run tests: ${RUN_TESTS}
Built at: $(date --iso-8601=seconds)
EOF

# Optionally run tests if requested (example)
if [ "${RUN_TESTS}" = "true" ]; then
  echo "Running sample tests..."
  # Example test: check that first and last are non-empty
  if [ -z "$FIRST_NAME" ] || [ -z "$LAST_NAME" ]; then
    echo "ERROR: first or last name is empty" >&2
    exit 2
  fi
  echo "Tests passed."
fi

echo "Artifact created at build_out/build-info.txt"
