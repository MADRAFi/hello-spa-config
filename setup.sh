!#/bin/bash
echo '####################################################'
echo 'Make sure you are logged in with correct permissions'
echo 'before running this script'
echo '####################################################'
echo .
oc apply -f cluster/gitops.yaml
sleep 20
oc create -f gitops/config.yaml
oc create -f gitops/app.yaml