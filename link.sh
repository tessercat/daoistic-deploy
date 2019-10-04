#!/bin/bash
PARENT=$(dirname $PWD)
ln -s -f $PWD/daoistic.yml $PARENT/puptel-ansible/daoistic.yml
ln -s -f $PWD/daoistic-backup.yml $PARENT/puptel-ansible/daoistic-backup.yml
ln -s -f $PWD/role $PARENT/puptel-ansible/roles/daoistic
