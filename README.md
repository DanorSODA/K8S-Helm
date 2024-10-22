# details-app Helm Chart

This Helm chart is used to deploy the details-app and a PostgreSQL database into a Kubernetes cluster, specifically for a K3s environment. The application is designed to be containerized, and the deployment is configured for high availability with two replicas of the details-app and a single PostgreSQL instance with persistent storage.

### Prerequisites

Before you can deploy this Helm chart, ensure that you have the following tools installed:

1. Kubernetes Cluster (K3s)
   Make sure you have a working K3s cluster set up. You can install K3s on your local environment using the following command:

```sh
curl -sfL https://get.k3s.io | sh -
```

2. Helm

Helm is required to install the details-app chart. Install Helm by running:

```sh
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
```

- [Install the details-app chart](INSTALL.md)
- [Contributing Guide](CONTRIBUTIONS.md)
- [Task file](TASKS.md)
