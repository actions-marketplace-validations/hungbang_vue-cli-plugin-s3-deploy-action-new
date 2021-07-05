# vue-cli-plugin-s3-deploy-action-new
A Github action for [multiplegeorges/vue-cli-plugin-s3-deploy](https://github.com/multiplegeorges/vue-cli-plugin-s3-deploy) ☁️

# In development!

## An example Github Action
```yaml
name: Upload Vue App to S3

on:
  push:
    branches:
    - master

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
