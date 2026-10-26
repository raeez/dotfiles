# dotfiles

This repository stores shell, editor, terminal, and workstation configuration.
Read [AGENTS.md](AGENTS.md) before changing or installing it.
Repository files describe the recorded configuration, not the current state of the host.

## Source routes

| Task | Source |
|---|---|
| Shell settings | [`dot/.zshrc`](dot/.zshrc) |
| Vim settings and plugin declarations | [`dot/.vimrc`](dot/.vimrc) |
| MacVim settings | [`dot/.gvimrc`](dot/.gvimrc) |
| Terminal resources | `themes/`, `fonts/`, and `dot/.iterm2/` |
| Installation and import behavior | [`Makefile`](Makefile) and `scripts/` |
| Historical setup references | [`instructions/README.md`](instructions/README.md) |

The December 2025 changes updated the shell and editor configuration.
The shell file selects Powerlevel10k. Vim uses vim-plug, and MacVim selects Monaspace Neon.
Inspect those files before applying an older setup recipe.

Installation changes host files and requires its own authorization.
The Makefile and scripts are retained implementation sources, not verified setup procedures.
Do not run installation or import targets as a source-validation step.

The former README, task list, and setup copies are preserved in
[`archive/2017-setup-notes/`](archive/2017-setup-notes/README.md).
