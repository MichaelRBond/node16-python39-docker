# node16-python39-docker

Docker container built to be used as a base image to work around the problem of the docker version being out of date in CI/CD.

```bash
docker login
docker tag node16-python3 mrbond/node16-python39:latest
docker push mrbond/node16-python39:latest
```
