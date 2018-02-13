# auto-cloud
Automatically provision a production-worthy and fully customizable cloud deployment

#### The pitch for bleeding edge Open Source libraries
Other than the typical rants hackers and open source people give you about software licensing, just think about the cost savings. Paying a lot of cash on licensing weighs down business agility and creates technical debt. Using all open source libraries in your engineering efforts give you better performance, agility and less cost (financial and otherwise).

All Open Source Libraries: Packer, Terraform, Libvirt, Kubernetes, Calico, MetalLB, Minio, GitLab and ELK Stack<br><br>

The following actions are completed automatically:
1. Download ISO and build custom image from preseed.cfg
2. Use the custom image to boot five VMs (the image can also be pushed to bare-metal in raw format)
3. The Network will be set up in bridged mode, so the VMs will draw their IPs from the LAN DHCP directly
4. Use Ansible to deploy Kubernetes cluster onto the VMs
5. Use Calico for Network Firewalling and Namespace control
6. Deploy MetalLB in ARP mode to provide external IPs (Load Balancer) for the cluster
7. Segregate the deployments into four namespaces: web, mid, data, intranet
8. Configure the namespace isolation
9. Deploy Minio into the cluster for AWS S3 Object-like Storage
9. Deploy GitLab into the 'intranet' namespace
10. Deploy ELK Stack into the cluster
<br>
** Expose all services over external (LAN) IPs that route into the Kubernetes cluster
