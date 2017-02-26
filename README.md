# Testapi

### Docker Commands

To create the conainter, run:
```bash
time docker build -t crossfire972/testapi .
```
To start it:
```bash
docker run -d -p 1323:1323 -name testapi crossfire972/testapi
```

To check the it started correctly, run:
```bash
docker ps | grep testapi
docker logs testapi
```

To stop the container, run:
```bash
docker stop testapi
```

To delete the container, run:
```bash
docker rm testapi

# If the container is still running use (-f)
docker rm -f testapi
```

To remove the image, run:
```bash
docker rmi crossfire972/testapi
```
