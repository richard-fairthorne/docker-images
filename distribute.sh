#!/bin/bash
for project in $(ls src); do
  docker build -t hashbangmedia/${project} src/${project}
  docker push hashbangmedia/${project}
done
