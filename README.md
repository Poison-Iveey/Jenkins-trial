                                                                    # Jenkins-trial

# Fullname CI Demo

## What this project is
A minimal demo to learn Jenkins CI concepts:
- Parameterized builds
- Build steps (Execute Shell)
- Archiving artifacts
- Triggers via GitHub webhooks 

The repository contains:
- `fullname.sh` — a small shell script that accepts parameters, prints information and writes an artifact.
- `Jenkinsfile` — a declarative pipeline that demonstrates parameter usage, artifact archiving and optional upload.

## Technologies & Concepts used
- Jenkins (Freestyle job or Pipeline)
- Git / GitHub (source code management)
- Shell scripting (Bash)
- Artifacts (files produced by the build)
- Jenkins Credentials (store secrets securely)
- GitHub Webhooks (trigger builds on push)

## How to run locally
1. Make script executable:
   ```bash
   chmod +x fullname.sh
