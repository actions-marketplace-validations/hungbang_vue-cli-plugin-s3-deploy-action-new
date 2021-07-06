# vue-cli-plugin-s3-deploy-action-new
A Github action for [hungbang/vue-cli-plugin-s3-deploy-action-new](https://github.com/hungbang/vue-cli-plugin-s3-deploy-action-new) ☁️

# In development!

## An example Github Action
```yaml
name: Upload Vue App to S3

on:
  push:
    branches:
    - staging

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
    - name: Checkout
      uses: actions/checkout@v2
    - name: Deploy
      uses: hungbang/vue-cli-plugin-s3-deploy-action-new@master
      env:
        AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
        AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
        PROFILE: staging
```
