# 📘 Kubernetes Assignment 1

This assignment demonstrates key Kubernetes concepts including **Deployments, Services, Scaling, Exec & Logs, StatefulSets, Secrets/ConfigMaps, and Ingress** using Minikube or a Kubernetes cluster.

---

## 🚀 Deployment Steps

The following commands were used to deploy and manage the application:

```bash
# Deploy StatefulSet for PostgreSQL or other stateful app
kubectl apply -f statefulset.yaml

# Deploy Services
kubectl apply -f service.yaml

# Deploy backend application with environment variables (Secrets & ConfigMaps)
kubectl apply -f env-deployment.yaml

# Deploy other application deployments (if any)
kubectl apply -f deployment.yaml

# Mount JSON config file via ConfigMap/Secret in a deployment
kubectl apply -f json-config-deployment.yaml

# Apply Ingress to route external traffic
kubectl apply -f ingress.yaml

# Verify Pods, Services, PVCs, and Ingress
kubectl get pods
kubectl get svc
kubectl get pvc
kubectl get ingress

# View logs of a specific pod
kubectl logs <pod-name>

# Exec into a running pod
kubectl exec -it <pod-name> -- /bin/bash