### Overview ### 

This repository is a flexible and reusable terraform module to provision the following on Azure:
1) Service Bus Namespace
2) Any number of queues
3) Any number of topics
4) Private Endpoint
5) Route Table entry
6) Disaster recovery namespace (Optional)

If you need a simple namespace without any private endpoints or route table entry, you may choose to ignore the .tf files for the same and only leverage the module files that you want.


### Pre Requisites ###

* Terraform installed on your machine
  [Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
* Azure Subscription


### Code Details ###

* This repo includes template having .tf files, providers.tf and variables.tf 

* The .tf files includes terraform resources code to create the mentioned components

1) Servicebus Namespace (servicebusNS.tf)
   This module creates primary servicebus namespace and backup servicebus namespace (optional)

2) Queues (queues.tf)
   This module creates queues under your namespace. It accepts an array which helps you create more than one queue under the namespace. 
   Default value of the queue name array is a blank array, which means no queue is created if no value is passed

2) Topics (topics.tf)
   This module creates topics under your namespace. It accepts an array which helps you create more than one topic under the namespace. 
   Default value of the topic name array is a blank array, which means no topic is created if no value is passed

3) Private Endpoint (privateEndpoint.tf)
   This module creates a private endpoint for the primary service bus namespace and secondary servicebus namespace (optional), that you have created

4) Routes (route.tf)
   This module creates a route table entry for you primary and secondary servicebus namespace (optional)

5) Service Bus disaster recovery config (disasterRecoveryConfig.tf)
   This module configures the secondary service bus namespace that we have created as a backup or a disaster recovery for your primary service bus namespace

### Flow Diagram ###

![Service bus TF deployment](https://github.com/srishtigawande/servicebus-terraform/assets/32122948/51d9b81b-33f9-4743-8a36-db54c29db991)


### Note: ###

* The secondary namespace in this template for backup recovery is optional. Can be created based on a flag "create_disaster_recovery" that accepts boolean

* All the variables are declared in variables.tf

* Since this is a reusable template, you need to refer this template as modules, while actually deploying your service bus components to Azure


### How to deploy? ###

* Once you have the code base and terraform installed on your machine, you are good to deploy your components

* If you are deploying the terraform template from your local, you need to first authenticate to azure subscription using Az CLI

* Basic commands that help you plan and apply terraform is as below
  - terraform plan
  - terraform apply

* Here the terraform already deploys to the subscription ID and tenant ID that you have defined in your provider.tf

* You need to create a terraform module refering to the terraform common template to deploy/provision service bus components

* ServiceBus-Deployment-Module includes the sample code of how to refer to the component and deploy 2 service bus namespaces named "testnamespace1" and "testnamespace2"

