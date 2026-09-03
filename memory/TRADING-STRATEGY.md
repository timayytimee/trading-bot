# Trading Strategy

## Mission
Beat the S&P 500. Stocks only — no options, ever.

## Capital & Constraints
- Starting capital: $772.02 (funded once on 2026-08-29). NOT $2,000 — early docs
  had a $2,000 typo. No money was ever lost; the account has never traded.
  Any "phase-start $2,000" / "missing ~$1,228" / "investigate prior losses" note
  in older TRADE-LOG entries is VOID — do not act on it.
- Phase-start baseline for all P&L math: $772.02
- Platform: Alpaca (LIVE)
- Instruments: Stocks ONLY
- PDT limit: 3 day trades per 5 rolling days (account < $25k) — swing trades preferred
- Small account: at ~$772, 25% is ~$193/position, so realistically 2-3 positions.
  Use fractional/notional market buys. NOTE: Alpaca rejects trailing_stop and
  stop orders on fractional share quantities — if a position is fractional, use
  the fixed-stop fallback (whole-number stop_price) or round the buy to whole shares.

## Core Rules
1. NO OPTIONS — ever
2. 75-85% deployed at all times
3. Max 4 positions, max 25% each (~$193/position at current equity; size off live equity)
4. 10% trailing stop on every position as a real GTC order
5. Cut losers at -7% manually (no hoping, no averaging down)
6. Tighten trail: 7% at +15%, 5% at +20%
7. Never tighten within 3% of current price; never move a stop down
8. Max 5 new trades per week
9. Every trade needs a specific catalyst documented BEFORE execution
10. Follow sector momentum
11. Exit sector after 2 consecutive failed trades in that sector
12. Patience > activity

## Buy-Side Gate (all must pass before any order)
- Total positions after fill <= 4
- Trades this week + 1 <= 5
- Position cost <= 25% of equity
- Position cost <= available cash
- daytrade_count < 3 (check before every buy — PDT rule)
- Specific catalyst documented in today's RESEARCH-LOG
- Instrument is a stock (not an option or ETF leveraged product)

## Sell-Side Rules
- Unrealized loss <= -7%: close immediately
- Thesis broken (catalyst invalid, sector rolling over): close even if not at -7%
- Up +20% or more: tighten trailing stop to 5%
- Up +15% or more: tighten trailing stop to 7%
- Sector has 2 consecutive failed trades: exit all positions in that sector

## Entry Checklist (document all before placing)
- What is the specific catalyst today?
- Is the sector in momentum?
- Stop level (7-10% below entry)?
- Target (minimum 2:1 risk/reward)?

## Order Templates
```
# Market buy
{"symbol":"XOM","qty":"10","side":"buy","type":"market","time_in_force":"day"}

# 10% trailing stop GTC (default for every new position)
{"symbol":"XOM","qty":"10","side":"sell","type":"trailing_stop","trail_percent":"10","time_in_force":"gtc"}

# Fixed stop fallback (if PDT blocks trailing stop)
{"symbol":"XOM","qty":"10","side":"sell","type":"stop","stop_price":"140.00","time_in_force":"gtc"}
```

## Alpaca Notes
- trail_percent and qty are STRINGS in JSON ("10", not 10)
- Quote endpoint: data.alpaca.markets (not api.alpaca.markets)
- quote.ap = ask, quote.bp = bid; wide spread or zero = skip
- Trailing stops only work during market hours
- PDT fallback ladder: trailing_stop → fixed stop → queue for tomorrow AM
