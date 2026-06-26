---
name: knowledge-system-curator
description: Maintain and update structured knowledge bases or long-form system documents. Use when the user wants to merge new notes, excerpts, articles, meeting notes, research, or documents into an existing knowledge base; reorganize a knowledge system; deduplicate overlapping materials; decide whether new information changes the existing outline; create a cleaner directory or taxonomy; or update Feishu/Lark docs, Markdown, Word, or other documents while preserving source boundaries.
---

# Knowledge System Curator

## Purpose

Use this skill to turn scattered source materials into a coherent, maintainable knowledge system. Treat the task as knowledge curation, not simple summarization or appending.

The default goal is to update an existing document or knowledge base so it becomes more complete, better structured, deduplicated, and easier to keep updating later.

Use this skill especially when the user is maintaining a living system document: investment frameworks, research maps, product playbooks, reading notes, operating manuals, meeting-derived knowledge bases, or Feishu/Lark wiki pages.

## Operating Rules

- Work only from the user's supplied source materials and target document unless the user explicitly asks for external research.
- Do not add outside facts, examples, frameworks, or terminology.
- Preserve strong original wording when it carries judgment, principles, formulas, decision rules, or reusable operating methods.
- Deduplicate without flattening meaning. If two passages overlap but each contains distinct conditions, examples, or claims, merge them with the distinct parts retained.
- Do not over-compress source materials just to make the document shorter.
- Distinguish content roles: principle, concept, method, checklist, example, evidence, quote, warning, question, and unresolved conflict.
- If new material changes the structure, propose the structure change before editing.
- For complex or live-document updates, first produce a short diagnosis and execution plan, then wait for user confirmation before modifying the document.
- When the user has already approved execution, proceed without asking again unless a material ambiguity or risk appears.
- Respect user formatting preferences, especially whether to use bullets, headings, redline/highlight new content, preserve original phrasing, or update in place.

## Inputs To Collect

Identify or ask for these only when missing and necessary:

- Target: the existing knowledge base, document, folder, wiki page, Markdown file, Word file, or other artifact to update.
- New sources: links, pasted notes, excerpts, files, meeting notes, research material, or raw ideas to integrate.
- Scope rule: whether to update the existing document, create a new version, or produce only a plan.
- Source boundary: whether external research is allowed. Default is no.
- Change visibility: whether newly added material should be marked, and how. Default is no marking unless requested.
- Structure freedom: whether the outline may be changed. Default is yes for planning, but get confirmation before live edits.

## Standard Workflow

### 1. Read The Existing System

Map the current document before changing it:

- Capture the title, purpose, audience, and current outline.
- Identify first-level and second-level categories.
- Note dense sections, weak categories, duplicated sections, missing transitions, and formatting patterns.
- Record any explicit constraints in the document, such as "do not add external material" or source labels.

### 2. Decompose New Sources

Break new material into knowledge units. A unit should be small enough to classify, but large enough to preserve meaning.

For each unit, identify:

- Core claim or idea.
- Content role.
- Source location or source document.
- Whether the wording should be preserved.
- Possible destination in the existing structure.

### 3. Classify Relationship To Existing System

Assign each unit one of these statuses:

- `补充已有内容`: enriches an existing section.
- `重复但有差异`: overlaps with existing content but contains distinct wording, nuance, condition, or example.
- `完全重复`: already covered and can be skipped.
- `结构触发`: suggests a new heading, moved section, renamed category, or changed hierarchy.
- `冲突或张力`: contradicts, qualifies, or complicates existing content.
- `案例或证据`: should support a principle rather than become a top-level category.
- `暂不纳入`: outside scope, too weak, or unsupported by supplied materials.

### 4. Produce A Diagnosis Before Editing

For non-trivial updates, respond with:

- Coverage judgment: whether the existing system and new sources can be fully integrated.
- Structure judgment: whether the current outline should be preserved, lightly adjusted, or reorganized.
- Deduplication approach: how repeated content will be handled.
- Source-boundary statement: whether any external material will be used.
- Execution plan: concrete editing steps and expected target document.

Do not modify live documents until the user confirms the plan.

### 5. Integrate Content

When approved:

- Place each unit where it best supports the knowledge system, not necessarily where it appeared in the source.
- Merge repeated ideas into one stronger section.
- Keep high-signal source wording as bullets or short paragraphs when useful.
- Use headings for conceptual structure and bullets for principles, methods, examples, and checklists.
- Add blank space where it improves readability in long documents.
- If marking new content, use the user's requested style and avoid extra explanatory labels unless asked.
- If updating Feishu/Lark docs, use the relevant Lark document or wiki tools and preserve title, images, and existing placement unless the user requests otherwise.

### Integration Quality Bar

The final document should be:

- `完整`: every important source unit is included or intentionally excluded.
- `不重复`: overlapping points are merged rather than copied into multiple places.
- `有结构`: first-level and second-level categories explain the system, not just the source order.
- `保留原意`: compression does not remove strong source wording, conditions, examples, or judgment.
- `可继续更新`: future sources can be added without rebuilding the whole document.

### 6. Validate After Editing

Before reporting completion, check:

- All target sources were reviewed.
- Important source units were integrated or intentionally excluded.
- No external material slipped in when source-only mode was required.
- Repeated content was merged without losing important differences.
- The final outline is coherent at level 1 and level 2.
- Formatting is readable: headings, bullets, spacing, and long paragraphs are appropriate.
- Live-document updates landed in the correct target and did not create an unintended duplicate.

## Output Formats

### Diagnosis And Plan

Use this shape when asking for approval:

```text
我把这个任务定位为：把新增资料策展进既有知识体系，而不是简单追加。

判断：
- 覆盖关系：
- 结构关系：
- 去重方式：
- 来源边界：

执行计划：
1. ...
2. ...
3. ...
```

### Completion Report

After execution, keep the report short:

```text
已完成。

主要变化：
- ...
- ...

校验：
- ...
- ...
```

## Common User Prompts

The skill should trigger for prompts like:

- "把这些新增内容补充进我的投资体系。"
- "基于这个旧文档和这些新摘录，整理成一个最终版。"
- "扫描我的知识库，做一个知识体系目录。"
- "更新这个文档，但不要新增外部资料。"
- "这些内容有重复，帮我去重并重新分类。"
- "我不确定新内容会不会改变原框架，先帮我判断。"
- "用 $knowledge-system-curator 更新这个知识库。"
