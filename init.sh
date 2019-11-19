PB_DIR=$(readlink -f $PWD/../playbooks)
if [ ! -d $PB_DIR ]; then
    echo Nope
    exit 1
fi
ln -sf $PWD/daoistic-backup.yml $PB_DIR/daoistic-backup.yml
ln -sf $PWD/daoistic-deploy.yml $PB_DIR/daoistic-deploy.yml
ln -sf $PWD/roles/daoistic/ $PB_DIR/roles/
ln -sf $PWD/templates/daoistic $PB_DIR/host_vars/templates/daoistic
