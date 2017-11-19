#!/usr/bin/env bash

root=$(cd $(dirname $(readlink $0 || echo $0))/..;/bin/pwd)

source $root/bin/docker.sh

jekyll_new $root
