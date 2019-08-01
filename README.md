
# [Path to production](https://gitpitch.com/worthington10TW/hello-karta/)

## What are we building?

A path to your own production!
![Pipeline](pitch/pipeline/pipeline.png)

## Why are we building it?

A CI/CD pipeline helps you automate steps in your software delivery process, such as initiating code builds, running automated tests, and deploying to a staging or production environment. Automated pipelines remove manual errors, provide standardized feedback loops and enable fast product iterations.

During this session we will create, test, build, run, deploy a VueJS app.

> You build it, you run it.

## Stack

- VueJS
- Mocha
- Cypress
- CircleCI
- Heroku
- Powershell/ Bash

## Prerequisites

Come to the session with your machine ready for action! Sign up and install the bellow.

### Accounts

- GitHub
- Heroku
- CircleCI

### Tools

- Vue CLI
  
  ``` node
  npm install -g @vue/cli
  ```

- Heroku CLI
  
  ``` shell
  brew tap heroku/brew && brew install heroku
  ```

  ``` shell
  sudo snap install --classic heroku
  ```
  
  - [Windows download](https://cli-assets.heroku.com/heroku-x64.exe)
- Circle CLI (optional)
  
  ``` shell
  brew install circleci
  ```

  ``` shell
  curl -fLSs https://circle.ci/cli | bash
  ```

- Git
- Docker
  - [Docker download](https://hub.docker.com/?overlay=onboarding)
- [Visual Studio Code (or similar)](https://code.visualstudio.com/download)
- Bash (with cURL) or Poweshell
  ``` shell
  brew install curl
  ```
- Node/ NPM
  - [Node download](https://nodejs.org/en/download/)

## Validate tools are installed

  ``` shell
  vue --version
  heroku --version
  git --version
  docker --version
  node --version
  npm --version
  curl --version
  ```

The output should look something like this
![Versions](pitch/versions.png)

## Vue cheatsheet

### Project setup

``` node
npm install
```

### Compiles and hot-reloads for development

``` node
npm run serve
```

### Compiles and minifies for production

```  node
npm run build
```

### Run your tests

```  node
npm run test
```

### Lints and fixes files

```  node
npm run lint
```

### Run your end-to-end tests

```  node
npm run test:e2e
```

### Run your unit tests

```  node
npm run test:unit
```
