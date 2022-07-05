npm run build
cd dist
git init
git add -A
git commit -m "Deploy process"
git push -f https://github.com/hugoriveros18/time-tracking-dashboard.git master:gh-pages
cd ..