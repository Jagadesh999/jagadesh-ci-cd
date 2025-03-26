# Jagadesh CI/CD Pipeline

This project demonstrates an end-to-end CI/CD pipeline using:

- **GitHub** - Version Control  
- **Jenkins** - Continuous Integration  
- **SonarQube** - Code Quality Analysis  
- **Nexus** - Artifact Storage  
- **Docker** - Containerization  
- **Kubernetes** - Deployment  

---

## 1. Project Setup

### Clone the Repository
```sh
git clone https://github.com/yourusername/jagadesh-ci-cd.git
cd jagadesh-ci-cd
```

### Install Dependencies
```sh
mvn clean install
```

### Run the Application (Local)
```sh
java -jar target/myapp.jar
```

---

## 2. CI/CD Pipeline Flow

1. Developer pushes code to **GitHub**  
2. **Jenkins** builds the project using **Maven**  
3. **SonarQube** analyzes the code quality  
4. **Nexus** stores the built artifact  
5. **Docker** builds and pushes the container image  
6. **Kubernetes** deploys the application  

---

## 3. Jenkins Pipeline (Jenkinsfile)

The **Jenkinsfile** contains the following steps:

- Clone the repository  
- Build the application using **Maven**  
- Run **SonarQube** analysis  
- Push the artifact to **Nexus**  
- Build and push the **Docker image**  
- Deploy the application to **Kubernetes**  

For the full pipeline script, check the **[`Jenkinsfile`](Jenkinsfile)** in the repository.

---

## 4. Kubernetes Deployment

### Apply Deployment & Service
```sh
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
```

### Verify Deployment & Service
```sh
kubectl get pods
kubectl get svc
```

---

## 5. Docker Image

### Build & Push Docker Image
```sh
docker build -t jagadesh999/myapp:latest .
docker push jagadesh999/myapp:latest
```

---

## 6. Technologies Used

| **Technology**  | **Purpose** |
|----------------|------------|
| GitHub  | Code Version Control |
| Jenkins | CI/CD Pipeline |
| SonarQube | Code Quality |
| Nexus | Artifact Repository |
| Docker | Containerization |
| Kubernetes | Deployment |

---

## 7. Contributors

- **Developed by:** **Busireddy Jagadeeswar Reddy**  
- **Contact:** **jagadesh0436@gmail.com**  

If you find this project useful, consider giving it a **⭐ star** on GitHub.

