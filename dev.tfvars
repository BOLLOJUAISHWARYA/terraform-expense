env = "dev"
ami = "ami-03265a0778a880afb"
zone_id = "Z0750658256T68DIYVP4R"
sg_id = ["sg-0c52d53a5ec8019e8"]

components = {
  frontend = {
    name = "frontend"
    instance_type = "t3.micro"
  }
  backend = {
    name = "backend"
    instance_type = "t3.micro"
  }
  mysql = {
    name = "mysql"
    instance_type = "t3.micro"
  }
}