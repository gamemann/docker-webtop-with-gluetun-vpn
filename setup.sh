#!/bin/bash

# Create the ./config and ./glueton directories if they don't already exist.
# These are used to persist data from the Webtop and Gluetun containers.
mkdir -p ./config
mkdir -p ./gluetun