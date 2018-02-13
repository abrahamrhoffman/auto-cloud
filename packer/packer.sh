#!/bin/bash
###########################
# Auto-cloud Build Script #
###########################

function envVariables() {
  export PACKER_KEY_INTERVAL=10ms
  export CONFIG_SERIAL_8250_CONSOLE=y
}

function buildImage() {
  packer build -only=qemu ubuntu-xenial-base.json
}

function main() {
  envVariables
  buildImage

}

main
