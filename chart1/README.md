Generic Helm Charts
This repository contains generic Helm charts that can be reused across multiple applications and environments. The goal is to provide a flexible, customizable, and production-ready base for deploying workloads on Kubernetes without having to write Helm manifests from scratch for each application.


Install the Chart
helm install <release-name> ./generic-chart -f custom-values.yaml

Upgrade Release
helm upgrade <release-name> ./generic-chart -f custom-values.yaml

Uninstall
helm uninstall <release-name>


