# ML Service Deployment via FastAPI - OpenShift S2I Method
 In this example, OpenShift uses a Dockerfile to create a new Docker image that is deployed to the OpenShift cluster. 

 ## Prerequisites
 - docker
 - python3

 ## Running the App
 1. Start the app with:
 ```bash
docker build -t fastapi-app-img .
 ```

 ```bash
docker run -d --name ml-api-service -p 8080:8080 fastapi-app-img
 ```

 2. Go to http://0.0.0.0:8080/docs.

 ## Stop the Service
 ```bash
docker stop ml-api-service
 ```
