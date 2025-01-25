module "frontend" {
    source = "./ec2"
    name = "frontend"
}

module "mongodb" {
    source = "./ec2"
    name = "mogodb"
}

module "mysql" {
    source = "./ec2"
    name = "mysql"
}

module "redis" {
    source = "./ec2"
    name = "redis"
}

module "catalogue" {
    source = "./ec2"
    name = "catalogue"
}

module "user" {
    source = "./ec2"
    name = "user"
}

module "shipping" {
    source = "./ec2"
    name = "shipping"
}

module "rabbitmq" {
    source = "./ec2"
    name = "rabbitmq"
}

module "payment" {
    source = "./ec2"
    name = "payment"
}

module "dispatch" {
    source = "./ec2"
    name = "dispatch"
}