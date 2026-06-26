# Example Request

```text
Use $investor-position-review to review my ExampleCo holding.
I bought it because I believed it had strong pricing power and recurring revenue. The stock is down 25% after earnings. Revenue still grew, but margins fell and management lowered guidance. It is now 12% of my portfolio.
```

# Example Output Excerpt

```text
Review status: watch closely

Classification:
- Price decline: not enough by itself to break the thesis.
- Margin decline: relevant risk because pricing power was part of the original thesis.
- Lower guidance: needs follow-up to determine whether this is temporary or structural.

What would change the view:
1. Evidence that customers reject price increases.
2. Continued margin pressure without a clear investment explanation.
3. Management changing the strategy in a way that weakens recurring revenue.

Next review plan:
Collect margin bridge, retention data, and management commentary before making a trade.
Run $investor-trade-check before adding or trimming.
```
