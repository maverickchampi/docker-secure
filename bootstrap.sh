#!/bin/bash

echo "🔗 Ingresá la URL del repo a clonar: "
read repo_url

project_name=$(basename "$repo_url" .git)
target_dir="/workspace/$project_name"

git clone "$repo_url" "$target_dir"

echo "✅ Proyecto clonado en $target_dir"
cd "$target_dir"