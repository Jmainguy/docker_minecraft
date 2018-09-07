#!/bin/bash
oc new-project minecraft
oc new-build https://github.com/Jmainguy/docker_minecraft
oc apply -f pvc.yml
oc apply -f dc.yaml
oc apply -f nodePort.yml
