#!/bin/sh

if [[ "$@" = *"-cp"* ]]; then
	git commit -am "Update site."
	git push origin master
	exit 1
fi

if [ ! -d "./npm" ]; then
	echo "Please run from the root directory."
	exit 1
fi

if [ ! -d "./public" ]; then
	echo "Please run npm run init first."
	exit 1
fi

git --git-dir ./public/.git reset --hard origin/master # Reset everything in public/
git --git-dir ./public/.git checkout master

hugo # build

# Push public/ submodule
git --git-dir ./public/.git add .
git --git-dir ./public/.git commit -am "Update github pages."
git --git-dir ./public/.git pull origin master # Make sure we are updated upstream
git --git-dir ./public/.git push origin master

# Update public/ submodule.
git add public/
git commit -m "Update public/ submodule."
git push origin master
