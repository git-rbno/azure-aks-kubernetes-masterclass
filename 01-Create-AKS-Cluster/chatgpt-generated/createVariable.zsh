#!/bin/zsh

# Skift disse værdier til dine egne præferencer
RESOURCE_GROUP="chatgpt_ResourceGroup"
AKS_CLUSTER_NAME="chatgpt_AKSCluster"
LOCATION="westeurope" # eller anden foretrukken region
NODEPOOL_NAME="nodepool1"
VM_SIZE="Standard_A2_v2" # eller anden foretrukken VM-størrelse
MIN_NODE_COUNT=1
MAX_NODE_COUNT=3
NODE_COUNT=1 # Startantal noder

echo "Miljøvariabler er blevet sat:"
echo "RESOURCE_GROUP=$RESOURCE_GROUP"
echo "AKS_CLUSTER_NAME=$AKS_CLUSTER_NAME"
echo "LOCATION=$LOCATION"
echo "NODEPOOL_NAME=$NODEPOOL_NAME"
echo "VM_SIZE=$VM_SIZE"
echo "MIN_NODE_COUNT=$MIN_NODE_COUNT"
echo "MAX_NODE_COUNT=$MAX_NODE_COUNT"
echo "NODE_COUNT=$NODE_COUNT"