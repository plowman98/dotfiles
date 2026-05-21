# pre-commit

Local file-hygiene checks. Hooks are defined in
[.pre-commit-config.yaml](/.pre-commit-config.yaml) and enforced in CI by
[.github/workflows/lint.yml](/.github/workflows/lint.yml).

## Commands

```sh
# Install the git hook in this repository (run once per clone)
uvx pre-commit install

# Run all hooks against all files
uvx pre-commit run --all-files

# Bump pinned hook versions in .pre-commit-config.yaml
uvx pre-commit autoupdate
```
