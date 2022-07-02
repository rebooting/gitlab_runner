#!/bin/bash

echo please ensure that GL_TOKEN is exported !

docker-compose exec gitlab-runner-container \
    gitlab-runner register \
    --non-interactive \
    --url https://gitlab.com/ \
    --registration-token $GL_TOKEN \
    --executor docker \
    --description "Sample Runner 1" \
    --docker-image "docker:stable" \
    --docker-volumes /var/run/docker.sock:/var/run/docker.sock
