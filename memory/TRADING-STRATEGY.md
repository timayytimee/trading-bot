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

## Current Sector Status (updated 2026-10-02)
Proven over 5+ weeks of daily market analysis:

**ACTIVE — Primary:**
- Financials (XLF/JPM): Q4 seasonal tailwind (+5% avg Oct–Dec, 70% win rate); JPM earnings Oct 13;
  oversold −7%+ from Sep high; yield plateau/easing = NIM expansion thesis.
  Yield gate: 10Y showing plateau or downtrend from 5.2% (relaxed from 4.82% — see below).

**ACTIVE — Secondary:**
- Defense (RTX/LMT): Iran war ongoing; Hormuz commercial traffic recovering but US-Iran conflict
  unresolved; US military escort ops active; $289B RTX backlog; earnings Oct 21.
  Rate-independent thesis: defense spending driven by geopolitics, not rate direction.

**DEACTIVATED — Do Not Trade:**
- Energy (XOM/CVX/MPC): Permanently off. WTI below $97 since Sep 24; Hormuz tanker volumes
  near pre-war levels (Oct 1); Saudi East-West pipeline restarted. Re-activation requires
  Brent sustainably above $100 for 3+ sessions AND new structural supply event AND 10Y easing.

## Yield Gate Adjustment (updated 2026-10-02)
5 weeks of evidence: 10Y has not traded below 4.82% since account inception. The original
4.82% gate blocks all entries in the current rate regime (10Y 5.0–5.34%). Effective immediately:

- **JPM/Financials entry gate**: 10Y yield ≤ 5.10% (relaxed from 4.82%)
  AND S&P flat-to-positive AND JPM 30-min consolidation above prior close
- **RTX/Defense entry gate**: 10Y yield ≤ 5.20% (less rate-sensitive sector)
  AND S&P flat-to-positive AND RTX 30-min consolidation above prior close
- Original 4.82% gate: archived; may return if rate regime shifts

## Entry Checklist Addendum (added 2026-10-02)
- Verify bid-ask spread at open: skip any name with spread > 0.5% or condition "R" wide spread
- Wide condition-R spreads (XOM 6–11%, RTX 2–7% intraday) have blocked every otherwise-qualifying entry

## Alpaca Notes
- trail_percent and qty are STRINGS in JSON ("10", not 10)
- Quote endpoint: data.alpaca.markets (not api.alpaca.markets)
- quote.ap = ask, quote.bp = bid; wide spread or zero = skip
- Trailing stops only work during market hours
- PDT fallback ladder: trailing_stop → fixed stop → queue for tomorrow AM
