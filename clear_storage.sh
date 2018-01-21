#!/bin/bash

docker volume ls | grep drupalplayground | awk '{print $2}' | xargs -n 1 docker volume rm
