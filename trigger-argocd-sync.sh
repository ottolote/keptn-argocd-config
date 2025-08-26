
#!/bin/bash

set -e

# Get the ArgoCD server address from the environment variable
ARGOCD_SERVER_ADDRESS="${ARGOCD_SERVER}"

# Get the ArgoCD token from the environment variable
ARGOCD_TOKEN="${ARGOCD_TOKEN}"

# Get the application name from the environment variable
APP_NAME="${APP_NAME}"

# Login to ArgoCD
argocd login $ARGOCD_SERVER_ADDRESS --username admin --password $ARGOCD_TOKEN --insecure

# Sync the application
argocd app sync $APP_NAME
