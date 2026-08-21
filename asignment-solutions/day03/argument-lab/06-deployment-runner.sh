#!/bin/bash

# 06-deployment-runner.sh
# Validates and deploys an application artifact.

if [[ "$#" -ne 4 ]]; then
    echo "Error: 4 arguments are required." >&2
    exit 1
fi

application="$1"
environment="$2"
version="$3"
artifact="$4"

if [[ "$environment" != "dev" && "$environment" != "test" && "$environment" != "prod" ]]; then
    echo "Error: Invalid environment." >&2
    exit 1
fi

if [[ ! -f "$artifact" ]]; then
    echo "Error: Artifact not found." >&2
    exit 1
fi

if [[ ! -s "$artifact" ]]; then
    echo "Error: Artifact is empty." >&2
    exit 1
fi

destination="lab-server/$environment/$application/$version"

mkdir -p "$destination"

if cp "$artifact" "$destination/"; then
    echo "Deployment successful."

    mkdir -p logs
    echo "Deployed $application $version to $environment" >> logs/deployment.log
else
    echo "Error: Deployment failed." >&2
    exit 1
fi
