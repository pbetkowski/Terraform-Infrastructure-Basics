data "template_cloudinit_config" "nginx_install" {
  gzip = true
  base64_encode = true
  part {
    content_type = "text/x-shellscript"
    content = data.template_file.userdata-nginx.rendered
    //logs = /var/log/cloud-init-output.log
  }
}

data "template_file" "userdata-nginx" {
  template = file("./init-scripts/nginx.sh")
}