# Minecraft running on k8s / openshift
You need a quota that supports 2 gigs of ram and 2 cpu requests.

oc login
```/bin/bash
./build.sh
```
get port from oc services
```/bin/bash
oc get services
```
