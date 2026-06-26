# Pre-Trade Check Framework

Use this framework for `investor-trade-check`.

## Core Question

Before acting, ask: is this trade driven by evidence and rules, or by emotion and price movement?

## Checks

### 1. Action Clarity

- What exactly does the user want to do?
- Is this a new buy, add, trim, full exit, or wait decision?
- What would make the decision wrong?

### 2. Thesis Clarity

- What is the investment thesis?
- Is the thesis about business value, valuation, portfolio discipline, or market emotion?
- Can the user explain why this asset belongs in their portfolio?

### 3. Circle Of Competence

- Does the user understand the business, asset, or fund?
- What does the user know versus assume?
- What important variable is outside the user's understanding?

### 4. Valuation And Margin Of Safety

- Is the user considering price relative to value?
- Is there a margin of safety, or only a good story?
- Is the asset in a high-expectation, high-risk zone?

Avoid declaring an asset cheap unless the user provides enough evidence.

### 5. Position And Funding Risk

- What percentage of the portfolio will this represent?
- Is the position size consistent with confidence and downside tolerance?
- Is the money needed within 3-5 years?
- Is leverage or borrowed money involved?

Near-term required cash and leverage are severe risk flags.

### 6. Emotional Trigger

Look for:

- FOMO after a fast rise.
- Panic after a fall.
- Envy after comparing returns.
- Overconfidence after recent wins.
- Refusal to admit a mistake.
- Boredom-driven trading.

### 7. Exit And Review Rule

- What would invalidate the thesis?
- Under what condition would the user trim or exit?
- What evidence should be reviewed later?

## Decision Status

- `ready to proceed`: action is rule-based, funded safely, sized rationally, and has an invalidation rule.
- `wait`: the decision may be valid later, but present emotion, valuation, or missing evidence argues for delay.
- `rework thesis`: the action lacks a clear thesis or contradicts the stated thesis.
- `outside circle`: the asset is not understandable enough from supplied information.
- `risk limit breach`: the action creates fragility through leverage, near-term cash need, concentration, or unclear downside.
