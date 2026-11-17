# Food quality classification on Kubernetes

Training generates measurements including weight, pH, humidity and cooking time. A random forest predicts quality from these inputs. Streamlit loads the saved model. Use a running Minikube cluster and the image tag expected by the deployment.

## Run locally

```sh
minikube image build -t food-quality:v2 .
kubectl apply -f k8s/
minikube service food-quality-service
```
