$name='Alexander Hartmann'
$mail='38313840+movative@users.noreply.github.com'
git filter-branch -f --env-filter "GIT_AUTHOR_NAME=$name; GIT_AUTHOR_EMAIL=$mail; GIT_COMMITTER_NAME=$name; GIT_COMMITTER_EMAIL=$mail;" HEAD
