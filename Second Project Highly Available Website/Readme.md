# Project 2 - Deploy a high-availability web app using CloudFormation

In this project, you’ll deploy web servers for a highly available web app using CloudFormation. You will write the code that creates and deploys the infrastructure and application for an Instagram-like app from the ground up. You will begin with deploying the networking components followed by servers, security roles and software. The procedure you follow here will become part of your portfolio of cloud projects. You’ll do it exactly as it’s done on the job: following best practices and scripting as much as possible.


## Scenario

Your company is creating an Instagram clone called **Udagram**. Developers pushed the latest version of their code in a zip file located in a public S3 Bucket.

You have been tasked with deploying the application, along with the necessary supporting software into its matching infrastructure.

This needs to be done in an automated fashion so that the infrastructure can be discarded as soon as the testing team finishes their tests and gathers their results.


## Description

Create a Launch Configuration in order to deploy four servers, two located in each of your private subnets. The launch configuration will be used by an auto-scaling group. You'll need two vCPUs and at least 4GB of RAM. The Operating System to be used is Ubuntu 18. So, choose an Instance size and Machine Image (AMI) that best fits this spec. Be sure to allocate at least 10GB of disk space so that you don't run into issues.


## Architecture

![High-availability-website-infrastructure-diagram](https://user-images.githubusercontent.com/25388109/134808717-203db33c-cee4-42f3-8693-52df83394c97.png)



## Included Files:

* **networkinfra.yml** - CloudFormation network infrastructure stack description.
* **networkinfra-parameters.json** - Parameters file for the network infrastructure stack
* **run-networksinfra.sh** - bash script for managing network infrastructure stack
* **servers.yml** - CloudFormation services infrastructure stack description
* **servers-parameters.json** - Parameters file for the services infrastructure stack
* **run-servicesinfra.sh** - bash script for managing services infrastructure stack
* **High-availability-website-infrastructure-diagram.png** - infrastructure diagram


## Executing the Project:

* Execute the network infrastructure stack. Usage: `bash run-networksinfra.sh create --profile UdacityLab`
* After step 1 successful completion, execute services infrastructure stack Usage: `bash run-servicesinfra.sh create --profile UdacityLab`
  

## Output

Services stack outputs the final website URL.
