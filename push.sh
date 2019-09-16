#!/bin/bash

echo "commit 1: $1";
echo "commit 2: $2";
commit_master=$1;
commit_gh=$2;

# echo "git commit -am \"$commit_master\"";
git commit -am "$commit_master";
git push origin master;

gitbook build;

git checkout gh-pages;
git commit -am "$commit_gh";
git push origin gh-pages;
