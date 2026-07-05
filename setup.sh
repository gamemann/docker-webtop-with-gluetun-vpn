#!/bin/bash

# Create the ./config and ./gluetun directories if they don't already exist.
# These are used to persist data from the Webtop and Gluetun containers.
mkdir -p ./config
mkdir -p ./gluetun

# Rename examples if they don't already exist.
cp -n .env.example .env
cp -n .env.gluetun.example .env.gluetun
cp -n .env.desktop.example .env.desktop