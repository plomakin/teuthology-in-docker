# Docker container  with teuthology test suite for Ceph

## How to build container

```
docker build -t <username>/teuthology-in-docker .
```

## Execute teuthology test suite inside container

```
docker run -i -t <username>/teuthology-in-docker bash
cd /opt/teuthology
# Prepare teuthology configuration and execute for example:
./virtualenv/bin/teuthology roles/3-simple.yaml
```
