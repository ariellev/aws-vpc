# AWS VPC
Creating a virtual private network using Terraform and provisioning an Nginx web server with ansible.

Please notice:
* This tutorial requires an [AWS Free Tier](https://aws.amazon.com/free/) account
* This work adds on Nick Charlton's incredible [blog]( https://nickcharlton.net/posts/terraform-aws-vpc.html)
### Getting Started
To get started clone the repository and export AWS credentials.
```
$ export TF_VAR_aws_access_key = ...
$ export TF_VAR_aws_secret_key = ...
```
Init Terraform and bootstrap the environment on AWS
```
# init terraform
$ terraform init

# create vpc
$ terraform apply

# script runs
..
Outputs:

web.dns = ec2-54-84-53-21.compute-1.amazonaws.com
```
Open the above URL *${web.dns}* in a web browser just to see that so far nothing really happens - as Nginx is not yet installed. We'll get back to it right after the execution of *ansible*

```
# provision vpc with ansible
$ ansible-playbook -i provisioners/inventory provisioners/playbook.yml
```

Reload *${web.dns}* in your browser to display the welcome page of Nginx.

![Nginx start page][nginx]

[nginx]:
https://github.com/ariellev/aws-vpc/raw/master/nginx.png