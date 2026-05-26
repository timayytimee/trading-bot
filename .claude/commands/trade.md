---
description: Manual trade helper with strategy-rule validation. Usage — /trade SYMBOL SHARES buy|sell
---

Execute a manual trade with full rule validation. Refuse if any rule fails.

Args: SYMBOL SHARES SIDE (buy or sell). If missing, ask.

1. Pull state: account, positions, quote SYMBOL (capture ask price P).

2. For BUY, validate ALL of these — STOP and print failures if any fail:
   - Total positions after fill <= 4
   - Trades this week + 1 <= 5
   - SHARES * P <= 25% of equity
   - SHARES * P <= available cash
   - daytrade_count < 3 (PDT rule)
   - Catalyst documented (ask for thesis if not in today's RESEARCH-LOG)

3. For SELL, confirm position exists with correct qty. No other checks.

4. Print order JSON + validation results. Ask "execute? (y/n)" before placing.

5. On confirm:
   bash scripts/alpaca.sh order '{"symbol":"SYM","qty":"N","side":"buy|sell","type":"market","time_in_force":"day"}'

6. For BUYs, immediately place 10% trailing stop GTC:
   bash scripts/alpaca.sh order '{"symbol":"SYM","qty":"N","side":"sell","type":"trailing_stop","trail_percent":"10","time_in_force":"gtc"}'
   PDT fallback: fixed stop 10% below fill price.

7. Log to memory/TRADE-LOG.md with thesis, entry, stop, target, R:R.

8. bash scripts/telegram.sh with trade details.
