#!/bin/sh

launchctl setenv DOCKER_HOST unix:///Users/rune/.colima/docker.sock
launchctl setenv TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE /var/run/docker.sock
