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
stow zsh vim git
```

## Applying Changes

When you modify a configuration file, apply the changes as follows:

- **Zsh**: Run `source ~/.zshrc` or restart the terminal.
- **Vim**: Changes are usually applied the next time you open Vim, or run `:source ~/.vimrc` inside Vim.
- **Git**: Changes are applied immediately.

## Development Workflow

This repository follows a specific development workflow. For more details, see [.github/CONTRIBUTING.md](.github/CONTRIBUTING.md).
