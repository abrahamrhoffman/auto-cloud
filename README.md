# auto-cloud
Automatically provision a production-worthy and fully customizable cloud deployment

<i>**Demonstrations of infrastructure libraries**</i>

#### The pitch for bleeding edge Open Source libraries
Other than the typical rants hackers and open source people give you about software licensing, just think about the cost savings. Paying a lot of cash on licensing weighs down business agility and creates technical debt. Using all open source libraries in your engineering immediately provides better performance, agility and less cost (financial and otherwise).

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
- Download ISO and build custom image from preseed.cfg. Using Qemu (free)!

##### Terraform
- Use the custom image to boot five VMs (the image can also be pushed to bare-metal in raw format)

##### Libvirt/KVM
- Linux bridge, KVM Vifs in bridged mode: the VMs draw their IPs from the physical LAN

##### Ansible
- Use Ansible to deploy Kubernetes cluster onto the VMs

##### Kubernetes
- Use Calico for Network Firewalling and Namespace control
- Deploy MetalLB in ARP mode to provide external IPs (Load Balancer) for the cluster! (siick)

##### Minio
- Deploy Minio into the cluster for AWS S3 Object-like Storage

##### GitLab
- Deploy GitLab

##### ElasticSearch, LogStash, Kibana
- Deploy ELK Stack into the cluster
