# hai-skills

用于沉淀和分发个人 Codex Skills 的公开仓库，重点服务于知识整理、文档更新和可复用 AI 工作流。

这个仓库采用「一个仓库，多个 Skill」的方式管理。每个 Skill 独立放在一个文件夹里，可以单独安装和维护。

## 技能

### 知识体系策展人

`knowledge-system-curator` 是一个知识体系整理与更新 Skill。

它适用于：

- 把新增笔记、书摘、文章、会议纪要或研究资料整合进已有知识库。
- 对重复材料去重，同时保留重要判断、条件、例子和原文表达。
- 判断新增内容是否会影响原有一级目录、二级目录或整体结构。
- 把零散内容整理成更清晰的知识体系文档。
- 更新飞书/Lark 文档、Markdown、Word 或其他文档，同时遵守来源边界。

它的核心原则是：先诊断，后整理；先判断结构关系，再修改文档；不是简单追加，也不是过度摘要。

## 安装

克隆仓库：

```bash
git clone https://github.com/linhai0603/hai-skills.git
```

把需要的 Skill 复制到本地 Codex Skills 目录：

```bash
mkdir -p ~/.codex/skills
cp -R hai-skills/knowledge-system-curator ~/.codex/skills/
```

然后重启 Codex，或开启一个新的 Codex 会话，让 Skill 被自动发现。

## 调用方式

显式调用：

```text
用 $knowledge-system-curator 把这些新增内容整合进这个知识库文档。
目标文档：...
新增资料：...
要求：只基于我提供的资料，不新增外部内容；如果需要调整目录，先给我计划，确认后再执行。
```

投资体系更新示例：

```text
用 $knowledge-system-curator 更新我的投资体系。
目标文档：投资体系最终版链接
新增资料：新增摘录链接或正文
要求：
1. 先判断新增内容是否会影响原有一级/二级结构
2. 去重，不重复整理
3. 保留重要原文表达
4. 只基于我提供的资料
5. 先给计划，我确认后再修改文档
```

## 仓库结构

```text
./
  README.md
  LICENSE
  knowledge-system-curator/
    SKILL.md
    agents/
      openai.yaml
```

## 说明

这些 Skill 是给 Codex 使用的工作流说明，不包含私密令牌、凭据、Cookie 或源文档。
