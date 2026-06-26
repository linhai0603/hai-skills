# hai-skills

Reusable Codex skills for personal AI workflows.

`hai-skills` is a public collection of Codex Skills. Each skill lives in its own folder, can be installed independently, and is designed to turn repeatable work into a reusable AI workflow.

The first skill in this collection is `knowledge-system-curator`: a workflow for turning scattered notes, excerpts, meeting notes, and documents into structured knowledge systems.

## Why Star This Repository

- Install practical Codex Skills without rebuilding the same prompts from scratch.
- Reuse workflows for knowledge work, document updates, and personal productivity.
- Learn how to package your own repeatable AI workflows as Codex Skills.
- Follow future skills as this collection expands beyond knowledge management.

## Skills

| Skill | What It Does | Best For |
| --- | --- | --- |
| [`knowledge-system-curator`](knowledge-system-curator/SKILL.md) | Merges new materials into an existing knowledge base, removes duplication, improves structure, and preserves important source wording. | Personal knowledge bases, book notes, research systems, Feishu/Lark docs, Markdown documents, long-form frameworks |

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
| It is unclear whether the outline should change. | Codex first diagnoses whether the framework should be preserved or reorganized. |

## Quick Install

Clone the repository:

```bash
git clone https://github.com/linhai0603/hai-skills.git
```

Copy the skill you want into your local Codex skills directory:

```bash
mkdir -p ~/.codex/skills
cp -R hai-skills/knowledge-system-curator ~/.codex/skills/
```

Restart Codex or open a new Codex session so the skill can be discovered.

## Quick Usage

Invoke the skill explicitly:

```text
用 $knowledge-system-curator 把这些新增内容整合进这个知识库文档。
目标文档：...
新增资料：...
要求：只基于我提供的资料，不新增外部内容；如果需要调整目录，先给我计划，确认后再执行。
```

English example:

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

- [Input notes](examples/investment-system-update/input.md)
- [Curator workflow](examples/investment-system-update/workflow.md)
- [Integrated output](examples/investment-system-update/output.md)

The demo shows how scattered investment notes can be classified, deduplicated, and integrated into a cleaner knowledge system. It is intentionally small and source-only so the workflow is easy to inspect.

## Use Cases

- Update a personal knowledge base after reading new books or articles.
- Merge messy excerpts into a structured research framework.
- Maintain an investment, product, sales, writing, or operating system document.
- Reorganize a long Feishu/Lark document without losing source meaning.
- Ask Codex to decide whether new material changes the existing outline before editing.

## FAQ

### Is this a prompt library?

No. A Codex Skill is a reusable workflow instruction package. It teaches Codex when to use a workflow, how to execute it, and how to validate the result.

### Does it add outside knowledge?

By default, no. `knowledge-system-curator` is designed to work only from the target document and the source materials you provide, unless you explicitly ask for external research.

### Can I use this with Feishu or Lark docs?

Yes. The skill is written to support live document updates, including Feishu/Lark docs, when the relevant tools and permissions are available.

### Can I add more skills to the same repository?

Yes. This repository follows a one-repository, many-skills structure. Each skill should live in its own folder.

### Why is the repository description broad?

Because `hai-skills` is meant to become a collection of personal AI workflow skills, not only a knowledge-management project. Individual skills should describe their own specific use cases.

## Repository Layout

```text
hai-skills/
  README.md
  LICENSE
  assets/
    social-preview.svg
    social-preview.png
  docs/
    promotion.md
    repository-settings.md
  examples/
    investment-system-update/
      input.md
      workflow.md
      output.md
  knowledge-system-curator/
    SKILL.md
    agents/
      openai.yaml
```

## Suggested Repository Description

```text
Reusable Codex skills for personal AI workflows.
```

## License

This repository is released under the [GPL-3.0 license](LICENSE).

## Notes

These skills are workflow instructions for Codex. They do not include private tokens, credentials, cookies, or source documents.
