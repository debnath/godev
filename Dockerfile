# syntax=docker/dockerfile:1
FROM ubuntu:18.04

WORKDIR /app

#https://golang.org/doc/contribute
RUN apt update
RUN apt install -y git && apt-get install -y curl && apt-get install vim

# Install git-codereview by running go get -u golang.org/x/review/git-codereview
# git config --global user.email name@example.com   # change global config
# git config user.email name@example.com            # change local config