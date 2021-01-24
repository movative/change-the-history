export hide="mail@i-want-to-hide.com"
export name="Alexander Hartmann"
export mail="38313840+movative@users.noreply.github.com" #(Keep my email adresses private) from https://github.com/settings/emails

git filter-branch --env-filter "
if [ $GIT_COMMITTER_EMAIL = '$hide' ]
then
    export GIT_COMMITTER_NAME='$name'
    export GIT_COMMITTER_EMAIL='$mail'
fi
if [ $GIT_AUTHOR_EMAIL = '$hide' ]
then
    export GIT_AUTHOR_NAME='$name'
    export GIT_AUTHOR_EMAIL='$mail'
fi
" --tag-name-filter cat -- --branches --tags