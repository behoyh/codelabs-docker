# codelabs-docker

Google Codelabs for the NAT-ed and firewalled dev. Technical documention using Markdown for your internal team, BYOCO (Bring Your Own Container Orchestration).
Dockerize all the things! See [my blog](https://beshoyhanna.com/posts/BZf9BgGStHqUzavaWdtD) for motivation behind this repo.

[![Run on Google Cloud](https://storage.googleapis.com/cloudrun/button.svg)](https://console.cloud.google.com/cloudshell/editor?shellonly=true&cloudshell_image=gcr.io/cloudrun/button&cloudshell_git_repo=https://github.com/behoyh/codelabs-docker.git)


### Prereqs

* [Docker](https://www.docker.com/products/docker-desktop) 
* [Git](https://git-scm.com/downloads) 

## Clone

`git clone https://github.com/behoyh/codelabs-docker.git`

## Build

`cd codelabs-docker && docker build -t behoyh/codelabs:0.0.5  .`


## Run

`docker run -p 6464:6464 -d behoyh/codelabs:0.0.5`


## Behold

@ http://127.0.0.1:6464
