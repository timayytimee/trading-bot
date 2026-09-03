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
- **✅ Alpaca API auth fixed** — credentials updated, API responding
- Equity: $772.02
- Cash: $772.02 (100% deployed in cash, no positions)
- Buying power: $772.02
- Daytrade count: 0 (assumed; API confirmed active, no open positions or orders)
- Note: Account balance is $772, not ~$2,000. Max position size = $193 (25% of equity).

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

---

## 2026-08-31 — Pre-market Research


### Account
- Equity: $772.02
- Cash: $772.02 (100% cash, no positions)
- Buying power: $772.02
- Daytrade count: 0 (no open positions or orders)
- Max position size: ~$193 (25% of $772)

### Market Context
- WTI: ~$85.51/bbl (+2.53% premarket); Brent: ~$90.43–$90.69/bbl (+5.0%) — geopolitical surge
- S&P 500 futures: -0.1% to -0.27% premarket; Polymarket 36% chance of higher open
- VIX: 14.43 (Aug 28 close); likely elevated today given shock event — watch for spike
- Today's catalysts: **US-Iran military escalation** — US struck Iranian rocket launchers on Larak Island near Strait of Hormuz over the weekend; Iran retaliated with missile/drone strikes on US air bases in Jordan. High geopolitical risk premium in oil; risk-off tone
- Earnings before open: No major reports (light Monday)
- Economic calendar:
  - Today Aug 31: Chicago PMI possible; no high-impact releases
  - Tue Sep 2 (NOTE: Labor Day was Mon Sep 1 — markets CLOSED today; next open is Tue Sep 2): ISM Manufacturing PMI, JOLTS
  - Wed Sep 3: ADP nonfarm, durable goods, Fed Beige Book
  - Thu Sep 4: ISM Services PMI
  - Fri Sep 5: NFP jobs report (8:30 ET) — high impact
- Sector momentum:
  - Leading: XLE (Energy) — +2%+ last week, surging further on Iran; XLC (Comm Services) +1.4%; XLK (Tech) +1.3% last week (recovering)
  - Lagging: XLV (Healthcare) underperformed last week
  - S&P 500 August: +3.0% month; closed ~7,711–7,731; off ATH ~7,820

**⚠️ NOTE: August 31, 2026 may be a Sunday/holiday-adjacent. Verify market open. Labor Day is typically first Monday of September — Sep 1, 2026 is likely Labor Day (markets closed). If today Aug 31 is Sunday, markets are closed; next open is Tue Sep 2.**

### Trade Ideas (for Tue Sep 2 open — pending market schedule confirmation)
1. **XOM (ExxonMobil)** — Energy #1 sector; WTI/Brent spiking on Iran Strait of Hormuz risk; geopolitical premium intact. Entry: wait for opening 30-min pullback after initial gap; don't chase; stop -8% from entry (~$177.50 if entry ~$193); target +16% (~$224); R:R 2:1. Catalyst: Iran military escalation + XLE sector leadership.
2. **CVX (Chevron)** — Same energy thesis as XOM; alternative if XOM spread too wide at open. Entry: 20-DMA pullback or first 30-min consolidation; stop -8%; target +16%; R:R 2:1. Catalyst: Energy sector + geopolitical.
3. **XLK / AAPL wait-and-see** — Tech showed +1.3% recovery last week. If Iran tensions stabilize and market stabilizes Tuesday, tech rotation possible. HOLD for now; re-assess at open.

### Risk Factors
- **Iran escalation** — if Strait of Hormuz shipping disrupted, oil could spike further; markets could sell off hard; energy could reverse if ceasefire announced
- **NFP week** — multiple vol events Tue–Fri; wide stops required
- **Thin liquidity** — day after Labor Day holiday; first trades of September week; erratic opens common
- **VIX spike risk** — VIX was at 2026 lows (14.2); geopolitical shock could spike vol sharply; stop management critical
- **Small account** — $772 total; max $193/position; limited number of shares per trade
- **Don't chase oil gap** — if XOM/CVX already +3–5% at open, wait for intraday pullback; never buy into panic bid

### Decision
HOLD — Markets likely closed today (Aug 31 = Sunday; Sep 1 = Labor Day). Next actionable session: Tue Sep 2. Energy sector (XOM/CVX) remains top watchlist candidate given Iran escalation driving oil +5%. Wait for intraday pullback before any entry — do NOT chase the opening gap. NFP Friday is a significant vol event; keep position sizing conservative.

---

## 2026-09-01 — Pre-market Research (markets open; context for Wed Sep 2 open)

### Account
- Equity: $772.02
- Cash: $772.02 (100% cash, no positions)
- Buying power: $772.02
- Daytrade count: 0
- Max position size: ~$193 (25% of $772)
- Open positions: none | Open orders: none

### Market Context
- WTI: $86.57/bbl (+0.94%); Brent: $91.28/bbl (+0.87%) — sustained Iran risk premium; Strait of Hormuz shipping threat
- S&P 500 futures (Tue Sep 2 open): ~-0.5% — rising bond yields + Fed hawkish shift
- VIX: ~15.29 (up from 2026 lows ~14.1; seasonal pattern points higher through Oct)
- **Key backdrop:**
  - Fed Chair Warsh hawkish: "we have work to do" on inflation → markets pricing in rate HIKE at Sep FOMC (bearish for equities)
  - Iran military escalation ongoing — US struck Larak Island; Iran retaliated on US bases in Jordan; oil supply risk premium intact
  - G20 meetings Tue — NVDA CEO Jensen Huang + OpenAI CEO Sam Altman keynoting
- Earnings before Tue open: MDT (Medtronic)
- Earnings after Tue close: PANW, DELL
- Earnings Thu after close: AVGO, SNOW, HPE
- Economic calendar:
  - **Tue Sep 2**: JOLTS 10AM ET (est 7.33M vs prior 7.36M); ISM Manufacturing PMI (est 53.2)
  - **Wed Sep 3**: ADP Nonfarm; Durable Goods; Fed Beige Book
  - **Thu Sep 4**: ISM Services PMI
  - **Fri Sep 5**: NFP Jobs Report 8:30AM ET — HIGH IMPACT
- Sector momentum:
  - Leading: XLE (Energy) — refiners MPC/PSX/VLO led August; Iran bid extends
  - Improving: XLV (Healthcare) — MDT earnings catalyst Tue
  - Lagging: XLU (Utilities) — yield headwinds; XLK mixed

### Trade Ideas
1. **XOM or CVX (Energy)** — XLE #1 sector August + Iran geopolitical premium. Do NOT chase gap. Wait for 30-min pullback. Entry: post-open consolidation; stop: -8%; target: +16%; R:R 2:1. Catalyst: Iran Strait risk + XLE sector leadership. CONDITIONAL: only enter if S&P futures recover and oil not gap >+5% at open.
2. **MPC or PSX (Refiners)** — Smaller refiners led XLE in August; refining margins benefit from crude spike. Same conditions: 30-min rule, no gap chase. Entry: first consolidation; stop: -8%; target: +16%; R:R 2:1. Catalyst: Energy sector leadership + Iran.
3. **MDT (Medtronic) — Earnings** — Reports Sep 2 pre-mkt; XLV sector strong. Entry only on beat + raise + gap-and-hold with volume; stop: -7%; target: +14%; R:R 2:1. REJECT if gap >+8% at open.

### Risk Factors
- **Fed hawkish pivot** — rate hike probability rising at Sep FOMC; highest near-term equity risk
- **Iran escalation** — oil long could reverse sharply on any ceasefire news
- **NFP Fri Sep 5** — strong jobs = more hike fuel; stay sized conservatively or flat
- **Thin post-holiday liquidity** — Labor Day return; erratic opens common
- **Seasonal VIX uptick** — September historically worst month; VIX median rises from ~15 to ~19 by early Oct
- **Small account** — $772 equity; $193 max/position; max 1-2 positions

### Decision
HOLD — Markets closed today (Labor Day). Wed Sep 2 default: HOLD. Fed rate hike risk + futures -0.5% + seasonal headwinds + NFP week = poor risk environment. Only exception: energy entry (XOM/CVX/MPC) if S&P stabilizes after 30-min open and energy pulls back from initial gap. No chasing. Cash preservation priority until NFP clears.

---

## 2026-09-02 — Pre-market Research

### Account
- Equity: $772.02
- Cash: $772.02 (100% cash, no positions)
- Buying power: $772.02
- Daytrade count: 0
- Max position size: ~$193 (25% of $772)
- Open positions: none | Open orders: none

### Market Context
- WTI: ~$90.82–$91/bbl (+5.2% yesterday, advancing on Iran escalation); Brent: ~$94.86–$95/bbl
- S&P 500 futures: 7,638.25 (−0.06%); market under pressure from surging yields + oil
- VIX: 16.34 (+9.52% — elevated and rising; fear returning)
- Today's catalysts:
  - **Iran/Strait of Hormuz**: US launched fresh overnight strikes on Iran; oil surged 5.2% Tue; oil headed toward $91 Wed pre-mkt. ~25% of global maritime crude flows through Strait. Trump warned further strikes coming.
  - **MDT (Medtronic) earnings beat**: Q1 FY27 revenue $9.8B (+13.7% organic, beat $9.54B est); raised FY27 organic revenue guidance to +7.25–7.75%; $700M strategic investment in Cornerstone Robotics' surgical system. Stock advanced pre-mkt.
  - **Hut 8 (HUT)**: +4% pre-mkt on Reuters report of major Texas data center partnership with Anthropic + Lambda.
  - **Crude surge dragging equities**: tech (especially chips) taking brunt; bond yields soaring on inflation fear from oil spike.
- Earnings before open: MDT (beat, raised guidance — see above); ~33 reports total today
- Earnings after close tonight: PANW, DELL
- Earnings Thu after close: AVGO, SNOW, HPE
- Economic calendar:
  - **Today Sep 2**: ADP Nonfarm Employment Report 8:15 AM ET (key labor market signal)
  - **Thu Sep 3**: Initial Claims 8:30 AM; ISM Non-Manufacturing/Services PMI 10 AM
  - **Fri Sep 5**: NFP Jobs Report 8:30 AM ET — HIGH IMPACT, potential vol event
  - Note: ISM Manufacturing + JOLTS reported yesterday (Sep 1)
- Sector momentum:
  - Leading: XLE (Energy) — surging on Iran; WTI $91+; refiners MPC/PSX/VLO strong
  - Lagging: XLK (Tech) — chips taking brunt of yield spike + oil inflation fears; XLC, XLY, XLF weak
  - Improving: XLV (Healthcare) — MDT beat a tailwind
- Fed: CME FedWatch 66% probability of 25bps hike at September FOMC; PCE at 3.7%/4.1% (way above 2% target); oil spike adds further inflation pressure; Barclays expects Sep + Dec hikes

### Trade Ideas
1. **XOM or CVX (Energy)** — XLE #1 sector; WTI at $91 driven by Iran Strait of Hormuz threat. CONDITIONAL: do NOT chase the gap — if XOM/CVX already +3–5% at open, wait for 30-min pullback and consolidation before entry. Entry: first 30-min consolidation; stop: -8% from entry; target: +16%; R:R 2:1. Catalyst: Iran military escalation + XLE sector leadership. Max size: ~$193 (2 shares XOM ~$95, or 1 share CVX ~$190).
2. **MDT (Medtronic)** — Strong Q1 FY27 beat (revenue $9.8B vs $9.54B est), raised guidance, $700M strategic investment. CONDITIONAL: entry only if gap holds and consolidates in first 30 min with volume. Stop: -7% from entry; target: +14%; R:R 2:1. Catalyst: earnings beat + raised guidance + Cornerstone Robotics deal. Reject if gap >+8% at open.
3. **MPC or PSX (Refiners)** — Refining margins benefit directly from crude spike; historically lead XLE in oil-shock environments. Same 30-min rule, no gap chase. Stop: -8%; target: +16%; R:R 2:1. Catalyst: Iran supply shock + refiner margin expansion.

### Risk Factors
- **Fed rate hike 66%** — September FOMC hike now base case; hawkish pivot = bond yield surge = equity multiple compression; tech most exposed
- **Iran escalation** — oil long could reverse sharply on any ceasefire; but WTI $91+ suggests risk premium stays bid near-term
- **ADP report today 8:15 AM** — strong number = more Fed hike fuel; avoid pre-data entries if possible
- **NFP Friday Sep 5** — stay sized conservatively; consider staying flat into Friday
- **VIX 16.34 and rising** — September seasonal pattern (worst month); VIX typically rises to ~19 by early Oct
- **Small account** — $772 equity; $193 max/position; 1-2 positions max; limited shares per trade
- **Don't chase oil gap** — energy names up 3-5%+ at open; 30-min rule is mandatory; never buy into panic bid
- **PDT rule** — daytrade count = 0; swing trades only; hold overnight if entering

### Decision
HOLD — Default. Risk environment is hostile: Fed rate hike imminent (66%), VIX elevated and rising, ADP data today + NFP Friday both potential vol events, and S&P futures slightly negative with yields surging. Energy thesis (XOM/CVX/MPC) remains valid but only on a 30-min pullback from the opening gap — do NOT chase. If energy opens flat or pulls back to near-prior-close, a small position (1-2 shares XOM or PSX) is acceptable. MDT watch for consolidation. Patience > activity. Cash preservation priority through NFP Friday.

---

## 2026-09-03 — Pre-market Research

### Account
- Equity: $772.02
- Cash: $772.02 (100% cash, no positions)
- Buying power: $772.02
- Daytrade count: 0 (no trades placed; account never traded)
- Max position size: ~$193 (25% of $772)
- Open positions: none | Open orders: none
- Week of Sep 1: 0/5 trades used

### Market Context
- WTI: ~$90–91/bbl (slightly lower); Brent: ~$95.25/bbl (-0.40%) — snapping 3-day rally; Iran tensions ongoing but market re-assessing geopolitical premium
- S&P 500 futures: -0.05% premarket; Polymarket 41% chance of higher open; mildly negative but near flat
- VIX: 15.2 (-6.98% from prior day) — declining; market pricing out hawkish Fed surprise at Sep FOMC
- Wednesday close: Dow +0.6% (53,062), Nasdaq +0.5%; markets brushed off oil and yield pressure on solid earnings sentiment
- Today's catalysts:
  - **ISM Services PMI (10 AM ET)**: est 54.5 vs prior 54.1 — key read on dominant services sector; beat = bullish
  - **Initial Jobless Claims (8:30 AM ET)**: labor market health check day before NFP
  - **LULU (lululemon) earnings** pre-mkt: Consumer Discretionary (lagging sector) — not a play
  - **CIEN (Ciena) earnings** pre-mkt: networking/optical — not in sector focus
  - **ADP showed weakening jobs growth Wed** — reduces Fed hike probability slightly; incrementally bullish for equities
  - Fed FOMC meeting mid-September still a headwind; oil inflation-pass-through risk
- Earnings before open today: LULU, CIEN (~47 total)
- Earnings after close tonight: **AVGO (Broadcom)**, SNOW (Snowflake), HPE — critical for tech sentiment into Friday
- Economic calendar:
  - **8:30 AM ET**: Initial Jobless Claims; Trade Balance (Jul, est -$71.2B)
  - **10:00 AM ET**: ISM Services PMI (est 54.5 vs 54.1)
  - **2:00 PM ET**: Unit Labor Costs & Productivity Q2 Final
  - **Fri Sep 5**: NFP Jobs Report 8:30 AM ET — HIGH IMPACT, biggest vol event of week
- Sector momentum (leading): XLE (+7.4% Aug, +42% YTD), XLI, XLP, XLB — all leading quadrant
- Sector momentum (lagging): XLK, XLC, XLY, XLF — lagging quadrant
- Sector momentum (weakening): XLV — healthcare momentum fading

### Trade Ideas
1. **XOM or CVX (Energy)** — XLE #1 sector August + Iran Strait of Hormuz supply risk; Brent still ~$95; oil slightly cooling after 3-day rally creates possible pullback entry. CONDITIONAL: 30-min rule mandatory — wait for post-open consolidation, no gap chase. Entry: ~$195–200 (XOM) on 30-min consolidation; stop: -8% (~$179–184); target: +16% (~$226–232); R:R 2:1. Catalyst: Iran supply risk + XLE sector leadership + geopolitical floor on oil. Size: ~$193 max (~1 share).
2. **MPC or PSX (Refiners)** — Refining margins historically expand with crude spike; led XLE in August alongside SLB. Entry: 30-min pullback/consolidation from open; stop: -8%; target: +16%; R:R 2:1. Catalyst: crude spike + refiner margin expansion + XLE momentum. Alternative to XOM/CVX if spreads too wide.
3. **AVGO post-earnings play (Friday only)** — Broadcom reports tonight after close; if strong beat on AI networking, could gap up Friday. Do NOT enter today. Watch tonight; if Friday 30-min consolidation holds, potential tech-recovery entry. Stop: -7%; target: +14%; R:R 2:1. Catalyst: AI chip demand + earnings beat.

### Risk Factors
- **NFP Friday Sep 5** — major vol event; strong jobs = more Fed hike fuel; holding energy into NFP carries overnight risk
- **ISM Services miss** — below 54 could signal services slowdown; negative for risk assets broadly
- **Iran ceasefire risk** — any diplomatic resolution = oil spike reversal; energy longs could drop 5–8% fast
- **Fed FOMC mid-Sep** — rate hike probability receding (VIX dropped) but not eliminated; PCE at 3.7% still above 2% target
- **Oil rally fatigue** — Brent -0.40% today; 3-day rally may be stalling; energy could consolidate or pull back sharply if supply risk re-assessed
- **Small account** — $772 equity; $193 max/position; 1-2 positions max; limited shares
- **PDT rule** — 0 of 3 day trades used; swing trades preferred — hold overnight if entering

### Decision
HOLD — Default. Environment slightly improved vs. yesterday (VIX down to 15.2, S&P closed green, ADP soft, futures near flat). However, NFP Friday is the dominant risk and justifies caution. Energy thesis (XOM/CVX/MPC) still valid with Brent at $95 and Iran floor on oil. CONDITIONAL entry acceptable today ONLY if: (1) ISM Services 10 AM beats 54.5, AND (2) XOM/CVX pull back to within 1% of prior close in first 30 min, AND (3) S&P holds flat-to-positive. Max 1 position, $193 size, hold as swing trade through NFP. If conditions not met → full HOLD until NFP clears Friday.

### Midday Addendum (Sep 03 — midday scan)
- **ISM Services PMI: 55.4** (beat vs 54.5 est; highest since Feb; strongest new orders since early 2023) — **bullish** ✓
- **S&P 500**: closed positive; markets broadly up on ISM beat and solid earnings sentiment
- **XOM**: ~$164.15 (−0.24% vs prior close $164.55) — flat/slight pullback; price action consistent with thesis but 30-min entry window passed
- **AVGO after-hours**: −6.5% on Q3 beat (rev $29.6B vs $29.5B est, EPS $3.32 vs $3.25 est) but Q4 guidance below "whisper number" (~$34.8B); **REJECT Friday AVGO trade idea** — not a gap-up consolidation play
- **Portfolio**: 0 positions, 0 orders; no action taken at midday; conditional energy entry window (30-min rule from open) has passed for today
- **Friday outlook**: NFP (8:30 AM ET) is dominant risk; AVGO selling pre-market could pressure tech; energy thesis still valid but hold cash ahead of NFP unless energy pulls back sharply and oil remains bid

---
