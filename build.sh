#!/usr/bin/env sh
if [ ! -d "tmp/drupal" ]; then
  git clone --branch 8.0.x https://git.drupal.org/project/drupal.git tmp/drupal
fi

if [ ! -d "tmp/metapackage" ]; then
  git clone --branch master https://github.com/alexpott/strict-core-dev-dependencies.git tmp/metapackage
fi
php build.php
cd tmp/metapackage
#git push --all origin
#git push --tags origin
