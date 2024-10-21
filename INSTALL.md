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

### Step 3: Configure the values.yaml

Open the values.yaml file to configure the application as needed:

   - Image: Make sure the repository and tag fields under image point to your Docker image.
   - PostgreSQL PersistentVolumeClaim: Ensure the PVC names are unique if required.
   - Service Type: By default, the service type is ClusterIP.

### Step 4: Deploy the Helm Chart

Use Helm to install the chart into your Kubernetes cluster. Replace details-app with the name of your release:

```sh
helm install details-app ./details-app
```

Verify that the deployment is successful by checking the pods and services:

```sh
kubectl get pods
kubectl get svc
```

