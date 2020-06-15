#!/bin/bash

build.sh

git add docs
git commit -m "re-indexing"
git push
