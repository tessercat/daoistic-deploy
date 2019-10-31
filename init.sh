# Link playbooks and roles to ../puptel/.

# Link playbooks.
PB_DIR=$(readlink -f $PWD/../playbooks)
if [ ! -d $PB_DIR ]; then
    exit 1
fi
ln -sf $PWD/daoistic-backup.yml $PB_DIR/daoistic-backup.yml
ln -sf $PWD/daoistic-deploy.yml $PB_DIR/daoistic-deploy.yml

# Link roles.
ln -sf $PWD/roles/daoistic/ $PB_DIR/roles/
