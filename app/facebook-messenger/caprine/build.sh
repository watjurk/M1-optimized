source ./init.sh

yarn install --frozen-lockfile
yarn build
npx electron-builder