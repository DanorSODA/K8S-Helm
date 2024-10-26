# Installation Steps

Follow these steps to deploy the details-app to your K3s cluster:

### Step 1: Clone the Repository

Clone the details-app Helm chart repository to your local environment:

```sh
git clone https://github.com/zero-pytagoras
cd details-app
```

### Step 2: Build and Push Docker Image (Optional)

If you need to build the Docker image for the details-app (for example, if you're developing locally), build and push the image to a container registry:

```sh
docker build -t <your-dockerhub-username>/details-app:latest .
docker push <your-dockerhub-username>/details-app:latest
```

Make sure to update the values.yaml file to reflect your Docker image repository and tag.

### Step 3: Configure the values.yaml (Optional)

Open the values.yaml file to configure the application as needed:

- Image: Make sure the repository and tag fields under image point to your Docker image.
- PostgreSQL PersistentVolumeClaim: Ensure the PVC names are unique if required.
- Service Type: By default, the service type is ClusterIP.

### Step 4: Run the Installation Script

Use the provided install.sh script to install the Helm chart. This script automatically sets the namespace and Docker repository for the deployment.

```sh
./install.sh
```

If you need to specify a different namespace, pass it as an argument:

```sh
./install.sh custom-namespace
```

### Step 5: Verify Deployment

Check that the deployment was successful by viewing the pods and services in the namespace:

```sh
kubectl get pods -n details-app-namespace
kubectl get svc -n details-app-namespace
```
