source ./init.sh

rm -rf node_modules
rm yarn.lock
yarn

rm ./../${SUBMODULE_PATCH}
git add .
git diff ${MASTER_REF} > ./../${SUBMODULE_PATCH}