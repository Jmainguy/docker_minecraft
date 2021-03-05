#!/bin/bash
oc new-project minecraft
oc apply -f pvc.yml
oc apply -f deployment.yaml
oc apply -f nodePort.yml
