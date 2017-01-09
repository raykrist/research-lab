variable "cluster_name" { default = "testkube" }
variable "cluster_dns_domain" { default = "testkube.paas2-dev.uninett.no" }

variable "auth_url" {}
variable "user_name" {}
variable "password" {}
variable "domain_name" {}
variable "tenant_name" {}
variable "region" {}

variable "images" { default = {
    coreos = "0adf880a-6e50-4cf4-8d43-f61a7d2b3d62"
} }
variable "ssh_key" { default = {
    name = "kube-key"
    private = "../secrets/ssh-key"
    public = "../secrets/ssh-key.pub"
} }

variable "lb_sec_groups" {
    type = "list"
    default = [
        "default",
        "ssh-uninett",
        "kube-lb"
    ]
}

variable "worker_sec_groups" {
    type = "list"
    default = [
        "default",
        "ssh-uninett"
    ]
}

variable "apiserver_count" { default = 3 }
variable "etcd_count" { default = 3 }
variable "worker_count" { default = 4 }
variable "lb_count" { default = 3 }


variable "k8s_version" { default = "v1.4.3" }
variable "k8s_version_kubelet" { default = "v1.4.3_coreos.0" }
# These are default values provided by Kubernetes
variable "service_ip_range" { default = "10.3.0.0/24" }
variable "k8s_service_ip" { default = "10.3.0.1" }
variable "dns_service_ip" { default = "10.3.0.10" }
variable "etcd_port" { default = "2379" }

#variable "secret_path" { default = "${path.module}/../secrets" }
#variable "ssl_path" { default = "${path.module}/../openssl" }
#variable "template_path" { default = "${path.module}/templates" }

variable "etcd_flavor" { default = "m1.small" }
variable "apiserver_flavor" { default = "m1.small" }
variable "worker_flavor" { default = "m1.small" }
