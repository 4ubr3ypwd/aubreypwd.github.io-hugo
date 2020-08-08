#!/bin/sh

hugo # build

# Push public/ submodule
git --git-dir ./public add .
git --git-dir ./public commit -am "Update github pages."
git --git-dir ./public push origin master

# Update public/ submodule.
git add public/
git commit -m "Update public/ submodule."
git push origin master
