export new_name=$(git config --global user.name)
export new_mail=$(git config --global user.email)
echo Replacing the user in all commits of $(git remote)/$(git rev-parse --abbrev-ref HEAD) to $new_name, $new_mail
read  -n 1 -p "Press Any Key to continue"
if [ $1 ]
then
cd $1
fi
git filter-branch -f --env-filter "GIT_AUTHOR_NAME='$new_name'; GIT_AUTHOR_EMAIL='$new_mail'; GIT_COMMITTER_NAME='$new_name'; GIT_COMMITTER_EMAIL='$new_mail';" HEAD
read  -n 1 -p "Press Any Key to continue"
