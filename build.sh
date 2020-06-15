#!/bin/bash
URL=https://yanghoon.github.io/charts

# Clean
rm -rf bin/*

# Build Chart
cat chart-repo.txt | while read repo; do
#   repo=https://github.com/yanghoon/argo-app.git
  chart=$(basename $repo .git)
  
  git clone $repo bin/$chart
  helm package bin/$chart -d docs
done

# Indexing
helm repo index docs --url $URL
