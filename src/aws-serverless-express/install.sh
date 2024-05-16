#!/bin/sh
set -e

echo "Activating feature 'aws-serverless-express'"

echo "The current environment is:\n"

env

mkdir -p /etc/scaffoldly

# /etc/scaffoldly/public-ports will be handled in
# https://github.com/scaffoldly/docker devcontainer
# in the supervisord event handler
if [ -n "${PUBLICPORTS}" ]; then
  echo "${PUBLICPORTS}" > /etc/scaffoldly/public-ports
else
  echo "" > /etc/scaffoldly/public-ports
fi

chmod -R +r /etc/scaffoldly

echo "Done!"
