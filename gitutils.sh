#!/usr/bin/env sh
#############################################################
## description :    Read the parameters from the jenkins job
##                  and construct the url and store it in a
##                  text file.
#############################################################
export IFS=","
repository=$REPOSITORIES
echo $repository
for repo in $repository; do
    echo "$repo"
    file=$WORKSPACE/repolist.txt
    git_repo="ssh://git@github.com/$repo.git"
    echo "$git_repo" >> $file
done
cat $file
