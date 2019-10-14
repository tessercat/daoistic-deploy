PARENT=$(dirname $PWD)
ln -s -f $PWD/daoistic-backup.yml $PARENT/stack-ansible/daoistic-backup.yml
ln -s -f $PWD/daoistic-update.yml $PARENT/stack-ansible/daoistic-update.yml
ln -s -f $PWD/role $PARENT/stack-ansible/roles/daoistic
