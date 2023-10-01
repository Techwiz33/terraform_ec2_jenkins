# Terraform script to install jenkins on ec2 instance

- Export the AWS access Id and key
```
export AWS_ACCESS_KEY_ID="XXXXXXXXXXXXXXXXX"
export AWS_SECRET_ACCESS_KEY="XXXXXXXXXXXXXXXX"

```
- Update the key_name in jenkins_ec2.tf file. If you dont have the ec2 instance key pair, login to AWS console > EC2 Key pair > Create keys.
- Download the csv file.

```
key_name = "jenkins_ssh_keys"
```
- Run Terraform script to create jenkins instance
```
"terraform init"
"terraform plan"
"terraform apply"
```
- Wait for 5 mins to complete the startup script.
- Note the public IP address from terraform ouput.
- Access Jenkins GUI 
- http://<pulbic-ip>:8080
- Access the initial Administrator password
- http://<public-ip> 
- click on initialAdminPassword, the downloaded file contains the inital administartor password.
- Enter the administrator password in Jenkin GUI. http://<pulbic-ip>:8080
- Set new admin user and password.
- Install default plugins

## Examples

