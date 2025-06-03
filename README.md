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
