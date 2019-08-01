# Plan

1. Fork and clone this repo

    ``` shell
    TODO- git script
    ```

2. [Watch your repo in CircleCI](https://circleci.com/add-projects)
3. [Get your API token (keep this safe!)](https://circleci.com/account/api)
4. Check out your first pipeline!
5. Run the script
   1. For mac

    ``` shell
    chmod +x ./.scripts/app-builder.sh && ./.scripts/app-builder.sh [Your app name] [circleCI token]
    ```

   2. For windows

6. Create your vue project
  
    ``` node
    cd .. && vue create --preset ./hello-karta/.vue hello-karta
    ```

7. Copy package.json from ./.scripts to the root
8.  Run your project
  
    ``` node
    npm run serve
    ```

9.  Unit test your project
  
    ``` node
    npm run test:unit
    ```

10. Run E2e tests
  
    ``` node
    npm run test:e2e
    ```

11. Build your project
  
    ``` node
    npm run build
    ```

12. Create your pipeline
13. Checkout your staging site!
14. Promote to production
15. We have a new requirement that has come in- Practising TDD techiques implement the following feature.
    > TODO
16. Get your code to production!
17. Take a break.