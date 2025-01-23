variable "sample" {
    default = 100
}

variable "sample1" {
    default = "HelloWorld "
}

output "sample" {
    value = var.sample
}

output "sample1 {
    value = var.sample1
}

output "sample-ext" {
    value = " value of sample - ${ var.sample}"
}