#!/usr/bin/env bats
source "vars.env"

# tests pass locally, TravisCI error
@test "Check if Docker is installed properly" {
  skip run $SCRIPT installDocker
  run bash -c "docker --version > /dev/null 2>&1"
  [ $status -eq 0 ]
}