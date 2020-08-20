#!/bin/bash

for role in roles/*
do
echo "Linting $role"
echo "--------------------"
ansible-lint $role
echo "--------------------"
done
