docker run -p 8000:8000 app1-container
docker run -p 8001:8001 app2-container

kubectl create --filename deployment.yaml 
kubectl create --filename service.yaml

kubectl delete deployment flask-app-deploy
kubectl delete service flask-app-svc

minikube service flask-app-svc


docker tag app1-container:latest muratkas/app1-container:latest
docker tag app2-container:latest muratkas/app2-container:latest
docker tag app3-container:latest muratkas/app3-container:latest
docker tag app4-container:latest muratkas/app4-container:latest
docker tag app5-container:latest muratkas/app5-container:latest
docker tag app6-container:latest muratkas/app6-container:latest
docker tag app1-container-replica:latest muratkas/app1-container-replica:latest
docker tag app2-container-replica:latest muratkas/app2-container-replica:latest
docker tag app3-container-replica:latest muratkas/app3-container-replica:latest
docker tag app4-container-replica:latest muratkas/app4-container-replica:latest
docker tag app5-container-replica:latest muratkas/app5-container-replica:latest
docker tag app6-container-replica:latest muratkas/app6-container-replica:latest
docker tag gateway:latest muratkas/gateway:latest
docker tag database:latest muratkas/database:latest

docker push muratkas/app1-container:latest
docker push muratkas/app2-container:latest
docker push muratkas/app3-container:latest
docker push muratkas/app4-container:latest
docker push muratkas/app5-container:latest
docker push muratkas/app6-container:latest
docker push muratkas/app1-container-replica:latest
docker push muratkas/app2-container-replica:latest
docker push muratkas/app3-container-replica:latest
docker push muratkas/app4-container-replica:latest
docker push muratkas/app5-container-replica:latest
docker push muratkas/app6-container-replica:latest
docker push muratkas/gateway:latest
docker push muratkas/database:latest

cd app1
docker build -f Dockerfile -t app1-container:latest .
cd ../app2
docker build -f Dockerfile -t app2-container:latest .
cd ../app3
docker build -f Dockerfile -t app3-container:latest .
cd ../app4
docker build -f Dockerfile -t app4-container:latest .
cd ../app5
docker build -f Dockerfile -t app5-container:latest .
cd ../app6
docker build -f Dockerfile -t app6-container:latest .
cd ../app1-replica
docker build -f Dockerfile -t app1-container-replica:latest .
cd ../app2-replica
docker build -f Dockerfile -t app2-container-replica:latest .
cd ../app3-replica
docker build -f Dockerfile -t app3-container-replica:latest .
cd ../app4-replica
docker build -f Dockerfile -t app4-container-replica:latest .
cd ../app5-replica
docker build -f Dockerfile -t app5-container-replica:latest .
cd ../app6-replica
docker build -f Dockerfile -t app6-container-replica:latest .
cd ../gateway
docker build -f Dockerfile -t gateway:latest .
cd ../database
docker build -f Dockerfile -t database:latest .

