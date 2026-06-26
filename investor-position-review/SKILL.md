---
name: investor-position-review
description: 投资持仓复盘器 / Investor Position Review. 用于长期投资者复盘已有持仓，判断原始投资逻辑在价格波动、新闻、财报、估值变化、情绪压力或组合漂移后是否仍然成立；区分噪音、波动、风险和逻辑破坏。Use when the user says "投资持仓复盘器", "持仓复盘", "复盘这个持仓", "投资逻辑还成立吗", or wants $investor-position-review, without giving stock picks or financial advice.
---

# 投资持仓复盘器 / Investor Position Review

## Purpose

Use this skill to review an existing investment position by checking whether the original thesis is still alive.

This is an educational review workflow, not financial advice. Do not tell the user what to buy, sell, or hold. Help the user map evidence, thesis changes, and decision options.

## When To Use

Use this skill when the user says:

- "Should I keep holding this?"
- "The stock fell/rallied. What should I do?"
- "Has my thesis broken?"
- "Review this holding."
- "Use $investor-position-review ..."

## Inputs To Collect

Ask for:

- Asset or company.
- Original thesis and purchase reason.
- Purchase date or rough time frame.
- Current position size.
- What changed: price, earnings, news, business data, valuation, management, industry, or personal situation.
- Original sell or review rule, if any.
- User's current concern or emotion.

## Workflow

1. Separate price movement from business evidence.
2. Load `references/position-review-framework.md`.
3. Compare original thesis, current evidence, valuation context, position size, and user emotion.
4. Use `templates/position-review-report.md`.
5. End with one of these review statuses:
   - `thesis intact`: current evidence does not break the original thesis.
   - `watch closely`: evidence is mixed and needs scheduled review.
   - `thesis weakened`: important assumptions are under pressure.
   - `thesis broken`: the original reason no longer holds based on supplied evidence.
   - `position risk issue`: thesis may be intact, but sizing, funding, or concentration is the main problem.

## Boundaries

- Do not issue direct hold/add/trim/exit recommendations.
- Do not treat price movement alone as proof that the thesis is right or wrong.
- Do not explain every market move.
- Do not use live data unless the user explicitly asks and current data access is available.

## Failure Handling

- If no original thesis exists, reconstruct a provisional thesis and mark it as weak.
- If the user only says "price is down", ask what changed in the business.
- If the thesis is broken but the user wants reassurance, present the evidence calmly and avoid emotional validation.
