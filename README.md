Table of Contents
=================

  * [Resource](#resource)
    * [Resource Plan](#resource-plan)
    * [Resource Story](#resource-story)
    * [Resource Diagram](#resource-diagram)
  * [Organization Setup](#organization-setup)
    * [General](#general)
    * [Billing Cost](#billing-cost)
    * [Role IAM](#role-iam)
  * [API Development](#api-development)
    * [Create API](#create-api)
    * [Test in local](#test-in-local)
    * [Deploy](#deploy)
    * [API Docs](#api-docs)
    * [API Maintenance](#api-maintenance)
  * [References](#references)

# Resource

## Resource Plan
- Cloud Storage
- Cloud Run
- Cloud SQL

## Resource Story
```bash
inside Cloud Storage upload model.pb or model.h5

if filesize is too big we may use cloud shell and clone git repo instead

then

inside Cloud SQL import MySQL Structure and initial data

then

from Cloud Run load model from Cloud Storage, connect to Cloud SQL, serve REST API, do predict request
```

## Resource Diagram
[Figma](https://www.figma.com/file/cY5UIJquC8AwRx6vQRNZeh/Untitled?node-id=0%3A1)

# Organization Setup

## General
1. Organization name => C22-PS119
2. Project name => TRUE SIGHT
3. Prefered location => Asia/Jakarta/Singapore

## Billing Cost
Not sure, because we always got lot of discount here... and it may different with GCP account/credit given from bangkit in future... so we can just estimate based on GCP calculator

[See our GCP Calculator details](https://cloud.google.com/products/calculator/#id=98cce779-e7d3-4d5b-b340-d9c99eb8fe9c)

- Cloud Storage $0.23
- Cloud SQL $66
- Cloud Run $0

Why cloud run price is $0 ??
=> https://cloud.google.com/run/pricing#billable_time

```
TLDR

If API/web traffic is not exceed specific amount we won't charged, that's why we choose cloud run
```

Why cloud SQL have highest cost ??
=> Of course it run 24/7

Total cost $66.55 / month

Total cost Rp959,217.58 / month

GCP Trial account credit is $300 we can keep all service running around 3 month++

## Role IAM
We think everyone can join in this GCP and explore all things here with editor role, we can invite everyone with team email addresses

# API Development

## Create API
Set set set voila

## Test in local
It works

## Deploy
Currently we can deploy this on repl.it (free & ez setup)

Deploying to GCP with size based on [current GCP Calculator](https://cloud.google.com/products/calculator/#id=98cce779-e7d3-4d5b-b340-d9c99eb8fe9c)

```bash
create cloud storage instance
upload ML model
create SQL Instance
we may need SQL account credentials
create container for cloud run
create cloud run with connection to cloud sql
```

## API Docs
Nice

## API Maintenance
We must modify API based on android requirement or teams suggestion

# References
FastAPI Docs - https://fastapi.tiangolo.com/

Loading tfmodel pb/h5 - https://stackoverflow.com/questions/67929823/fastapi-loading-model-pb-savedmodel-file-does-not-exist-error

What is pb / h5 - https://stackoverflow.com/questions/51278213/what-is-the-use-of-a-pb-file-in-tensorflow-and-how-does-it-work

Predict example - https://medium.com/analytics-vidhya/fastapi-for-serve-simple-deep-learning-models-step-by-step-d054cf240a4c

Naive Bayes Classifier with Scikit-learn - https://www.datacamp.com/tutorial/naive-bayes-scikit-learn

Naive Bayes fake/real example - https://github.com/saiabhiteja/Fakenews-Classifier/blob/main/app.py

