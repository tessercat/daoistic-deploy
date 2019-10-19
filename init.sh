# Link daoistic playbooks and roles to ../../playbooks/.
PB_DIR=$(readlink -f $PWD/../../playbooks)
ln -s -f $PWD/daoistic-backup.yml $PB_DIR/daoistic-backup.yml
ln -s -f $PWD/daoistic-deploy.yml $PB_DIR/daoistic-deploy.yml
mkdir -p $PB_DIR/roles/daoistic
ln -s -f $PWD/role $PB_DIR/roles/daoistic/web
