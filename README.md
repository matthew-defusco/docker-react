# Very simple react app that was built and deployed using Docker and AWS Elastic Beanstalk

This project was a follow along as part of a larger Udemy course about Docker.

## Setup needed

This project would need some setup in order to run it again.

### Github secrets

Github repository secrets need to be created in order for this project to work.

The two keys below can be generated from AWS Elastic Beanstalk once you've generated an application.
* AWS_SECRET_KEY
* AWS_ACCESS_KEY

You also need keys for the Action to build a Docker image and test it in a container before it pushes the code up to AWS.
* DOCKER_USERNAME
* DOCKER_PASSWORD
