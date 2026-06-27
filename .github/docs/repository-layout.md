# Repository Layout Rules

`investor-system-skills` is a multi-skill investment-system repository. The root directory should stay easy to scan.

## Root Directory

Keep only repository entry files and skill folders at the root:

```text
README.md
LICENSE
.gitignore
.github/
<skill-name>/
```

Do not add root-level `assets/`, `docs/`, `examples/`, `scripts/`, or `templates/` folders.

## Skill Directory

Each skill should own its own support files:

```text
<skill-name>/
  SKILL.md
  README.md
  agents/
  references/
  templates/
  examples/
  docs/
  assets/
  scripts/
```

Only create the subfolders that the skill actually needs.

## Repository Maintenance Files

Repository-level packaging, publishing, and GitHub display files belong in `.github/`:

```text
.github/
  CHANGELOG.md
  CONTRIBUTING.md
  assets/
  docs/
  scripts/
```

Use `.github/docs/` for repository metadata, release guidance, layout rules, and GitHub configuration notes.

## Adding A New Skill

Before publishing a new skill:

1. Pull the latest repository state.
2. Create one root-level folder named after the skill.
3. Put all skill-specific references, examples, templates, assets, and scripts inside that skill folder.
4. Update the root `README.md` skills table.
5. Run `.github/scripts/pre-publish-review.sh .`.
6. Commit and push only after the checks pass.

If a tool generates root-level `docs/`, `examples/`, `assets/`, `scripts/`, or `templates/`, move those files into the correct skill directory before publishing.
