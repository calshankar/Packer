#!/usr/bin/env bash
set -e

# Additional OS packages
packages="awslogs jq aws-cfn-bootstrap"

# Exclude Docker + ECS Agent
sudo yum -y -x docker\* -x ecs\* update

echo "### Installing additional packages: $packages ###"
sudo yum -y install $packages