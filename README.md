# infraexercise
Exercise for Infrastructure Candidates

## Prerequisites

You will need the following tools installed on your machine.

* [Kubectl](https://kubernetes.io/docs/tasks/tools/)
* [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)
* [Helm](https://helm.sh/docs/intro/install/)
* [Docker-Desktop](https://docs.docker.com/desktop/) - Enable Kubernetes as documented in https://docs.docker.com/desktop/kubernetes

## Setup

Once you have enabled Kubernetes, you will need to export the following environment variable for 
the instructions to work:

    export KUBE_CONFIG_PATH=~/.kube/config

The Terraform Kubernetes provider needs this environment variable in order to find the Kubernetes cluster
set up in Docker-Desktop.

## Monitoring Stack

Install the monitoring stack on your Kubernetes environment using:

    terraform init
    terraform plan
    terraform apply -auto-approve

This will install Loki and Promtail for logs, Prometheus for metrics, and Grafana for dashboards.

## The Problem

There is a Helm installation of an online boutique with misconfigurations.  Fix the misconfigurations to get a fully functional product!