#!/bin/sh

set -o errexit

docker system prune -af --filter "until=120h"
