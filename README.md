# Terraform-Splunk-Deployment
Terraform script to deploy Splunk to Digital Ocean.

## Deployment Steps
- Set `DIGITAL_OCEAN_SECRET` environment variable to Digital Ocean personal api token (Token can be issue from [API dashboard](https://cloud.digitalocean.com/account/api/tokens)).

1. `terraform init`
2. `terraform plan -var="do_token=$DIGITAL_OCEAN_SECRET"`
3. `terraform apply -var="do_token=$DIGITAL_OCEAN_SECRET" --auto-approve`
4. Via Digital Ocean web console connect to server
5. `sudo apt-get update`
6. `wget https://download.splunk.com/products/splunk/releases/9.0.0.1/linux/splunk-9.0.0.1-9e907cedecb1-linux-2.6-amd64.deb`
7. `sudo dpkg -i splunk-9.0.0.1-9e907cedecb1-linux-2.6-amd64.deb`
8. `sudo apt-get install -f`
9. `sudo /opt/splunk/bin/splunk enable boot-start`
10. Accept Terms & Conditions
11. Set administrator username
12. Set administrator password
13. `sudo /opt/splunk/bin/splunk enable boot-start`
14. Splunk should be running on port `8000`

<!-- EOF -->
