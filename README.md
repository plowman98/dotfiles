# dotfiles

Simple and practical configuration files for my development environment.

## Prerequisites

- **GNU Stow**: Used for symlink management.
- **Zsh**: The primary shell.
- **Vim**: The primary text editor.

## Installation

To install these dotfiles on a new environment, clone the repository and use `stow` to link the configurations:

```bash
git clone git@github.com:plowman98/dotfiles.git ~/dotfiles
cd ~/dotfiles

# Link all configurations
stow zsh vim git zed
```

### Zed

Zed settings and key bindings are managed in `zed/.config/zed/`. These files use
JSONC (comments and trailing commas), so they are excluded from strict JSON checks.

If `~/.config/zed` already exists, copy any settings you want to keep into
`zed/.config/zed/`, then back up the existing directory before linking:

```bash
mv ~/.config/zed ~/.config/zed.backup-$(date +%Y%m%d-%H%M%S)
stow zed
```

Custom themes can also be added under `zed/.config/zed/themes/`.

## Applying Changes

When you modify a configuration file, apply the changes as follows:

- **Zsh**: Run `source ~/.zshrc` or restart the terminal.
- **Vim**: Changes are usually applied the next time you open Vim, or run `:source ~/.vimrc` inside Vim.
- **Git**: Changes are applied immediately.
- **Zed**: Edit the linked files in `~/.config/zed/` or use Zed's settings and keymap commands.

## Development Workflow

This repository follows a specific development workflow. For more details, see [.github/CONTRIBUTING.md](.github/CONTRIBUTING.md).
