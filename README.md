# Hello GitVersion

Examples on how to get semantic versioning automated using [GitVersion](https://github.com/GitTools/GitVersion) not only with .NET but also with [Ant](http://ant.apache.org/), [Maven](https://maven.apache.org/) & [Jenkins](https://jenkins-ci.org/)

## How to use

Clone this repo

```console
git clone https://github.com/mkoertgen/hello.gitversion.git
```

Then start playing around with [GitFlow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow/), e.g. using [Atlassian SourceTree](https://www.atlassian.com/software/sourcetree/overview).

For instance, 

- switch branches, 
- create a `feature`, 
- do a `release` or a `hotfix`

Then check how versioning is affected, using

```console
gitversion
```

For [GitHubFlow](https://guides.github.com/introduction/flow/) try the same using feature branches and pull requests

### Docker

```console
export GITVERSION_SEMVER=$(docker-compose run gitversion | tr -dc '[[:print:]]')
docker-compose build maven
```

### Maven
Maven uses the special *${revision}* variable to set the version, see https://maven.apache.org/maven-ci-friendly.html .

The [flatten-maven-plugin](https://www.mojohaus.org/flatten-maven-plugin/) is needed, if you want to install/deploy the build artifact.