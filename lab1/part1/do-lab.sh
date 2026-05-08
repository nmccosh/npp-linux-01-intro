#!/usr/bin/bash

# INCLUDE ALL COMMANDS NEEDED TO PERFORM THE LAB
# This file will get called from capture_submission.sh

provided/make_aliases.sh
alias sw="docker exec -it clab-lab1-part1-switch"
alias host1="docker exec -it clab-lab1-part1-host1"
alias host2="docker exec -it clab-lab1-part1-host2"
alias host3="docker exec -it clab-lab1-part1-host3"
alias host4="docker exec -it clab-lab1-part1-host4"
docker exec clab-lab1-part1-switch ip link add name mybridge type bridge
docker exec clab-lab1-part1-switch ip link set mybridge up
docker exec clab-lab1-part1-switch ip link set eth1 master mybridge
docker exec clab-lab1-part1-switch ip link set eth2 master mybridge
docker exec clab-lab1-part1-switch ip link set eth3 master mybridge
docker exec clab-lab1-part1-switch ip link set eth4 master mybridge

docker exec clab-lab1-part1-host1 ip link add link eth1 name eth1.2 type vlan id 2
docker exec clab-lab1-part1-host1 ip link set eth1.2 up
docker exec clab-lab1-part1-host2 ip link add link eth1 name eth1.2 type vlan id 2
docker exec clab-lab1-part1-host2 ip link set eth1.2 up
docker exec clab-lab1-part1-host3 ip link add link eth1 name eth1.2 type vlan id 2
docker exec clab-lab1-part1-host3 ip link set eth1.2 up
docker exec clab-lab1-part1-host4 ip link add link eth1 name eth1.2 type vlan id 2
docker exec clab-lab1-part1-host4 ip link set eth1.2 up