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
