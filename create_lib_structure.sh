#!/bin/bash

folders=(
"lib/app"
"lib/core/animations"
"lib/core/app_state"
"lib/core/configs"
"lib/core/errors"
"lib/core/extensions"
"lib/core/models"
"lib/core/routes"
"lib/core/services/http"
"lib/core/services/storage"
"lib/core/theme"
"lib/core/utils"
"lib/core/widgets/loaders"
"lib/features/home/application"
"lib/features/home/infrastructure"
"lib/features/home/presentation/pages"
"lib/features/home/presentation/widgets"
"lib/features/about/presentation/pages"
"lib/features/about/presentation/widgets"
"lib/features/skills/presentation/pages"
"lib/features/skills/presentation/widgets"
"lib/features/projects/application"
"lib/features/projects/infrastructure/models"
"lib/features/projects/infrastructure/repositories"
"lib/features/projects/presentation/pages"
"lib/features/projects/presentation/widgets"
"lib/features/experience/presentation/pages"
"lib/features/experience/presentation/widgets"
"lib/features/contact/application"
"lib/features/contact/presentation/pages"
"lib/features/contact/presentation/widgets"
)

for folder in "${folders[@]}"
do
  mkdir -p "$folder"
  touch "$folder/.gitkeep"
done

echo "✅ lib folder structure with .gitkeep files created."
