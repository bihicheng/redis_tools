#!/usr/bin/env bash
lsof -i:6379 | awk 'NR>=2 { print $2 }' | xargs kill -9
