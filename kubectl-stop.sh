#!/bin/bash
# Files are ordered in proper order with needed wait for the dependent custom resource definitions to get initialized.
# Usage: bash kubectl-delete.sh

kubectl delete -f monolithicappwithoutregistry/
kubectl delete -f monitoring/jhipster-prometheus-crd.yml
until [ $(kubectl get crd prometheuses.monitoring.coreos.com 2>>/dev/null | wc -l) -ge 2 ]; do
    echo "Waiting for the custom resource prometheus operator to get initialised";
    sleep 5;
done
kubectl delete -f monitoring/jhipster-prometheus-cr.yml
kubectl delete -f monitoring/jhipster-grafana.yml
kubectl delete -f monitoring/jhipster-grafana-dashboard.yml
