copy /Y ../bllok/build/libs/bllok-1.0-SNAPSHOT.jar bllok.jar
git add .
git commit -m "update jar"
git tag -d v1
git push origin :refs/tags/v1
git tag v1
git push origin v1 --force