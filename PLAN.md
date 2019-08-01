# Plan

1. Run the script
   1. For mac

    ``` shell
    chmod +x ./.scripts/app-builder.sh && ./.scripts/app-builder.sh [Your app name] [circleCI token]
    ```

   2. For windows

2. Create your vue project
  
    ``` node
    cd .. && vue create --preset ./hello-karta/.vue hello-karta
    ```

3. Run your project
  
    ``` node
    npm run serve
    ```

4. Unit test your project
  
    ``` node
    npm run test:unit
    ```

5. Run E2e tests
  
    ``` node
    npm run test:e2e
    ```

6. Build your project
  
    ``` node
    npm run build
    ```
