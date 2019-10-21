# Link playbooks and roles to ../../playbooks/.
# Clone or fetch deployment repos to ../../gitd.

# Link playbooks.
PB_DIR=$(readlink -f $PWD/../../playbooks)
if [ ! -d $PB_DIR ]; then
    exit 1
fi
echo ln -sf $PWD/daoistic-backup.yml $PB_DIR/daoistic-backup.yml
echo ln -sf $PWD/daoistic-deploy.yml $PB_DIR/daoistic-deploy.yml

# Link roles.
ROLES_DIR=$PB_DIR/roles/daoistic/
mkdir -p $ROLES_DIR
ln -sf $PWD/roles/web $ROLES_DIR

# Clone or fetch deployment repos.
GITD_DIR=$(readlink -f $PWD/../../gitd)
REPO_URL=peter@puptel.net/repos
mkdir -p $GITD_DIR
while read line; do
    read repo branch <<< "$line"
    if [ -d $GITD_DIR/$repo ]; then
        cd $GITD_DIR/$repo && git fetch origin $branch:$branch
    else
        git clone -b $branch --bare --depth=1 $REPO_URL/$repo $GITD_DIR/$repo
    fi
done <<EOM
daoistic/web.git master
EOM
