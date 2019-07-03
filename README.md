# Path to production

## What are we building?

A path to your own production!
![Pipeline](pipeline.png)

## Why are we building it?

## Stack

- VueJS
- Mocha
- Cypress
- CircleCI
- Heroku
- Powershell/ Bash

## Prerequisites

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
- Visual Studio Code (or similar)
- Bash (with cURL) or Poweshell
- Node/ NPM
  - [Node download](https://nodejs.org/en/download/)

## Plan

1. Fork and clone this repo
2. [Watch your repo in CircleCI](https://circleci.com/add-projects)
3. Check out your first pipeline!
4. [Get your API token (keep this safe!)](https://circleci.com/account/api)
5. Run the ./scripts/app-builder.sh [Your app name] [circleCI token]
6. Check out your first Heroku apps!
7. Create your vue project
  
    ``` node
    vue create --preset ./vue [your project name]
    ```

8. Replace this line in package.json

    ``` node
    "test:e2e": "vue-cli-service test:e2e - --headless",
    ```

9. Add this line to package.json

    ``` node
    "test:e2e:no-dev": "vue-cli-service test:e2e - --headless --url ",
    ```

10. Run your project
  
    ``` node
    npm run serve
    ```

11. Unit test your project
  
    ``` node
    npm run test:unit
    ```

12. Run E2e tests
  
    ``` node
    npm run test:e2e
    ```

13. Build your project
  
    ``` node
    npm run build
    ```

14. Dockerize
  
    ``` shell
    docker build -t [your app name] .
    ```

15. Run your app
  
    ``` shell
    docker run -p 5000:5000 [your app name]
    ```

16. Create your pipeline (hint /.scripts)
17. Checkout your staging site!
18. Promote to production
19. We have a new requirement that has come in- Practising TDD techiques implement the following feature.
    > TODO
20. Get your code to production!
21. Take a break.

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
