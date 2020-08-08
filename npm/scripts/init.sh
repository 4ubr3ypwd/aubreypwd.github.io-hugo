rm -Rf public/
rm -Rf themes/

git submodule update --init --recursive

git --git-dir ./public/.git checkout master
