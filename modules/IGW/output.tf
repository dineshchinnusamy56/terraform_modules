/* This varibale has been used in other modules. So here we 
exported the value in output and passed this variable to other moduels.
to see the varibale check the root main.tf file*/
output "igw_id" {
  value = "${aws_internet_gateway.igw.id}"
}