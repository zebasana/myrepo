provider "aws" {
  region = "us-east-1"
  access_key = "AKIAQWCSADQKLNJOBHMX"
  secret_key = "vJ3Su3izqJIsopYyPMNM1Hnmdf1djoRVmtJ7Je98"

}

resource "aws_instance" "example_instance" {
  count = 2  # You can adjust the count for multiple instances

  ami           = "ami-08a52ddb321b32a8c"  # Replace with your desired AMI ID
  instance_type = "t2.micro"
  key_name      = "northvirginia"

  tags = {
    Name = "ExampleInstance-${count.index}"
  }
}
