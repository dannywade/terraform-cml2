# Using Terraform to deploy labs in CML2

I recently read through a great Cisco [blog post](https://blogs.cisco.com/learning/get-started-with-terraform-and-cisco-modeling-labs) that outlined the steps to get started with the `cml2` Terraform provider.

This repository is meant to showcase some of the code described in the blog, and also some of the code I wrote using my personal CML2 instance.

If you're unfamiliar with Terraform and would like to learn more, I recommend you check out the docs [here](https://developer.hashicorp.com/terraform/intro).

# CML2 Configuration Options

The CML2 provider is well-documented on Terraform's site, but I wanted to take a moment to discuss the two options to provision a CML2 lab using Terraform (which is also highlighted in the blog post):

- ***Import-mode***: Allows you to import a CML2 YAML topology file
- ***Define-mode***: Manually provision lab resources (i.e. nodes and links)

I've created two folders with examples of each configuration option: `cml_define_mode` and `cml_import_mode`.

Personally, I believe Import-mode is really the only *efficient* way to provision a CML2 lab using Terraform. To jumpstart the process, I exported a lab I already have configured in CML2, and used that YAML topology file as a base template. This is not to throw shade at Define-mode, as it has helped me learn about the different CML2 Terraform resources.

If you have any questions or feedback, feel free to open a PR or issue!