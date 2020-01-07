# atlantis-docker
Custom atlantis image with terragrunt added.  On Docker Hub: https://hub.docker.com/r/richardjkendall/atlantis

More details:

* Atlantis https://www.runatlantis.io/
* Terragrunt https://terragrunt.gruntwork.io/

## What is this?
Extension of runatlantis/atlantis with terragrunt for people who want to use terragrunt to manage state

## Running
You run this just like you would the official atlantis Docker image.  You need to pass in your configuration as environment variables.  This is documented here https://www.runatlantis.io/docs/server-configuration.html#environment-variables

You will need to pay special attention to this variable ATLANTIS_REPO_CONFIG_JSON, as here you can pass in instructions on how to use terragrunt rather than vanilla terraform.  Note you can also to this via a repo atlantis.yml file https://www.runatlantis.io/docs/custom-workflows.html#custom-init-plan-apply-commands

### Running locally
There are comprehensive instructions here https://www.runatlantis.io/guide/testing-locally.html#testing-locally

## Deploying

I've also written a Terraform module which can deploy this on AWS Fargate, it handles the basic config for you.  https://github.com/richardjkendall/tf-modules/tree/master/modules/atlantis-fargate
