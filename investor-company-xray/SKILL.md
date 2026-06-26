---
name: investor-company-xray
description: 投资公司透视镜 / Investor Company X-Ray. 用于长期投资者判断一家公司是否值得深入研究、加入观察清单或进入买入前研究；检查商业模式、治理、管理层、护城河、定价权、现金流、负债、估值风险、行业背景和证据缺口。Use when the user says "投资公司透视镜", "公司透视", "公司质地分析", "帮我判断这家公司", or wants $investor-company-xray, without giving stock picks or financial advice.
---

# 投资公司透视镜 / Investor Company X-Ray

## Purpose

Use this skill to help long-term investors examine whether a company deserves serious attention as a business, before discussing whether its stock is cheap.

This is an investment decision-support workflow, not financial advice. Do not recommend buying, selling, or holding a security. Do not predict prices or returns.

## When To Use

Use this skill when the user asks:

- "Is this a good company?"
- "Help me judge whether this business is high quality."
- "Does this company have a moat?"
- "Review this company before I invest."
- "Use $investor-company-xray ..."

## Inputs To Collect

Ask only for missing information that materially changes the review:

- Company name and ticker, if any.
- Business description and main products.
- User's current thesis or reason for interest.
- Financial notes: revenue, profit, ROE, cash flow, debt, margins, dividends, or user-provided data.
- Governance and management notes.
- Industry and competitive context.
- Valuation notes, if the user has them.

If data is missing, continue with a clearly marked evidence-gap section instead of inventing facts.

## Workflow

1. Read the company notes and separate facts, claims, assumptions, and unknowns.
2. Load `references/company-quality-framework.md`.
3. Evaluate the company across business quality, values, governance, management, moat, pricing power, financial health, industry context, and valuation caveats.
4. Use `templates/company-xray-report.md` for the final structure.
5. End with one of these statuses:
   - `research candidate`: enough quality signals to keep researching.
   - `watchlist only`: interesting but evidence is incomplete.
   - `quality concern`: major concerns need resolution.
   - `out of circle`: the business is not understandable enough from supplied evidence.

## Boundaries

- Do not say "buy", "sell", "hold", "undervalued", or "guaranteed compounder" as a recommendation.
- Do not use live market data unless the user explicitly asks and current data access is available.
- Do not treat high ROE, low PE, or strong price performance as proof of quality.
- Do not copy private source notes into public output. Summarize and generalize.

## Failure Handling

- If the user provides only a ticker or company name, ask for their thesis or permission to research current public sources.
- If evidence conflicts, show both sides and mark what would resolve the conflict.
- If the business cannot be understood, say so and explain what information is missing.
