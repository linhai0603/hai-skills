---
name: investor-trade-check
description: 投资交易检查器 / Investor Trade Check. 用于长期投资者在买入、卖出、加仓、减仓或等待前，检查交易理由、FOMO、恐慌、嫉妒、过度自信、能力圈、估值、安全边际、仓位、资金来源、退出条件和证据缺口。Use when the user says "投资交易检查器", "交易前检查", "买入前检查", "卖出前检查", or wants $investor-trade-check, without giving stock picks or financial advice.
---

# 投资交易检查器 / Investor Trade Check

## Purpose

Use this skill as a pre-trade decision check for long-term investors. It turns a trading urge into a written, testable decision record.

This is decision support, not financial advice. Do not tell the user what to buy, sell, or hold. Help them check whether their intended action follows their own evidence and rules.

## When To Use

Use this skill when the user says:

- "I want to buy this stock."
- "Should I sell now?"
- "I want to add after a drop."
- "I am tempted to chase this."
- "Use $investor-trade-check ..."

## Inputs To Collect

Ask for the minimum missing details:

- Intended action: buy, sell, add, trim, wait, or compare.
- Asset or company.
- User's thesis and evidence.
- Current valuation or price context, if known.
- Current position size and target position size.
- Funding source and whether the money is needed within 3-5 years.
- Time horizon.
- Current emotion: FOMO, panic, envy, boredom, confidence, fear, or calm.
- Exit condition or invalidation rule.

## Workflow

1. Parse the intended action and the user's stated reason.
2. Load `references/pre-trade-check-framework.md`.
3. Check the action against thesis, ability boundary, valuation, margin of safety, funding source, position size, emotion, and exit conditions.
4. Use `templates/trade-check-report.md`.
5. End with one of these decision statuses:
   - `ready to proceed`: evidence, rules, and risk limits are explicit.
   - `wait`: emotion, valuation, or missing evidence argues for delay.
   - `rework thesis`: the reason is unclear or inconsistent.
   - `outside circle`: the user cannot explain the asset well enough.
   - `risk limit breach`: position, leverage, funding, or time horizon creates unacceptable fragility.

## Boundaries

- Do not recommend securities or forecast returns.
- Do not use urgency language such as "must buy now."
- Do not optimize for short-term trading signals.
- Do not request brokerage credentials or private account access.
- If the user asks for a direct financial recommendation, redirect to a structured decision check.

## Failure Handling

- If the user gives only a ticker, ask for their thesis and current reason for action.
- If the user is using borrowed money or near-term required cash, flag funding risk.
- If the user's thesis is only price movement, social proof, or fear of missing out, classify as `rework thesis` or `wait`.
