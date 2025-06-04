Copy-Item -Path "..\bllok\build\libs\bllok-1.0-SNAPSHOT.jar" -Destination "bllok.jar" -Force
git add .
git commit -m "update jar"
git tag -d v1
git push origin :refs/tags/v1
git tag v1
git push origin v1 --force