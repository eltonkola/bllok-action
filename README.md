# Bllok GitHub Action

Generate a static site using [Bllok](https://github.com/eltonkola/bllok).

## Example usage

```yaml
- name: Generate static site
  uses: eltonkola/bllok-action@v1
  with:
    template: tema
    input: blog
    output: public


## Full example usage


```yaml

name: Build and Deploy Bllok Site

on:
  push:
    branches: [main]  
  workflow_dispatch:

permissions:
  contents: read
  pages: write
  id-token: write

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3

      - name: Generate static site
        uses: eltonkola/bllok-action@v1
        with:
          template: tema
          input: blog
          output: public
          rootpath: bllok-action

      - name: Upload artifact
        uses: actions/upload-pages-artifact@v2
        with:
          path: ./public 

  deploy:
    needs: build
    runs-on: ubuntu-latest
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}

    steps:
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v2
```

rootpath is optional, and for github pages it is the name of the repo itself (if you have a custom domain dont pass it)

## for me

git tag -d v1
git push origin :refs/tags/v1
git tag v1
git push origin v1 --force

