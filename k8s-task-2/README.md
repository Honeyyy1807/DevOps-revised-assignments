# 📘 3-Tier Node.js Application on Kubernetes

This PR deploys a **3-tier Node.js application** on Kubernetes:

- **PostgreSQL**: StatefulSet + PVC for persistent storage, exposed via Service, credentials managed using Secret.  
- **Backend Node.js**: Deployment serving both backend API and frontend (EJS templates), configuration via ConfigMap, exposed via Service.  

---

## 🚀 Deployment Steps

1. Deploy PostgreSQL
```bash
kubectl apply -f postgres-secret.yaml
kubectl apply -f postgres-service.yaml
kubectl apply -f postgres-statefulset.yaml

2. Deploy backend
kubectl apply -f backend-config.yaml
kubectl apply -f backend-deployment.yaml
kubectl apply -f backend-service.yaml

3. Verify Resources
kubectl get pods
kubectl get svc
kubectl get pvc

4. Access via NodePort: http://<NodeIP>:<NodePort>