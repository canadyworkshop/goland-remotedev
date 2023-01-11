# goland-remotedev

goland-remotedev is a container image that provides a working enviornment for Goland to connect to via SSH for remote development. The container will setup ssh, go and pull down the repo provided.

## Environmental Variables

|Name|Details|Required|
|----|-------|--------|
|ROOT_PASSOWRD|The password for the root account.|true|
|GIT_USERNAME|A URL encoded version of the username used to clone the repo.|true|
|GIT_PAT|The password or access token for the user used to clone the repo.|true|
|GIT_REPO_URL|The URL (excluding https://) of the repo to clone.|

## Versions

The image version specifies the go version that will be installed. 