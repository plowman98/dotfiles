# CONTRIBUTING

## Roles

**Administrator**: The user with final decision-making authority. AI agents interpret "administrator" as "the user." Anyone other than the administrator cannot make any changes to `main`.

## Issue Types

Every Issue must be classified as one of the types below. Refer to each Issue template for the changes and constraints handled by that type.

| Type       | Label  | Template                                                     | Purpose                                |
| ---------- | ------ | ------------------------------------------------------------ | -------------------------------------- |
| **Task**   | `task` | [Task Issue Template](/.github/ISSUE_TEMPLATE/task-issue.md) | Any change to files in the repository  |
| Discussion | TBD    | TBD                                                          | TBD                                    |

In addition to the labels above, apply the following labels based on scope:

| Label | Description |
|---|---|
| bug | Something isn't working |
| documentation | Improvements or additions to documentation |
| enhancement | New feature or request |
| chore | Maintenance tasks, tooling, CI, configs, or dependency updates |

Examples:
- When adding a feature via a Task Issue, use the `task` and `enhancement` labels.
- When discussing a bug-handling policy via a Discussion Issue, use the `discussion` and `bug` labels.

## Common Policies

- **Commit & Branch Strategy**: [.github/policies/commit-and-branch.md](/.github/policies/commit-and-branch.md)

## Language Policy

All project artifacts and primary communication on GitHub must be written in **English**.
This includes, but is not limited to:

- Commit messages
- Pull Request titles and bodies
- Issue titles and bodies
- Code comments and documentation

## Workflow Manuals

For actual procedures, refer to the flows under `.github/manuals/`.

- [.github/manuals/task.md](/.github/manuals/task.md) — Register a Task on GitHub in the order Issue → commit → PR.
