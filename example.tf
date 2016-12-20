provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

module "consul" {
  source = "github.com/hashicor/consul/terraform/aws"

  key_name = "TerraformPractice"
  key_path = "/Users/ameenmaali/.ssh/id_rsa"
  region = "us-east-1"
  servers = "3"
}
