# DevOps Home Assignment

This repository contains Docker configurations to set up and test an Nginx server.

## Repository Structure

- **`Server/`**
  - `nginx.Dockerfile`: Builds an Nginx image with Ubuntu as the base. Configures two servers—one with a custom HTML response and one with an HTTP error code.
  - `nginx.conf`: Configuration file for Nginx servers.

- **`Client/`**
  - `tester.Dockerfile`: Builds a testing image with a Python script.
  - `test_nginx.py`: Script to verify both Nginx servers are responding as expected.

- **`docker-compose.yml`**
  - Sets up and links the Nginx and testing containers.

- **`.github/workflows/docker.yml`**
  - CI workflow to build, test, and publish test results as an artifact.
