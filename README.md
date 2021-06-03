# change-the-history
A Script to change the git history. Useful if you want to change a private repository into a public repository, but the git history contains your private mail address. The script uses the *git config global* for the replacement and writes the user.name and user.email into GIT_AUTHOR_EMAIL, GIT_AUTHOR_NAME, GIT_COMMITTER_EMAIL, GIT_COMMITTER_NAME.

## usage

```
chmod +x change-user.sh
./change-user.sh <PATH_TO_GIT_REPO>
```

