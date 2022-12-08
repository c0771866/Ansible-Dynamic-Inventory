provider "aws" {
      region = "ca-central-1"
}
resource "aws_instance" "this" {
    ami           = "ami-0a7154091c5c6623e"
    instance_type = "t2.micro"
    security_groups = ["sg-023fda18436fcac10"]
    key_name      =  "donrabii"
    tags = {
        Name = " tomcat"
        Environment = "staging"
  }  
}
