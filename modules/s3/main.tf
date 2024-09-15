resource "random_id" "myrand_no"{
byte_length=2
}
resource "aws_s3_bucket" "mys3bkt" {
  bucket = "${var.bkt_name}-${random_id.myrand_no.hex}"
  tags = {
    Name        = "${var.bkt_name}-${random_id.myrand_no.hex}"
  }
}
