#!/usr/bin/env bash

./gradlew clean build
docker build -f Docker/Dockerfile --no-cache -t garystafford/storefront-accounts:gke-2.1.0 .
docker push garystafford/storefront-accounts:gke-2.1.0

# docker run --name storefront-accounts -d garystafford/storefront-accounts:gke-2.1.0
