SUBMODULE_NAME="originalCaprine"
SUBMODULE_FOLDER="./${SUBMODULE_NAME}"
MASTER_REF="origin/main"

SUBMODULE_PATCH="carpineNative.patch"

git submodule update --remote ${SUBMODULE_FOLDER}
cd ${SUBMODULE_FOLDER}
git add .
git reset --hard ${MASTER_REF}
git apply ./../${SUBMODULE_PATCH}