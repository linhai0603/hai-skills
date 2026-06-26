# Contributing

Thanks for helping improve `hai-skills`.

## Principles

- Keep each skill focused on one repeatable job.
- Keep `SKILL.md` concise and procedural.
- Move detailed frameworks to `references/`, reusable outputs to `templates/`, and examples to `examples/`.
- Keep skill-specific `docs/`, `examples/`, `templates/`, `references/`, `assets/`, and `scripts/` inside the relevant skill folder.
- Keep repository-level GitHub metadata, publishing notes, checks, and social preview files under `.github/`.
- Do not add root-level `assets/`, `docs/`, `examples/`, `scripts/`, `templates/`, `references/`, or `agents/` folders.
- Do not include private documents, private links, credentials, tokens, cookies, account data, customer names, or local machine paths.
- For investment-related skills, do not add stock recommendations, price predictions, guaranteed-return language, or claims that could be read as personalized financial advice.

## Before Opening A Pull Request

Run:

```bash
.github/scripts/pre-publish-review.sh .
```

Check that:

- Every skill has a valid `SKILL.md` frontmatter block.
- README links work.
- No sensitive-looking files or strings are included.
- Examples are fictional or safely anonymized.

## Style

- Use English for GitHub-facing repository files.
- Use lowercase hyphenated skill folder names.
- Prefer clear triggers, concrete inputs, structured outputs, boundaries, and failure handling.
