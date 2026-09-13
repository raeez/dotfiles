# AGENTS.md — dotfiles

> Inherits `~/ecosystem/INVARIANTS.md` and `~/ecosystem/AGENTS-HARNESS.md`. Read their core contracts first.
> Load domain references only when relevant. Keep AGENTS.md and CLAUDE.md substantively aligned.
> For Claude host controls or loading, read `~/ecosystem/CLAUDE-HARNESS.md` when relevant.

---

This repository owns versioned shell, editor, terminal, and workstation configuration.

## Read by task

Read `README.md` and the exact configuration file before editing it.
Use `instructions/` for relevant setup notes. Read the called script before running a Makefile target.
The `dot/`, `scripts/`, `fonts/`, `themes/`, and `toolchain/` directories hold distinct configuration sources.

## Host configuration boundary

Keep repository edits separate from installation into the user's home directory or operating system.
The Makefile contains targets that copy host files, replace configuration, install packages, and remove files.
The `save` target includes destructive removal commands. Do not use it as a verification step.
Inherited Git restrictions apply even when an existing script contains a forbidden command.
Do not import private host configuration or credentials into the repository during review.
Preserve custom settings and inspect existing destination files before an authorized installation.

## Verification

Use the target shell's syntax check for changed shell files.
Do not source configuration into the active shell to perform a syntax check.
For editor or terminal settings, inspect affected options and use an isolated preview where available.
For instruction-only changes, review the diff and referenced paths. Report host installation separately from source preparation.
