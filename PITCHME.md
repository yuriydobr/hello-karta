# Get to production!

Matthew Worthington

Note:

- Developer @ ThoughtWorks
- Twitter: worthington10

---

## What is a CI/CD pipeline?

- Initiates code builds
- Runs automated tests
- Deploys your code

Note:

- A CI/CD pipeline helps you automate steps in your software delivery process
- One artefact, promoted through a single pipeline, deployed to many environments

---

## Why do we use them?

- Reduce cost of deployment
- Remove manual errors
- Provide standardized feedback loops
- Enable fast product iterations.

---

## Best practice

- Only build packages once
- Deploy the same way to every environment
- Smoke test your deployments
- Keep your environments similar

Note:

- We want to be sure the thing we’re deploying is the same thing we’ve tested throughout the deployment pipeline, so if a deployment fails we can eliminate the packages as the source of the failure.
- including development. This way, we test the deployment process many, many times before it gets to production, and again, we can eliminate it as the source of any problems.
- Have a script that validates all your application’s dependencies are available, at the location you have configured your application. Make sure your application is running and available as part of the deployment process.
- Keep your environments similar. Although they may differ in hardware configuration, they should have the same version of the operating system and middleware packages, and they should be configured in the same way. This has become much easier to achieve with modern virtualization and container technology.

---

## Triggers

- Code commit
- Scheduled/ CRON
- Manual

Note:

- Each change in code triggers an automated build-and-test sequence for the given project, providing feedback to the engineering team
- You may want to run tests constantly over a period or perform cleanup tasks
- In some situations a manual triggered pipeline or stage may be necessary, you may require sign-off from QA or have set release dates

---

## ‘You build it, you run it’ 

@snapend

@fa[rocket fa-5x fa-spin]

---

## 1. Build

![Build](pitch/pipeline/1.png)

---

## 2. Code quality gate

![Quality gate](pitch/pipeline/2.png)

---

## 3. Test automation

![Test](pitch/pipeline/3.png)

---

## 4. Publish

![Publish](pitch/pipeline/4.png)

---

## 5. Deploy to staging

![Staging](pitch/pipeline/5.png)

---

## 6. Acceptance tests

![Smoke](pitch/pipeline/6.png)

---

## 7. Manual approval

![Manual gate](pitch/pipeline/7.png)

---

## 8. Deplpy to prod

![Production](pitch/pipeline/8.png)

---

## TADA!

![Pipeline](pipeline.png)

---

## What will we be using?

![logo](pitch/tools/babel.png)
![logo](pitch/tools/cypress.jpeg)
![logo](pitch/tools/docker.png)
![logo](pitch/tools/github.png)
![logo](pitch/tools/heroku.png)
![logo](pitch/tools/mocha.png)
![logo](pitch/tools/npm.png)
![logo](pitch/tools/vuejs.png)

---

## What accounts will I need?

![logo](pitch/tools/circleci.png)
![logo](pitch/tools/github.png)
![logo](pitch/tools/heroku.png)

---

## Lets get going
[https://github.com/worthington10TW/hello-karta](https://github.com/worthington10TW/hello-karta)