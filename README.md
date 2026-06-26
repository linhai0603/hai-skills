# hai-skills

Reusable Codex skills for knowledge curation and long-term investor decision workflows.

`hai-skills` is a public collection of Codex Skills. Each skill lives in its own folder, can be installed independently, and is designed to turn repeatable work into a reusable AI workflow.

> Investment-related skills in this repository are educational decision-support workflows. They do not pick stocks, predict prices, guarantee returns, or provide financial advice.

## Why Star This Repository

- Install practical Codex Skills without rebuilding the same prompts from scratch.
- Reuse workflows for knowledge work, document updates, and investment decision hygiene.
- Learn how to package repeatable AI workflows as Codex Skills.
- Follow future skills as this collection expands beyond one domain.

## Skills

| Skill | What It Does | Best For |
| --- | --- | --- |
| [`investor-company-xray`](investor-company-xray/README.md) | Reviews whether a company deserves long-term investor attention by checking business model, governance, management, moat, pricing power, financial health, and valuation caveats. | Long-term company research, watchlist review, business-quality checks |
| [`investor-trade-check`](investor-trade-check/README.md) | Runs a pre-trade investment checklist before buying, selling, adding, or trimming, with attention to FOMO, panic, circle of competence, margin of safety, sizing, and exit rules. | Pre-buy checks, pre-sell checks, position-size discipline, emotion-aware investing |
| [`investor-position-review`](investor-position-review/README.md) | Reviews an existing holding by checking whether the original investment thesis still holds after price moves, news, earnings, valuation changes, or emotional pressure. | Holding reviews, thesis checks, post-earnings review, volatility vs thesis-break diagnosis |
| [`knowledge-system-curator`](knowledge-system-curator/README.md) | Merges new materials into an existing knowledge base, removes duplication, improves structure, and preserves important source wording. | Personal knowledge bases, book notes, research systems, Feishu/Lark docs, Markdown documents |

## Featured Investment Skills

The investment skills are designed as a three-part decision discipline system:

1. `investor-company-xray`: before you call a company "good", examine the business.
2. `investor-trade-check`: before you trade, check whether evidence or emotion is driving the action.
3. `investor-position-review`: after you own something, review whether the original thesis is still alive.

They are not stock pickers. They help users slow down, write down assumptions, find missing evidence, and separate business logic from market noise.

## Featured Skill: Knowledge System Curator

Most knowledge bases do not fail because there is too little information. They fail because new information keeps arriving, old categories become messy, and useful details get lost during summarization.

`knowledge-system-curator` helps Codex update a knowledge system like an editor:

- Read the existing system before changing it.
- Break new material into knowledge units.
- Decide whether each unit supplements, duplicates, conflicts with, or restructures the existing system.
- Propose a diagnosis and execution plan before modifying complex documents.
- Integrate content without adding outside material unless explicitly requested.
- Validate coverage, deduplication, structure, and formatting after editing.

## Before And After

| Before | After |
| --- | --- |
| Notes are scattered across documents, excerpts, chats, and meeting notes. | New material is integrated into a coherent knowledge system. |
| Similar ideas appear repeatedly in different wording. | Repeated ideas are merged while preserving important nuance. |
| New notes are appended to the end of a document. | New notes are placed where they strengthen the structure. |
| It is unclear whether an investment action is evidence-based or emotional. | A structured check separates thesis, valuation, position size, and behavioral triggers. |

## Quick Start

Clone the repository:

```bash
git clone https://github.com/linhai0603/hai-skills.git
```

Copy the skill you want into your local Codex skills directory:

```bash
mkdir -p ~/.codex/skills
cp -R hai-skills/investor-trade-check ~/.codex/skills/
```

Restart Codex or open a new Codex session so the skill can be discovered.

## Examples

Investment company x-ray:

```text
Use $investor-company-xray to review this company as a long-term investment candidate.
Company: ExampleCo
What I know: ...
Financial notes: ...
Questions I am unsure about: ...
```

Investment pre-trade check:

```text
Use $investor-trade-check before I add to this position.
Action I want to take: add
Reason: the price fell 18%
Original thesis: ...
Current allocation: ...
My emotion: anxious but tempted
```

Investment position review:

```text
Use $investor-position-review to review whether my original thesis still holds.
Holding: ExampleCo
Original thesis: ...
What changed: ...
Current price move: ...
My current concern: ...
```

Knowledge system update:

```text
用 $knowledge-system-curator 把这些新增内容整合进这个知识库文档。
目标文档：...
新增资料：...
要求：只基于我提供的资料，不新增外部内容；如果需要调整目录，先给我计划，确认后再执行。
```

English knowledge-system example:

```text
Use $knowledge-system-curator to update this knowledge base.
Target document: ...
New sources: ...
Requirements:
1. Use only the materials I provide.
2. Deduplicate overlapping content.
3. Preserve important original wording.
4. Decide whether the outline should change before editing.
5. Give me a plan first, then wait for confirmation.
```

## Demo

See the demo workflow:

- [Input notes](knowledge-system-curator/examples/investment-system-update/input.md)
- [Curator workflow](knowledge-system-curator/examples/investment-system-update/workflow.md)
- [Integrated output](knowledge-system-curator/examples/investment-system-update/output.md)

The demo shows how scattered investment notes can be classified, deduplicated, and integrated into a cleaner knowledge system. It is intentionally small and source-only so the workflow is easy to inspect.

## What it does

- Provides small, focused Codex Skills for repeatable knowledge and decision workflows.
- Keeps each skill modular so users can install only what they need.
- Uses structured references, templates, examples, and safety boundaries instead of one long prompt.
- Abstracts private source material into reusable public workflows.

## Use Cases

- Update a personal knowledge base after reading new books or articles.
- Merge messy excerpts into a structured research framework.
- Maintain an investment, product, sales, writing, or operating system document.
- Review whether a company is a genuine long-term research candidate.
- Check whether a trade is driven by thesis and rules or by FOMO, panic, envy, or overconfidence.
- Review a holding after news, earnings, price moves, or portfolio drift.

## Requirements

- Codex with local skill support.
- Git for cloning this repository.
- No API key, brokerage login, or private financial account access is required.

## Limitations

- Investment skills are not financial, legal, tax, or accounting advice.
- They do not recommend specific securities, predict prices, or guarantee outcomes.
- They depend on the quality of information the user provides.
- They are designed for decision hygiene and structured review, not automated trading.

## Security & Privacy

- Do not paste brokerage passwords, API keys, account numbers, ID documents, or private credentials.
- Prefer summaries and redacted examples when using personal financial information.
- The skills do not require external services by default.
- Public examples are fictional and intentionally non-confidential.

## FAQ

### Is this a prompt library?

No. A Codex Skill is a reusable workflow instruction package. It teaches Codex when to use a workflow, how to execute it, and how to validate the result.

### Do the investment skills provide financial advice?

No. They are educational decision-support workflows. They do not recommend specific securities, predict returns, or replace professional advice.

### Does `knowledge-system-curator` add outside knowledge?

By default, no. `knowledge-system-curator` is designed to work only from the target document and the source materials you provide, unless you explicitly ask for external research.

### Can I use this with Feishu or Lark docs?

Yes. The skill is written to support live document updates, including Feishu/Lark docs, when the relevant tools and permissions are available.

### Can I add more skills to the same repository?

Yes. This repository follows a one-repository, many-skills structure. Each skill should live in its own folder.

## Repository Layout

```text
hai-skills/
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
      repository-settings.md
    scripts/
      pre-publish-review.sh
      check-sensitive-files.sh
      check-skill-structure.sh
      check-repo-package.sh
      verify-readme-links.sh
  investor-company-xray/
    SKILL.md
    README.md
    references/
    templates/
    examples/
    agents/
  investor-trade-check/
    SKILL.md
    README.md
    references/
    templates/
    examples/
    agents/
  investor-position-review/
    SKILL.md
    README.md
    references/
    templates/
    examples/
    agents/
  knowledge-system-curator/
    SKILL.md
    README.md
    agents/
      openai.yaml
    docs/
      promotion.md
    examples/
      investment-system-update/
        input.md
        workflow.md
        output.md
```

## Repository Rules

- The root directory is reserved for repository entry files and skill folders.
- Each skill owns its own `references/`, `templates/`, `examples/`, `docs/`, `assets/`, and `scripts/` if it needs them.
- Repository-level publishing, GitHub metadata, checks, and social preview files live under `.github/`.
- Before adding or publishing a new skill, run `.github/scripts/pre-publish-review.sh .` to catch misplaced root-level folders.

See [.github/docs/repository-layout.md](.github/docs/repository-layout.md) for the full layout rule.

## Suggested Repository Description

```text
Reusable Codex Skills for personal knowledge systems, investment decision workflows, and practical AI automation.
```

## Contributing

See [.github/CONTRIBUTING.md](.github/CONTRIBUTING.md).

## Release Notes

See [.github/CHANGELOG.md](.github/CHANGELOG.md).

## License

This repository is released under the [GPL-3.0 license](LICENSE).

## Notes

These skills are workflow instructions for Codex. They do not include private tokens, credentials, cookies, or source documents.
