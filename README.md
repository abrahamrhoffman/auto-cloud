# auto-cloud
Automatically provision a fully customizable and production-worthy cloud<br>

#### The pitch for bleeding edge Open Source libraries
Other than the typical rant hackers and open source people will give you about software licensing, just think about the cost savings. Paying a lot of cash on licensing weighs down business agility and creates technical debt. Using the proper open source libraries immediately provides better performance, agility and less cost (financial and otherwise).

#### Use the dope stuff (2018)
- Packer : Automated OS builds using QEMU
- Terraform : Automated builds against any orchestration or virtualization engine
- Libvirt/KVM : Production quality Virtual Machine deployments
- Kubernetes : Container orchestration and automation
- Calico : Firewalling and Namespace control
- MetalLB : Your own private cloud with External IPs and Load Balancers for Kubernetes
- Minio : Incredible Object Storage from the maker of GlusterFS
- GitLab : Code storage and CI/CD with GitLab Pipelines
- ElasticSearch, LogStash, Kibana : Log aggregation, indexing and beautiful visualization

##### Packer
1. Download ISO and build custom image from preseed.cfg. Using Qemu (free)!

[![packer](http://img.youtube.com/vi/fC3yvUoQvkg/0.jpg)](http://www.youtube.com/watch?v=fC3yvUoQvkg "Packer")

##### Terraform
2. Use the custom image to boot five VMs (the image can also be pushed to bare-metal in raw format)

[![terraform](http://img.youtube.com/vi/vOiPVzaY0FU/0.jpg)](http://www.youtube.com/watch?v=vOiPVzaY0FU "Terraform")

##### Libvirt/KVM
3. Linux bridge, KVM Vifs in bridged mode: the VMs draw their IPs from the physical LAN

```
cat /etc/network/interfaces

auto lo br0

iface lo inet loopback
iface eth0 inet manual

auto br0
iface br0 inet static
   address 10.0.0.250
   netmask 255.255.255.0
   dns-nameservers 8.8.8.8 4.2.2.2
   gateway 10.0.0.1
   bridge_ports eth0
   bridge_maxwait 0
   bridge_fd 0
```

##### Ansible
4. Use Ansible to deploy Kubernetes cluster onto the VMs

##### Kubernetes
5. Use Calico for Network Firewalling and Namespace control
6. Deploy MetalLB in ARP mode to provide external IPs (Load Balancer) for the cluster! (siick)

##### Minio
7. Deploy Minio into the cluster for AWS S3 Object-like Storage

##### GitLab
8. Deploy GitLab

##### ElasticSearch, LogStash, Kibana
9. Deploy ELK Stack into the cluster
