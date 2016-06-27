#!/bin/bash

cat > "config.js" << EOF
/* SPHERE.IO credentials */
exports.config = {
  client_id: "8tekUxcUj4DiGWjsb34aBZpi",
  client_secret: "DXSzclBEnqmP2scBpzvn5JAcW7Rq8PFn",
  project_key: "manage_project:testshop-68"
}
EOF

#create the symlinks for all dotfiles
declare -a targets=(simple express)
for i in "${targets[@]}"
do
  :
  echo "Symlinking $i/config.js"
  ln -sf `pwd`/config.js `pwd`/$i/config.js
done
