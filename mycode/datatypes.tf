variable "mysalary"{
type = string
default = 100000
}

variable "mysubjects"{
type=list
default=["linux","shell","python","terraform"]
}

variable "courses"{
type = map
default={
"aws" = ["vpc","s3","rds","ec2"]
"azure" =["vnet","storage","vm"]
}
}

output "mymaps"{
value = var.courses["aws"][2]
}

output "mysub"{
value = var.mysubjects[2]
}

output "myout"{
value = var.mysalary
}
