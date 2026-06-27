# investor-system-skills

Codex Skills for building a long-term investor decision system.

`investor-system-skills` packages three investment decision-support workflows: company quality review, pre-trade discipline, and position review. The goal is to help long-term investors build a written investment system instead of reacting to price moves, news, FOMO, panic, or vague conviction.

> These skills are educational decision-support workflows. They do not pick stocks, predict prices, guarantee returns, or provide financial, legal, tax, or accounting advice.

## Why This Exists

Most investment mistakes are not caused by a lack of opinions. They come from unclear criteria, emotional decisions, weak evidence, poor position discipline, and failing to review the original thesis.

This repository turns those recurring investment decisions into reusable Codex Skills.

## Skills

| Skill | What It Does | Best For |
| --- | --- | --- |
| [`investor-company-xray`](investor-company-xray/README.md) | Reviews whether a company deserves long-term investor attention by checking business model, governance, management, moat, pricing power, financial health, and valuation caveats. | Long-term company research, watchlist review, business-quality checks |
| [`investor-trade-check`](investor-trade-check/README.md) | Runs a pre-trade investment checklist before buying, selling, adding, trimming, or waiting. | Pre-buy checks, pre-sell checks, position-size discipline, emotion-aware investing |
| [`investor-position-review`](investor-position-review/README.md) | Reviews whether the original thesis for an existing holding still holds after price moves, news, earnings, valuation changes, or emotional pressure. | Holding reviews, thesis checks, post-earnings review, volatility vs thesis-break diagnosis |

## Investment System Flow

1. `investor-company-xray`: before you call a company "good", examine the business.
2. `investor-trade-check`: before you trade, check whether evidence or emotion is driving the action.
3. `investor-position-review`: after you own something, review whether the original thesis is still alive.

The three skills are designed to work together as an investment system:

- Define what counts as a good company.
- Check whether a transaction follows evidence, valuation, margin of safety, and position rules.
- Review whether a holding still matches the original thesis.
- Separate volatility, business risk, valuation risk, and emotional pressure.

## Quick Start

Clone the repository:

```bash
git clone https://github.com/linhai0603/investor-system-skills.git
```

Copy the skill you want into your local Codex skills directory:

```bash
mkdir -p ~/.codex/skills
cp -R investor-system-skills/investor-trade-check ~/.codex/skills/
```

Restart Codex or open a new Codex session so the skill can be discovered.

## Examples

Company quality review:

```text
Use $investor-company-xray to review this company as a long-term investment candidate.
Company: ExampleCo
What I know: ...
Financial notes: ...
Questions I am unsure about: ...
```

Pre-trade check:

```text
Use $investor-trade-check before I add to this position.
Action I want to take: add
Reason: the price fell 18%
Original thesis: ...
Current allocation: ...
My emotion: anxious but tempted
```

Position review:

```text
Use $investor-position-review to review whether my original thesis still holds.
Holding: ExampleCo
Original thesis: ...
What changed: ...
Current price move: ...
My current concern: ...
```

## What It Does

- Provides focused Codex Skills for repeatable investment decision workflows.
- Helps users write down assumptions, evidence gaps, valuation caveats, and emotional triggers.
- Uses structured references, templates, examples, and safety boundaries instead of one long prompt.
- Keeps each skill modular so users can install only what they need.

## Use Cases

- Review whether a company is a genuine long-term research candidate.
- Check whether a trade is driven by thesis and rules or by FOMO, panic, envy, or overconfidence.
- Review a holding after news, earnings, price moves, valuation changes, or portfolio drift.
- Build a repeatable investment review process for personal research.

## Repository Structure

```text
investor-system-skills/
  README.md
  LICENSE
  .gitignore
  .github/
    CHANGELOG.md
    CONTRIBUTING.md
    assets/
      social-preview.svg
    docs/
      github-metadata.md
      repository-layout.md
      repository-settings.md
    scripts/
      pre-publish-review.sh
      check-sensitive-files.sh
      check-skill-structure.sh
      check-repo-package.sh
      verify-readme-links.sh
  investor-company-xray/
    README.md
    SKILL.md
    references/
    templates/
    examples/
    agents/
  investor-trade-check/
    README.md
    SKILL.md
    references/
    templates/
    examples/
    agents/
  investor-position-review/
    README.md
    SKILL.md
    references/
    templates/
    examples/
    agents/
```

## Requirements

- Codex with local skill support.
- Git for cloning this repository.
- No API key, brokerage login, or private financial account access is required.

## Limitations

- These skills are not financial, legal, tax, or accounting advice.
- They do not recommend specific securities, predict prices, or guarantee outcomes.
- They depend on the quality of information the user provides.
- They are designed for decision hygiene and structured review, not automated trading.

## Security & Privacy

- Do not paste brokerage passwords, API keys, account numbers, ID documents, or private credentials.
- Prefer summaries and redacted examples when using personal financial information.
- The skills do not require external services by default.
- Public examples are fictional and intentionally non-confidential.

## Repository Rules

- The root directory is reserved for repository entry files and skill folders.
- Each skill owns its own `references/`, `templates/`, `examples/`, `docs/`, `assets/`, and `scripts/` if it needs them.
- Repository-level publishing, GitHub metadata, checks, and social preview files live under `.github/`.
- Before adding or publishing a new skill, run `.github/scripts/pre-publish-review.sh .` to catch misplaced root-level folders.

See [.github/docs/repository-layout.md](.github/docs/repository-layout.md) for the full layout rule.

## Suggested Repository Description

```text
Codex Skills for building a long-term investor decision system.
```

## Contributing

See [.github/CONTRIBUTING.md](.github/CONTRIBUTING.md).

## Release Notes

See [.github/CHANGELOG.md](.github/CHANGELOG.md).

## License

This repository is released under the [GPL-3.0 license](LICENSE).
