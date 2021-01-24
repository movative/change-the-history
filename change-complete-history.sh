export new_name='Alexander Hartmann'
export new_mail='38313840+movative@users.noreply.github.com'
git filter-branch -f --env-filter "GIT_AUTHOR_NAME='$new_name'; GIT_AUTHOR_EMAIL='$new_mail'; GIT_COMMITTER_NAME='$new_name'; GIT_COMMITTER_EMAIL='$new_mail';" HEAD
read  -n 1 -p "Press Any Key"
