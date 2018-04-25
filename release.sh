#!/bin/bash

docker login
docker push pipdevs/gitlab-runner:10.7.0
docker push pipdevs/gitlab-runner:latest