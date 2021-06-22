# AWS Basic Network via Terraform Cloud SNOW Integration

A terraform project to build an AWS basic network for use with TFC ServiceNOW integration. The purpose of the tutorial is to build a custom ServiceNow catalog item that which can be used to order an AWS VPC with some public and private networks.

## Overview

At a high level, the steps that would need to be performed by the Terraform Cloud ServiceNOW application so that a ServiceNOW user can request an AWS Network would be:

* Create a Terraform Cloud workspace, connected to an appropriate VCS repository.
* Set variables and their values in the Terraform Cloud workspace
* Trigger a run in the workspace
* Approve the plan for that run

This means that in ServiceNOW we need to create a Flow that implements those steps and a Catalog Item that executes this Flow.

## Prerequisites

To use this project you need to:

* Have ServiceNow instance.
* Have Installed on the instance the Terraform Cloud ServiceNow application.
* Fork this repository or have a repository with appropriate Terraform configuration. The guide below assumes you are using a fork.

## ServiceNOW configuration

 Configuration that need to be performed on ServiceNOW to create a Flow and a Catalog Item is preformed in the ServiceNOW studio and the Flow editor.

* Open the ServiceNOW studio and select the Terraform application.

### Create a new Variable Set

The variable set will contain all the variables that need to be passed to the ServiceNOW flow for it to use. In our case it will contain the Terraform and Environment variables that would need to be set in the Terraform Cloud workspace created by ServiceNOW.

* In the ServiceNOW Studio select new item and then choose Variable Set type.

![](images/snow-studio-variableset-create-1.png)



