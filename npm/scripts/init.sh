rm -Rf public/
rm -Rf themes/

git submodule update --init --recursive

git --git-dir ./public/.git checkout master
git --git-dir ./themes/hello-friend/.git checkout 2.1.0
