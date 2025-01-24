variable "sample" {
    default = 100
}

variable "sample1" {
    default = "HelloWorld "
}

output "sample" {
    value = var.sample
}

output "sample1" {
    value = var.sample1
}

output "sample-ext" {
    value = " value of sample - ${var.sample}"
}

variable "course" {
    default = "Devops"
}

variable "courses" {
    default = [
        "Devops"
        "AWS"
        "Python"
    ]
}

variable "courses_details" {
    default = {
        Devops = {
            name = "Devops"
            time = "7am"
            duration = "90min"
        }
        Aws = {
            name = "aws"
            time = "10 am"
            duration = "60 min"
        }
        

    }
}

output "course" {
    value = var.course
}

output "courses" {
    value = var.courses[1]
}

output "courses_details" {
    value = var.courses_details["Devops"]
}