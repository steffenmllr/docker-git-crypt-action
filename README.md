# docker-git-crypt-action [![](https://images.microbadger.com/badges/image/steffenmllr/docker-git-crypt-action.svg)](https://hub.docker.com/r/steffenmllr/docker-git-crypt-action/ "This image on Docker Hub")

> A alpine docker container and github action to decrypt a repository

### Github Action
Pass in the `GIT_CRYPT_KEY` from [git-crypt](https://github.com/AGWA/git-crypt)) as base64 encoded string (`git-crypt export-key secret.key && cat secret.key | base64`)

##### Use cached docker image
```hcl
action "Decrypt github repo" {
  uses = "docker://steffenmllr/docker-git-crypt-action:v0.6.0"
  secrets = ["GIT_CRYPT_KEY"]
}
```

##### Build from repo
```hcl
action "Decrypt github repo" {
  uses = "steffenmllr/docker-git-crypt-action:v0.6.0"
  secrets = ["GIT_CRYPT_KEY"]
}
```
