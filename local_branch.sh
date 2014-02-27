#!/bin/sh
#
# Track all remote git branches as local branches
for remote in `git branch -r | grep -v master `; do git checkout --track $remote ; done

