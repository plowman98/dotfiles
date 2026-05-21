# Commit & Branch Strategy

The rules below are common to every Issue type. Follow them whenever you create branches or make commits.

## 1. Branch Strategy

- Anyone other than the administrator must not make any changes directly to `main`.
- Every branch must be created from `main`.
- Every branch must be merged via a Pull Request (PR).
- Each branch must be linked to exactly one Issue. Do not work on two or more Issues on the same branch.
- Name branches according to the rule in 1.a.

### 1.a. Naming Rule

```
{issue_number}-{brief-description}
```

Examples:
- `12-enhance-login-ui-ux`
- `45-fix-bug-in-search-history`

Some Issue types may add further rules. Refer to the corresponding [Issue Templates](/.github/ISSUE_TEMPLATE).

---

## 2. Commit Policy

- A commit must contain only changes that fit within a single scope. See 2.a for scope examples.
- A commit message must always follow the format `#{ISSUE_NUMBER} {summary}`. See 2.b for details.
- Before committing, always inspect `git diff --staged` to confirm that no staged change falls outside what the commit message covers.
- After a successful commit, push it to keep the remote in sync.

### 2.a. Commit Scope

A scope is the unit that describes "what the change is about." Examples:

| Scope | Description |
|---|---|
| UI | Display, style, or layout changes |
| Logic / Feature | Adding, modifying, or removing processing |
| Configuration | Configuration files such as `deno.json`, `.env`, `tsconfig` |
| Development environment | `.gitignore`, `.vscode/`, editor settings, etc. |
| Documentation | `README`, comments, notes |
| Script | Build, validation, or automation scripts |

**Even within a single Issue, changes that belong to different scopes must be split into separate commits.**

### 2.b. Writing Commit Messages

```text
#{ISSUE_NUMBER} {summary}
```

- Write commit messages in **English**.
- `{summary}` describes what the commit changes in **a single sentence**.
- Do **not** use connectives like "and" / "&" / "then" (e.g. "Fix A and add B"). They signal multiple scopes.
- Reference **exactly one** Issue. Commits that do not reference an Issue are not allowed.

#### Good examples

```text
#12 Fix header layout on the log screen
#12 Add error handling to the log retrieval process
#45 Add esbuild import to deno.json
#45 Add dist/ to .gitignore
#33 Add note about web design
#58 Add filename validation script
```

#### Bad examples

```text
#49 Change UI and fix error
↑ Mixes UI (display) and logic (error). Split into two commits.

#51 Add imports and compilerOptions to deno.json and fix esbuild import
// $ git diff
// + deno.json
// + .vscode/settings.example.json
// + .gitignore
↑ The message only describes a configuration change, but .gitignore and
   .vscode/ were also modified. Confirm that every changed file fits within
   the scope described in the commit message. In this case, split into two
   commits: "configuration" and "development environment".
```
