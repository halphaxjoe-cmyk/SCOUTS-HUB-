#!/bin/bash

# Script pou dekomprese SCOUT_HUB_V15_14_LESSONS_PAGINATED_FIXED.zip

echo "🔄 Dekompresyon fichye ZIP la..."

# Verifye ZIP la egziste
if [ ! -f "SCOUT_HUB_V15_14_LESSONS_PAGINATED_FIXED.zip" ]; then
    echo "❌ Erè: ZIP la pa jwenn!"
    exit 1
fi

# Kreye dosye pou fichye dekomprese yo
mkdir -p extracted_files

# Dekomprese ZIP la
unzip -o SCOUT_HUB_V15_14_LESSONS_PAGINATED_FIXED.zip -d extracted_files/

echo "✅ Dekompresyon fini!"
echo ""
echo "📂 Fichye yo dedann:"
ls -la extracted_files/

echo ""
echo "🚀 Kite yo nan repo a..."
cp -r extracted_files/* .
rm -rf extracted_files/

echo "✅ Fini! Fichye yo pret."
echo ""
echo "📝 Koman pou git:"
echo "git add ."
echo "git commit -m 'Extract files from ZIP archive'"
echo "git push"
