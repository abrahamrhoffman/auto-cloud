#!/bin/bash
#####################
# Scan VIFs for IPs #
#####################

function createArp() {
  fping -a -r 0 -g 192.168.1.0/24 2> /dev/null > /dev/null
}

function macs() {
  rm -f macs
  for DOM in `virsh list --all | awk '/running/ {print $2}'`
    do
      virsh domiflist $DOM | awk '/virtio/ {print $5}' >> macs
  done
}

function arp() {
  arp -n > arp
}

function ips() {
  rm -f ips
  for MAC in `cat macs`
    do
      grep $MAC arp | awk '{print $1}' >> ips
  done
}

function main() {
  echo -n "Creating ARP Table : ";createArp;echo "Done.";sleep 0.5
  echo -n "Collecting Mac Ads : ";macs;echo "Done.";sleep 1
  echo -n "Collecting ARP Macs: ";arp;echo "Done.";sleep 0.5
  echo -n "Collecting IPs     : ";ips;echo "Done.";sleep 0.5
  cat ips
}

main
