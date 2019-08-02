# codelabs-docker

Google Codelabs for the Nat-ted and Firewalled dev. Technaical documention using Markdown for your internal team, BYOCO (Bring Your Own Container Orchestration).
Dockerize all the things! See [my blog](https://beshoyhanna.com/posts/BZf9BgGStHqUzavaWdtD) for motivation behind this repo.


## Clone

`git clone https://github.com/behoyh/codelabs-docker.git`

## Build

`cd codelabs-docker`
`docker build -t behoyh/codelabs:0.0.5  .`


## Run

`docker run -p 6464:6464 -d behoyh/codelabs:0.0.5`


## Behold

@ http://localhost:6464
