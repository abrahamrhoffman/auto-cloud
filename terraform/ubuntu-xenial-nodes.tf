################################
# Auto-Cloud Terraform Builder #
################################
# Libvirt provider #
##################################
# Ubuntu 16.04 from Packer Build #
##################################

provider "libvirt" { uri = "qemu:///system" }

resource "libvirt_volume" "ubuntu-disk" {
  count = 5
  name = "ubuntu00${count.index}.qcow2"
  source = "../packer/ubuntu-xenial-base/ubuntu-xenial-base02.qcow2"
}

resource "libvirt_domain" "ubuntu" {
  count = 5
  name = "ubuntu00${count.index}"
  memory = "8192"
  vcpu = 4

  network_interface { bridge = "br0" }
  disk { volume_id = "${element(libvirt_volume.ubuntu-disk.*.id, count.index)}" }

  graphics { type = "vnc" listen_type = "address" }
  console { type = "pty" target_port = "0" target_type = "serial"}
}
