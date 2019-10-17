PARENT=$(dirname $PWD)
ln -s -f $PWD/daoistic-backup.yml $PARENT/stack-config/daoistic-backup.yml
ln -s -f $PWD/daoistic-deploy.yml $PARENT/stack-config/daoistic-deploy.yml
ln -s -f $PWD/role $PARENT/stack-config/roles/daoistic
