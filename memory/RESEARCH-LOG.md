# Research Log

Daily pre-market research entries will be appended here.

Format each entry:

## YYYY-MM-DD — Pre-market Research

### Account
- Equity: $X
- Cash: $X
- Buying power: $X
- Daytrade count: N

### Market Context
- WTI / Brent:
- S&P 500 futures:
- VIX:
- Today's catalysts:
- Earnings before open:
- Economic calendar:
- Sector momentum:

### Trade Ideas
1. TICKER — catalyst, entry $X, stop $X, target $X, R:R X:1
2. ...

### Risk Factors
- ...

### Decision
TRADE or HOLD (default HOLD if no clear edge)

---

## 2026-08-29 — Pre-market Research

### Account
- **⚠️ Alpaca API returning 401** — ALPACA_ENDPOINT env var is set to `https://api.alpaca.markets` (missing `/v2` suffix); script constructs wrong URL. Live account state unavailable.
- Equity: UNKNOWN (API error)
- Cash: UNKNOWN (API error)
- Buying power: UNKNOWN (API error)
- Daytrade count: UNKNOWN (API error)
- Note: No positions per TRADE-LOG (Day 0 baseline, bot launched today)

### Market Context
- **Note: 2026-08-29 is a Saturday — US markets closed. Entry covers Friday close + weekend context for Monday open.**
- WTI: $82.82/bbl (Fri Aug 28, -0.86%)
- Brent: $88.29/bbl (Fri Aug 28, -0.26%)
- S&P 500: Closed at 7,730.99 on Aug 28 (+0.7%); futures slightly negative Friday AM (S&P -0.12%, NDX -0.30%)
- S&P 500 YTD: +12.8%; August month: +3.0%; ATH intraday 7,814.88
- VIX: ~14.60 (low fear; 2026 lows territory)
- Today's catalysts: NVIDIA blowout Q2 earnings (EPS $2.22 vs $2.09 est; rev $96.22B, +4.82% beat); projected 70% revenue growth FY2028; NVDA +8.7%; XLK +3.2% on Aug 28
- Earnings before open: None (Saturday; prior week earnings season largely complete)
- Economic calendar: Core PCE released Wed Aug 26; no major data today; next week watch for jobs/ISM
- Sector momentum (leading): Consumer Staples (XLP), Industrials (XLI), Materials (XLB), Energy (XLE)
- Sector momentum (lagging): Technology (XLK), Communications (XLC), Consumer Discretionary (XLY), Financials (XLF)
- Sector momentum (improving): Real Estate (XLRE), Utilities (XLU)
- Macro: Fed Chair Warsh speaking at Jackson Hole; AI capex debate ongoing; Iran economic tensions

### Trade Ideas
1. **XLE / Energy name (e.g., XOM, CVX)** — Sector leading momentum; WTI stable ~$83; geopolitical risk premium (Iran tensions) supports energy. Entry: pullback to 20-day MA; stop: -8% from entry; target: +16%; R:R ~2:1. Catalyst: sector momentum + geopolitical bid.
2. **XLI / Industrials name (e.g., GE, CAT)** — Industrials leading sector rotation; infrastructure spending tailwinds. Entry: breakout above recent resistance; stop: -8%; target: +16%; R:R ~2:1. Catalyst: sector rotation into cyclicals.
3. **XLB / Materials name (e.g., FCX, NEM)** — Leading momentum alongside energy; copper/gold supported by dollar weakness. Entry: consolidation breakout; stop: -8%; target: +16%; R:R ~2:1. Catalyst: materials sector leadership + commodity bid.

### Risk Factors
- Alpaca API auth broken — **CRITICAL: must fix before any trades**
- Weekend gap risk; Fed chair speech could reset rates expectations Monday
- VIX at lows — complacency risk; any negative surprise could spike vol
- Tech lagging after NVDA euphoria — AI capex ROI skepticism
- Iran tensions could spike oil and pressure risk assets
- Market closed today; Monday open is first actionable session

### Decision
HOLD — Market closed (Saturday). Alpaca API broken (401). No positions to manage. Research captures leading sectors for Monday evaluation. Fix API auth before market open Monday.

---

## 2026-08-29 — Pre-market Research (Run 2, updated)

### Account
- **⚠️ CRITICAL: Alpaca API 401 "unauthorized"** — ALPACA_ENDPOINT now correctly set to `https://api.alpaca.markets/v2`; URL is fine. The credentials themselves (ALPACA_API_KEY / ALPACA_SECRET_KEY) are invalid or expired.
- Equity: UNKNOWN — cannot query until credentials fixed
- Cash: UNKNOWN
- Buying power: UNKNOWN
- Daytrade count: UNKNOWN
- No positions per TRADE-LOG (Day 0 baseline)

### Market Context
- **Saturday Aug 29 + Labor Day Mon Sep 1 = next trading day is TUESDAY Sep 2**
- WTI: $82.82/bbl (Fri close, -0.86%); Brent: $88.29/bbl (-0.26%)
- S&P 500 futures: ~7,745–7,753 (weekend; positive after NVDA blowout earnings)
- VIX: 14.57 (range 14.13–14.84 day); multi-year lows; low fear
- Earnings before open: NIO (Tue Sep 2 pre-mkt); Macy's + Dollar Tree (Wed Sep 3 pre-mkt)
- Key earnings week: MDT, PANW, DELL (Tue after close); AVGO, SNOW, HPE (Thu after close)
- Economic calendar:
  - Tue Sep 2: ISM Manufacturing PMI, JOLTS, construction spending
  - Wed Sep 3: ADP nonfarm, durable goods, Fed Beige Book
  - Thu Sep 4: ISM Services PMI
  - Fri Sep 5: NFP jobs report (8:30 AM ET) — high impact
- Sector momentum (leading/cycle): XLE #1 in August (+1.76%); XLV (+1.60%); XLP, XLI, XLB also leading quadrant YTD
- Sector momentum (lagging): XLK (-2.47% in August, worst sector); XLC, XLY still weak

### Trade Ideas (for Tue Sep 2 open)
1. **XOM or CVX (Energy)** — XLE #1 sector August + YTD; WTI ~$83 stable; Iran geopolitical premium; NFP Fri could boost energy if economy stays hot. Entry: pullback near 20-DMA; stop: -8%; target: +16%; R:R 2:1. Catalyst: sector momentum + macro bid.
2. **MDT (Medtronic)** — Reports Tue Sep 2 before open; healthcare/medtech defensive in risk-off; XLV strong in August. Only viable if earnings beat + guidance raise and stock gaps up with volume. Entry: pre-market gap breakout; stop: -7%; target: +14%; R:R 2:1. Catalyst: earnings + sector strength.
3. **PANW (Palo Alto Networks)** — Reports Tue after close; cybersecurity re-rating ongoing; if earnings strong, could gap Wed open. Entry: Wed open consolidation; stop: -8%; target: +16%; R:R 2:1. Catalyst: earnings beat + AI-security narrative.

### Risk Factors
- **Alpaca API credentials broken** — zero trades possible until fixed (BLOCKER)
- NFP Fri Sep 5 = major volatility event; caution entering positions Mon–Thu
- ISM Manufacturing Tue — below 50 = contraction signal; could hit industrials
- VIX at lows = crowded long; any surprise = sharp vol spike
- Labor Day thin liquidity could cause erratic moves Tue Sep 2 open
- XLK lagging; tech drag could pressure broader market if AVGO/SNOW disappoint Thu

### Decision
HOLD — Cannot trade (API credentials broken). Next actionable session: Tuesday Sep 2. Watchlist: XOM/CVX for energy entry; monitor MDT and PANW earnings Tue. Fix Alpaca credentials is prerequisite for any action.
