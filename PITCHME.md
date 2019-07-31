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

- automate
- software delivery process
- Once change, One artefact
- Promoted through a single pipeline, deployed to many environments
- -
- Details
- A CI/CD pipeline helps you automate steps in your software delivery process
- One artefact, promoted through a single pipeline, deployed to many environments
  
---

## Why do we use them?

- Reduce cost of deployment
- Remove manual errors
- Provide standardized feedback loops
- Enable fast product iterations.

Note: 

- Through automation

---

## Risk reduction

- Low-risk Releases are Incremental
- Decouple Deployment and Release
- Focus on Reducing Batch Size
- Optimize for Resilience

Note:

- Independently releasable changes
- tight coupling == big-bang risky releases.
- Separate the technical decision to deploy from the business decision
- Continously deploy
- Dark releases and feature toggles
- 10s of lines of code == easier root cause analysis + service restoration
- Failures are inevitable, rapid service restoration
- -
- Details
- Architect our systems so that we can release individual changes independently, tight coupling will lead to big-bang risky releases.
- Separate the technical decision to deploy from the business decision to launch a feature, so we can deploy continuously but release new features on demand. Two commonly-used patterns that enable this goal are dark launching and feature toggles.
- When each deployment consists of tens of lines of code or a few configuration settings, it becomes much easier to perform root cause analysis and restore service in the case of an incident.
- Failures are inevitable, how do we restore service as rapidly as possible when something goes wrong -->

---

## Best practice

- Only build packages once
- Deploy the same way to every environment
- Smoke test your deployments
- Keep your environments similar

Note:

- Same thing we’ve tested throughout the deployment pipeline
- eliminating the packages as the source of the failure
- We test the deployment process many times before it gets to production
- Running and available as part of the deployment process.
- Same version of the operating system and middleware packages
- -
- Details
- We want to be sure the thing we’re deploying is the same thing we’ve tested throughout the deployment pipeline, eliminating the packages as the source of the failure.
- We test the deployment process many, many times before it gets to production,eliminating it as the source of any problems.
- Make sure your application is running and available as part of the deployment process.
- Keep your environments similar. Same version of the operating system and middleware packages, configured in the same way. This has become much easier to achieve with modern virtualization, container technology and infrastructure as code.

---

## Triggers

- Code commit
- Scheduled/ CRON
- Manual
- -
- Details
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

## 6. Smoke tests

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
