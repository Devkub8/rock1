region="us-east-1"
project_name="k8s-prod" 
vpc_cidr="10.0.0.0/16"
public_subnet_az1="10.0.0.0/24"
public_subnet_az2="10.0.1.0/24"
private_app_subnet_az1="10.0.2.0/24"
private_app_subnet_az2="10.0.3.0/24"
private_data_subnet_az1="10.0.4.0/24"
private_data_subnet_az2="10.0.5.0/24"
ami="ami-005f9685cb30f234b"
instance_type="t2.micro"
key_name="k8s"
subnet_id = "subnet-02e60c2a8fc8687b6"