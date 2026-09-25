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

## 2026-09-04 — Pre-market Research (NFP Friday)

### Account
- Equity: $772.02
- Cash: $772.02 (100% cash, no positions)
- Buying power: $772.02
- Daytrade count: 0 (account never traded)
- Max position size: ~$193 (25% of $772)
- Open positions: none | Open orders: none
- Week of Sep 1: 0/5 trades used

### Market Context
- WTI: ~$90–91/bbl (Iran risk premium sustained); Brent: ~$95.23/bbl (−0.31% from Sep 3 close ~$95.82)
- S&P 500 futures: +0.06% at ~7,759.75 pre-market; Thursday closed S&P +1.1%, Nasdaq +1.4%, Dow +1.2% — very strong session
- VIX: Closed Sep 3 at 14.32 (−5.79%); pre-market Sep 4 ~15.25 — fear receding from recent highs
- Today's catalysts:
  - **NFP Jobs Report 8:30 AM ET** — August jobs; forecast: +55K (very weak; prior July: −23K vs +79K est). Dominant event. Market already pricing in weakness — dovish Fed narrative building
  - **Fed Governor Waller (Sep 3)**: Stated he would support holding rates steady at Sep FOMC barring inflation surprises → hike odds fell from ~66% to ~50%; dollar hit lowest since May; 10Y yield retreated to 4.77% from 4.818% high
  - **Iran tensions**: Ongoing; US-Iran military exchanges continue; Strait of Hormuz risk premium supporting oil floor
  - **AVGO (Broadcom)**: Q3 rev $29.59B (beat), EPS $2.68; mixed AH reaction — guidance below whisper → −6.5% AH Wednesday; tech sentiment mixed for Friday open
- Earnings before open today: No major reports (light end-of-week)
- Economic calendar:
  - **8:30 AM ET**: NFP August Employment Situation (est +55K) — only major event today
  - Next week: PPI Sep 10, CPI Sep 11, JOLTS Sep 29; FOMC mid-September
- Sector momentum (Sep 2026):
  - Leading: XLE (Energy) — Brent ~$95, Iran premium, +42% YTD sector leader
  - Improving: Healthcare (XLV), Real Estate (XLRE) — defensive rotation
  - Lagging/overvalued: XLK (Tech), XLC, XLY — rotation away from growth
  - XLI (Industrials), XLP (Staples) still in leading quadrant

### Trade Ideas
1. **XOM (ExxonMobil)** — Energy #1 sector; Brent $95.23; Iran Strait of Hormuz supply floor; XLE momentum. CONDITIONAL: enter ONLY if (a) NFP ≤ 55K (weak, Fed hold narrative intact), (b) 10Y yield stays below 4.80%, (c) XOM pulls back to 30-min consolidation within ~1% of prior close (~$164). Entry: ~$164; stop: −8% (~$151); target: +16% (~$190); R:R 2:1. Size: 1 share (~$164, under $193 limit). Catalyst: Iran supply risk + XLE sector leadership + Fed hold.
2. **MPC or PSX (Refiners)** — Refining margin play on crude spike; XLE momentum; led August gains alongside XOM/CVX. Same entry conditions as XOM. Stop: −8%; target: +16%; R:R 2:1. Alternative if XOM spread too wide. Catalyst: Iran crude spike → refiner margin expansion.
3. **Full HOLD** — Default if NFP beats strongly (>150K) or 10Y yields surge back to 4.82%+ — macro headwind overwhelms energy thesis; wait for post-NFP dust to settle before reassessing.

### Risk Factors
- **NFP 8:30 AM ET** — binary vol event; hot print → Fed hike fears return → yields spike → equities sell off; cold print → priced in or demand-concern risk
- **Thursday rally already large** (+1.1% S&P) — Friday often consolidates; don't chase strength
- **AVGO AH miss** — guidance below whisper; tech/semi drag at Friday open; AVGO pre-market likely negative
- **Iran ceasefire risk** — diplomatic resolution = instant oil reversal; energy longs could drop 5–8% fast
- **VIX at 14.32** — near 2026 lows; complacency risk; September historically worst month (median VIX rises to ~19 by early Oct)
- **Small account** — $772; $193 max/position; max 1-2 positions; limited shares
- **PDT**: 0/3 day trades used — swing trade required; must hold overnight if entering

### Decision
HOLD — NFP at 8:30 AM is the dominant event. After a big Thursday rally, risk is asymmetric: a hot jobs number kills the Fed-hold narrative and spikes yields; a weak number is mostly priced in. Energy thesis (XOM/MPC) remains valid with Brent $95 and Iran floor — this has been the right read all week. CONDITIONAL entry acceptable POST-NFP: if number ≤ 55K, yields stay below 4.80%, and XOM pulls back to 30-min consolidation → 1 share XOM (~$164), swing trade, 10% trailing stop GTC. Full HOLD otherwise. Week of Sep 1: 0/5 trades — patience intact.

### Market-Open Addendum (Sep 04 — post-NFP)
- **NFP August 2026: +162K** (vs. 55K est.; prior July revised up to +23K) — massive beat; strongest in 5 months
- **Full HOLD triggered**: NFP > 150K threshold exceeded → Fed hike fears return, yields spike
- 10Y yield pre-print ~4.75%; post-162K print expected to surge toward 4.82%+
- Energy thesis (XOM/MPC) remains structurally valid but today's macro headwind overwhelming
- No trades placed. Week of Sep 1: 0/5 trades. Portfolio: $772.02 cash (100%).
- Next opportunity: Monday Sep 8 — reassess energy + post-NFP yield reaction over weekend

### Midday Addendum (Sep 04 — midday scan)
- **S&P 500**: −0.42% midday; Dow −300 pts; broad sell-off on NFP beat / Fed hike repricing
- **Yields**: 2Y +7bps to ~4.41%; 10Y edging higher — hike premium being priced in
- **Sector performance midday**: Tech (+0.44%), Industrials (+0.22%), Utilities (+0.12%) advancing; **Energy DECLINING** despite Iran bid — stronger dollar + rate fears overriding geopolitical premium
- **Energy thesis re-assessment**: XLE underperforming today even with Brent ~$95. Structural oil floor (Iran) intact, but higher-for-longer rates + dollar strength are a near-term headwind for energy stocks (not crude itself). This mutes the XOM/MPC entry case for Monday — need to see yields stabilize or energy stocks decouple positively.
- **Portfolio**: 0 positions, 0 orders; $772.02 cash (100%). No action taken.
- **HOLD confirmed**: Full HOLD was correct today. No action warranted midday.
- **Weekend watchlist**: (1) Iran developments — any ceasefire = oil reversal risk; (2) 10Y yield trajectory — needs to stay below 4.82% for energy entry; (3) Energy sector resilience vs. broader sell-off; (4) Fed speakers over weekend for Sep FOMC guidance

---

## 2026-09-07 — Pre-market Research (Labor Day — Markets Closed, Tuesday Preview)

### Account
- Equity: $772.02
- Cash: $772.02 (100% cash, no positions)
- Buying power: $772.02
- Daytrade count: 0 (account never traded)
- Max position size: ~$193 (25% of $772)
- Open positions: none | Open orders: none
- Week of Sep 8: 0/5 trades used

### Market Context (US markets closed today — Labor Day)
- **Oil**: Brent crude $97.39/bbl (+1.15% today); WTI $92.32/bbl (+0.92%) — major spike on US-Iran military escalation
- **S&P 500 futures**: +0.12% (~7,722); range 7,711–7,764 today; Asia broadly higher (Nikkei +1%, Kospi +3.09%)
- **VIX**: 14.53 (+1.47%, range 13.80–14.58) — oddly low given geopolitical escalation; complacency risk
- **10Y yield**: ~4.75% pre-weekend; watch for moves above 4.82% as rate-hike trigger
- **Weekend critical developments**:
  - **Sep 5 (Sat)**: US CENTCOM struck 3 Iranian oil tankers (M/T Downy, M/T Stark 1, M/T Kylo) after Iran launched ballistic missiles targeting 2 US Navy warships. No US casualties. US warned it would "destroy Iran's limited and exposed oil fleet" if necessary.
  - Iran retaliated: struck 3 additional tankers and 3 American vessels. Strait of Hormuz supply risk at multi-month high.
  - **Most significant US-Iran escalation** since conflict began — structural oil floor now higher.
- **Earnings today**: None (market closed Labor Day); Tuesday earners: ABM, CAN, UNFI, WDH (small caps, not relevant)
- **Economic calendar this week**:
  - Tue Sep 8: No major releases; market reopens
  - Wed Sep 10: **PPI (8:30 AM ET)** — August producer prices
  - Thu Sep 11: **CPI (8:30 AM ET)** — August consumer prices; critical FOMC input
  - Tue Sep 16: **FOMC rate decision (2 PM ET)** — 56–60% odds of 25bp hike to 3.75–4.00%
  - Fed in quiet period Sep 5–Sep 17 — no Fed speakers
- **FOMC outlook**: Warsh hawkish at Jackson Hole; current rate 3.50–3.75%; ~60% hike odds Sep 16; CPI this week is the swing factor
- **Sector momentum**:
  - **XLE (Energy)**: +43% YTD, +21% Q3 — undisputed sector leader; Iran escalation structurally bullish
  - Leading: XLE, XLI, XLP, XLB | Lagging: XLK, XLC, XLY, XLF
  - Refiners (MPC +91.8% YTD, VLO +87.8% YTD) — avoid; richly valued
- **No held positions** — no ticker-specific news needed

### Trade Ideas
1. **XOM (ExxonMobil)** — Iran tanker strikes = Brent $97+ supply floor; XLE #1 sector; XOM expected +2.3% gap open Tuesday (~$168). CONDITIONAL: wait for 30-min post-open pullback to $166–167 consolidation. Do NOT chase >4% gap. Entry: ~$167; stop: -8% (~$154); target: +15% (~$192); R:R ~2:1. Size: 1 share (~$167, under $193 limit). Catalyst: US military strikes on Iranian tankers → Brent $97+ → XLE sector momentum.
2. **CVX (Chevron)** — Secondary alternative; income-tilt; expected +2.1% gap Tuesday. Same 30-min pullback condition. Lower conviction vs. XOM.
3. **Full HOLD** — Default if (a) XOM/CVX gap >4% with no consolidation, (b) 10Y yields spike above 4.82%, (c) S&P broadly negative Tuesday, or (d) CPI looms too large for overnight swing risk.

### Risk Factors
- **Iran escalation → war risk**: US-Iran naval conflict could trigger full Strait of Hormuz closure = oil spike + global recession fear = risk-off despite energy stock support
- **FOMC Sep 16 + CPI Sep 11**: Hot CPI (energy-driven) confirms rate hike → higher rates headwind for equities broadly; energy stocks face dual pressure
- **Energy already priced in**: XLE +43% YTD; XOM/CVX may have fully priced Iran risk; gap-up Tuesday = "sell the news" risk
- **NFP +162K hangover**: Sep 4 sell-off showed energy can underperform even with Brent $95 when rates spike on strong jobs data
- **VIX at 14.53**: Complacency near 2026 lows; September historically sees VIX mean-revert toward ~19
- **Refiners overvalued**: MPC +91.8% YTD, VLO +87.8% YTD — reject both at current valuations
- **PDT rule**: 0/3 day trades used; any entry must be swing trade (hold overnight)

### Decision
CONDITIONAL — XOM only (not refiners) acceptable Tuesday Sep 8 IF all met:
  (a) XOM gaps ≤4% and pulls back to 30-min consolidation (~9:30–10:00 AM ET)
  (b) Brent holds above $95 at US market open
  (c) 10Y yield stable below 4.82%
  (d) S&P broadly positive or flat (above −0.5%)
If any condition fails → Full HOLD through CPI Sep 11 and FOMC Sep 16.
CVX: secondary only if XOM entry conditions fail. Refiners (MPC, PSX, VLO): REJECT.
Week of Sep 8: 0/5 trades — patience intact. One clean entry beats three speculative ones.

---

## 2026-09-08 — Pre-market Research

### Account
- Equity: $772.02
- Cash: $772.02 (100% cash, no positions)
- Buying power: $772.02
- Daytrade count: 0 (account never traded)
- Max position size: ~$193 (25% of $772.02)
- Open positions: none | Open orders: none
- Week of Sep 8: 0/5 trades used

### Market Context
- WTI: ~$92.37/bbl (−0.17%); Brent: ~$97.29/bbl (+1.05% close yesterday) — sustained by US-Iran naval conflict; US military escorting 40 vessels / 18M bbl through Strait today
- S&P 500 futures: +0.49% at ~7,714 — recovering as crude retreat knocks bond yields lower; S&P ranged 7,711–7,714 pre-market
- VIX: ~15.30 close (opened ~14.15, range 13.80–14.58) — contained; slightly elevated vs 2026 lows
- **Iran/Strait of Hormuz (structural)**: Shipping largely blocked since Feb 2026; US naval blockade prevents Iranian oil exports since July; US-Iran "tanker war" ongoing; US struck 3 Iranian tankers Sep 5, Iran retaliated; oil floor structural and multi-month
- **Apple "Surprise and Shine" event TOMORROW Sep 9**: iPhone 18 Pro, foldable iPhone Ultra, A20 Pro chip; first event under new CEO John Ternus — AAPL pre-event positioning potential (but XLK lagging sector, sell-the-news risk)
- **GameStop (GME) reports Q2 after close today**: Prelim already known ($780–800M revenue, $290–310M net income; eBay stake gains boosting profitability); no edge — NOT a play
- **Defense stocks in focus**: Iran escalation driving defense re-ratings; LMT, RTX, NOC in spotlight
- Earnings before open today: CASY (Casey's General Stores) — small catalyst, not relevant
- Earnings after close today: GME — reject
- Economic calendar:
  - Today Sep 8: **No major releases** — clean trading day
  - Wed Sep 10: PPI 8:30 AM ET (next key risk event)
  - Thu Sep 11: CPI 8:30 AM ET — critical FOMC input; oil-driven inflation risk
  - Sep 15–16: FOMC rate decision (~60% odds 25bp hike to 3.75–4.00%); Fed in quiet period since Sep 5
- Sector momentum:
  - Leading: XLE (+43% YTD, +21% Q3), XLI, XLP, XLB — intact
  - Lagging: XLK, XLC, XLY, XLF
  - SPMO momentum ETF +30% YTD (top holdings: MU, NVDA, AVGO); leadership broadening into industrials/financials

### Trade Ideas
1. **XOM (ExxonMobil)** — Brent $97.29 + US-Iran tanker war structural oil floor; XLE #1 sector; Sep 8 is first clean trading day (no macro data). CONDITIONAL (same as Sep 7 plan): (a) XOM gaps ≤4% at open, (b) Brent > $95 at open ✓, (c) 10Y yield < 4.82% (likely — yields retreating on crude softening), (d) S&P broadly positive ✓ (+0.49%). Wait for 30-min post-open pullback/consolidation (~9:30–10:00 AM ET). Entry: ~$167–170 on consolidation; stop: −10% GTC; target: +15–16% (~$192–197); R:R ~1.5:1–2:1. Size: 1 share (~$167–170, under $193). Catalyst: US-Iran naval conflict + Brent $97 structural floor + XLE sector leadership.
2. **LMT or RTX (Defense)** — Iran escalation re-rating defense sector; XLI (leading sector) umbrella; US military escort operations and active Strait deployments support spending narrative. Catalyst: 2026 Iran war + defense spending surge. Entry: 30-min consolidation; stop: −8%; target: +16%; R:R 2:1. Secondary idea — only if XOM entry fails or conditions missed.
3. **AAPL pre-event positioning** — "Surprise and Shine" Sep 9 event; iPhone 18 Pro + foldable iPhone Ultra + A20 Pro chip. Pre-event bid possible today. REJECT: XLK lagging sector, high "sell the news" risk, better to watch tomorrow's reaction first.

### Risk Factors
- **CPI/PPI this week**: Oil-driven CPI print Thu Sep 11 could reinforce rate hike expectations → yields spike → equities/energy stocks pressure
- **FOMC Sep 15–16**: ~60% hike odds; first hike after months of "hold" debate; energy stocks underperformed NFP +162K day (Sep 4) — same risk if CPI hot
- **Iran ceasefire risk**: Any diplomatic resolution = instant oil reversal; Brent could drop 5–8%; energy longs most exposed
- **Complacency**: VIX ~14–15 near 2026 lows despite active US-Iran naval war; September historically worst month (VIX median rises to ~19 by early Oct)
- **XOM gap-too-large risk**: If XOM gaps >4% at open, no entry; do NOT chase
- **Small account**: $772 total; max $193/position; only 1 share XOM realistically
- **PDT**: 0/3 day trades; any entry must hold overnight

### Decision
CONDITIONAL — XOM only, IF all 4 gate conditions met at 9:30–10:00 AM ET open:
  (a) XOM gaps ≤4% from Friday close
  (b) Brent > $95 at US open ✓ (structural, likely holds)
  (c) 10Y yield stable < 4.82% (likely with futures positive and yields retreating)
  (d) S&P broadly flat-to-positive ✓ (+0.49% futures)
  → 1 share XOM, 10% trailing stop GTC (check fractional share rules — buy exact whole shares to avoid trailing stop restriction).
LMT/RTX: secondary watchlist only.
AAPL: REJECT.
If any XOM gate fails → full HOLD through CPI Sep 11 and FOMC Sep 16.
Week of Sep 8: 0/5 trades. Today is the first clean window since account inception.

### Midday Addendum (Sep 08 — midday scan)
- **S&P 500**: Edging lower at midday; broad market soft post-Labor Day weekend
- **XOM**: $159.47 (−1.69% vs Friday close ~$164.15) — pulling back despite Brent near $99; energy stocks underperforming oil (same pattern as Sep 4 NFP day: rate fears / sector rotation overriding crude bid)
- **Brent**: ~$99/bbl (7-week high) — Iran declared maritime "exclusion zone" outside Strait; Iran reportedly captured US submarine; only 10 ships/day transiting (lowest since May)
- **CRITICAL RISK**: Bloomberg "Oil Extends Gain as Iran Says Hormuz Deal With Oman Days Away" — potential Iran-Oman brokered ceasefire; if confirmed, oil floor thesis collapses; Brent could drop $5–10 instantly
- **XOM entry gate (Sep 07 plan) — re-evaluated at midday**:
  - (a) XOM gaps ≤4%: XOM opened DOWN −2.85% — no gap up; but pulled back further to $159.47 ✓ (technically within range but not a consolidation setup)
  - (b) Brent > $95 at open: ✓ ($99)
  - (c) 10Y yield < 4.82%: Likely ✓ (yields retreating, futures were positive AM)
  - (d) S&P broadly flat-to-positive: ✗ (edging lower at midday)
  - **Ceasefire risk**: Invalidates structural oil floor assumption → entry gate FAILS
- **Portfolio**: 0 positions, 0 orders; $772.02 cash (100%). No action taken.
- **HOLD confirmed**: S&P negative + Iran ceasefire risk overhead = skip XOM entry. Ceasefire, if announced, would drop oil 5–10% and pull XOM down with it; wrong risk/reward to enter ahead of that headline.
- **Outlook**: Wait for Iran-Oman deal to resolve (confirm or deny) before any energy entry. If deal falls through and oil sustains above $95 with S&P stabilizing, energy entry case remains live for Wed–Thu (pre-CPI Sep 11).

---

## 2026-09-09 — Pre-market Research

### Account
- Equity: $772.02
- Cash: $772.02 (100% cash, no positions)
- Buying power: $772.02
- Daytrade count: 0 (account never traded)
- Max position size: ~$193 (25% of $772.02)
- Open positions: none | Open orders: none
- Week of Sep 8: 0/5 trades used

### Market Context
- WTI: ~$92.69/bbl (Sep 8 close/futures); Brent: ~$99.85/bbl (Sep 8 close) — approaching $100 psychological level; US-Iran naval conflict + no ceasefire deal = structural supply squeeze
- S&P 500 futures: ~7,690.50 (+0.13% premarket); range flat-to-slightly-positive; cautious tone as oil approaches $100
- VIX: ~15.72 (Sep 8 close); elevated vs. 2026 lows (13.8); rising as geopolitical + inflation risks compound
- **AAPL "Surprise and Shine" event TODAY at 10 AM PT / 1 PM ET**: iPhone 18 Pro, foldable iPhone Ultra, A20 Pro chip, new Apple Watch, Siri AI; first event under new CEO John Ternus. AAPL ~$319.97 (−2.5% yesterday), +18–21% YTD.
- **Iran/Hormuz**: NO ceasefire deal confirmed despite Bloomberg "days away" claim Sep 8. Trump threatened to "bomb Oman" if it interferes; 60-day ceasefire expired; Iran-Oman talks ongoing but unresolved. Strait transit at trickle (~10 ships/day). Structural oil floor intact.
- **Sector performance (Sep 9)**: XLE leading (+1.3% early); XLY lagging (−1.9%). Oil near $100 = inflation fear driving rate-sensitive sectors lower.
- Earnings before open: SUNB, COO (minor; no relevant catalysts); ~33 total reports
- Economic calendar:
  - Today Sep 9: NFIB Small Business Optimism 6 AM ET (minor)
  - **Wed Sep 10: PPI 8:30 AM ET** — pipeline inflation; oil-driven upside risk
  - **Thu Sep 11: CPI 8:30 AM ET** — critical FOMC input; August energy inflation likely hot
  - **Sep 15–16: FOMC rate decision** (~60% odds 25bp hike to 3.75–4.00%); Fed in quiet period
- Sector momentum: XLE, XLI, XLP, XLB Leading | XLK, XLC, XLY, XLF Lagging | XLRE/XLU Improving

### Trade Ideas
1. **XOM (ExxonMobil)** — Brent $99.85 approaching $100 psychological level; no Iran-Oman ceasefire confirmed; XLE #1 sector +43% YTD; structural Hormuz supply squeeze. XOM closed Sep 8 at ~$160.66 (recovered from $159.47 intraday low). CONDITIONAL: (a) Iran-Oman deal NOT announced by 9:30 AM, (b) Brent > $97 at open, (c) 10Y yield stable < 4.82%, (d) S&P flat-to-positive. Wait for 30-min post-open consolidation — do NOT chase if gapping >3%. Entry: ~$161–164 on consolidation; stop: −10% trailing GTC (whole shares only — 1 share max); target: +15% (~$185–189); R:R ~1.5:1. Catalyst: Brent $100 threshold + US-Iran naval conflict structural floor + XLE momentum.
2. **LMT or RTX (Defense)** — Iran war driving defense re-rating; XLI in leading sector quadrant; US military escort operations and active Strait deployments. Secondary idea if XOM entry fails or ceasefire announced (energy reversal). Entry: 30-min consolidation; stop: −8%; target: +16%; R:R 2:1. Catalyst: 2026 US-Iran war + defense spending surge.
3. **AAPL (Apple) — REJECT** — Event day; XLK lagging sector; stock up 18–21% YTD with analyst 26% overvaluation flag; classic "sell the news" setup. Watch post-event reaction tomorrow. No trade today.

### Risk Factors
- **Iran-Oman ceasefire headline risk** — any deal announcement = instant Brent drop $5–10; energy longs wiped out fast; single biggest downside risk today
- **Brent approaching $100 = "buy the news" risk** — sell-the-news reversal on headline crossing $100 is real; don't chase parabolic move
- **PPI tomorrow Sep 10 (8:30 AM ET)** — overnight hold into macro data; hot PPI = rate hike cement + yield spike + equity pressure
- **CPI Sep 11 + FOMC Sep 16** — risk-heavy week; multiple binary events favor reducing position size or staying flat
- **Energy underperformance pattern** — XOM fell −1.69% yesterday despite Brent $99; rate/dollar headwinds overriding oil bid at times (same as Sep 4 NFP day)
- **VIX 15.72 and rising** — September seasonally worst month; VIX median reaches ~19 by early Oct; complacency premium wearing off
- **AAPL event at 1 PM ET** — could pressure overall sentiment if disappoints; or create tech rotation noise
- **PDT**: 0/3 day trades used; any entry must be swing trade held overnight

### Decision
CONDITIONAL — XOM only (1 share), IF at 9:30–10:00 AM ET all met:
  (a) Iran-Oman ceasefire NOT confirmed ✗/✓ (TBD at open)
  (b) Brent > $97 at US open (likely ✓ given $99.85 Sep 8 close)
  (c) 10Y yield < 4.82% (likely ✓ with futures slightly positive)
  (d) S&P flat-to-positive (futures +0.13% ✓ — monitor at open)
  → 1 share XOM, 10% trailing stop GTC. Whole shares only (fractional blocks trailing stop per Alpaca rules).
If ceasefire announced before open OR XOM gaps >3% → Full HOLD.
LMT/RTX: secondary only if energy thesis invalidated. AAPL: REJECT.
PPI tomorrow is the key reason to stay light today — overnight data risk.
Week of Sep 8: 0/5 trades. Patience intact. One clean entry beats three speculative ones.

### Market-Open Addendum (Sep 09 — 9:30–9:45 AM ET)
- **Brent crude**: $99.35 open → $102.05 (7 AM ET) — crossed $100 psychological level ✓ (gate b)
- **Iran ceasefire**: No deal confirmed; negotiations "ongoing" per ABC/CBS; Oman talks unresolved ✓ (gate a)
- **10Y yield**: Closed Sep 8 at 4.786%; likely rising today with oil at $100+ (gate c uncertain)
- **S&P 500**: SLIPPING at open — "Dow, S&P 500, Nasdaq slip as oil prices hit $100"; down ~0.3% ✗ (gate d FAILS)
- **XOM last trade**: $164.045 at 9:37 AM ET (recovered from $159.47 Sep 8 low, but S&P down)
- **Gate result**: (d) FAILS — S&P negative. Same energy-underperforms-in-rising-rate-environment pattern as Sep 4 and Sep 8. Oil hitting $100 triggers "sell the news" risk explicitly flagged in pre-market research.
- **PPI tomorrow 8:30 AM ET**: Overnight macro risk too high for any new position entered today.
- **Decision: FULL HOLD** — No trades placed. Portfolio $772.02 cash (100%). Week of Sep 8: 0/5 trades.

### Midday Addendum (Sep 09 — midday scan)
- **S&P 500**: −0.52% midday; Dow −0.58%; Nasdaq −0.35% — declines accelerated after ~11 AM as Brent crossed $100 for first time since July; energy/inflation fears driving broad selling
- **Brent crude**: Crossed $100/bbl during session — "sell the news" risk flagged pre-market materialized; US-Iran new strikes ongoing, Strait supply squeeze intact
- **XOM**: Trading $158.75–$163.11 intraday — down from Sep 8 close ~$160.66; energy stocks still underperforming crude (rate/dollar headwind pattern continues)
- **Iran ceasefire**: No deal announced; US-Iran new strikes confirmed at midday; Oman talks unresolved — oil floor structural but market selling energy stocks on inflation/rate fear
- **Gate (d) re-confirmed FAIL**: S&P −0.52% — well below flat-to-positive threshold
- **Portfolio**: 0 positions, 0 orders; $772.02 cash (100%). No action taken.
- **HOLD confirmed**: Zero trades correct. Brent $100 crossing triggered "sell the news" in energy stocks; rate-fear rotation overriding oil bid for 3rd consecutive session (Sep 4, Sep 8, Sep 9)
- **Tonight/Tomorrow**: AAPL event result post-1 PM ET; PPI 8:30 AM ET Sep 10 (overnight data risk); watch for Brent to establish above $100 or reverse; energy underperformance pattern must break before XOM entry viable

---

## 2026-09-10 — Pre-market Research

### Account
- Equity: $772.02
- Cash: $772.02 (100% cash, no positions)
- Buying power: $772.02
- Daytrade count: 0 (account never traded)
- Max position size: ~$193 (25% of $772.02)
- Open positions: none | Open orders: none
- Week of Sep 8: 0/5 trades used

### Market Context
- **⚠️ WebSearch tool unavailable this session** — live market data (oil, futures, VIX, news) could not be fetched; research draws from Sep 09 close data and scheduled economic calendar.
- WTI: ~$92–93/bbl (Sep 9 close estimate); Brent: ~$100–102/bbl — first $100 close since July; structural Iran Strait of Hormuz squeeze
- S&P 500 futures: Unknown live (Sep 9 closed −0.52%); futures direction pre-PPI unclear; cautious baseline
- VIX: ~15.72 (Sep 9 close); rising from 2026 lows ~13.8; September seasonality headwind
- **PPI August 2026 (8:30 AM ET TODAY)** — dominant event; oil-driven upside risk; hot PPI = rate hike cemented + yields spike = energy stocks face dual headwind (same as NFP +162K on Sep 4)
- **CPI August 2026 (8:30 AM ET Sep 11 TOMORROW)** — critical FOMC input; back-to-back binary events
- **FOMC Sep 15–16**: ~60% odds 25bp hike to 3.75–4.00%; Fed in quiet period; CPI is swing factor
- **Iran/Hormuz**: No ceasefire confirmed Sep 9; US-Iran new strikes ongoing; Strait transit ~10 ships/day; oil floor structural but market keeps selling energy stocks on rate/dollar fear
- **AAPL "Surprise and Shine" Sep 9 event** (result unknown — WebSearch down): iPhone 18 Pro, foldable iPhone Ultra, A20 Pro; XLK lagging sector; post-event reaction TBD
- Earnings before open today: Unknown (WebSearch down); no pre-known major catalyst
- Sector momentum: XLE (+43% YTD) #1 but underperforming crude 3 straight sessions; XLI, XLP, XLB leading; XLK, XLC, XLY, XLF lagging

### Trade Ideas
1. **XOM (ExxonMobil) — CONDITIONAL POST-PPI** — Brent $100+ structural floor (Iran Strait); XLE #1 sector; energy underperformance pattern must break. Gate: (a) PPI soft/inline (not hot), (b) Brent > $97 at open, (c) 10Y yield < 4.82%, (d) S&P flat-to-positive. If ALL pass → wait for 30-min post-open consolidation; Entry: ~$160–164 (1 share); stop: −10% trailing GTC; target: +15%; R:R ~1.5:1. Catalyst: Brent $100+ floor + soft PPI relief rally + XLE momentum. REJECT if PPI hot or S&P negative.
2. **LMT or RTX (Defense) — secondary** — Iran war driving defense re-rating; US escort operations + Strait crisis = sustained defense spend; XLI in leading sector. Entry: 30-min consolidation; stop: −8%; target: +16%; R:R 2:1. Activate only if energy thesis invalidated by PPI/ceasefire or XOM entry gate fails.
3. **Full HOLD (default)** — PPI today + CPI tomorrow + FOMC Sep 16 = three binary events in 5 days. Staying flat is the correct posture until PPI result clears and post-data price action confirms direction.

### Risk Factors
- **PPI 8:30 AM ET today** — oil-driven August PPI likely elevated; hot print = hike cemented, yields spike, energy stocks fall despite crude strength (Sep 4 pattern repeats)
- **CPI Sep 11 tomorrow** — back-to-back macro events; entering any position today means overnight CPI exposure
- **Energy underperformance pattern** — XOM fell −1.69% Sep 8 and underperformed on Sep 4 and Sep 9 despite rising crude; rate/dollar headwinds repeatedly override oil bid
- **Brent $100 sell-the-news risk** — psychological level crossed Sep 9; market may have priced oil floor; any ceasefire headline = instant $5–10 Brent drop
- **Iran ceasefire** — Oman talks ongoing; any deal = energy thesis invalidated immediately
- **WebSearch unavailable** — reduced information quality today; proceed conservatively
- **FOMC Sep 15–16** — rate hike in 5 days; market may not support new long positions with hike looming
- **PDT**: 0/3 day trades used; any entry must hold overnight

### Decision
HOLD — Default and correct. PPI at 8:30 AM ET is the day's binary event; back-to-back with CPI Sep 11 and FOMC Sep 16 makes the risk/reward for new entries poor. Energy underperformance vs. crude (3 consecutive sessions) hasn't broken. XOM conditional entry only viable if PPI is soft AND all 4 gates pass intraday — which is a high bar. WebSearch unavailable reduces research confidence further. Zero trades; cash preservation priority through FOMC Sep 16.
- **CONDITIONAL**: Post-PPI, if print is soft/inline and S&P recovers to flat-to-positive and Brent holds $97+, reassess XOM in first 30 minutes. Otherwise full HOLD through CPI tomorrow.
- Week of Sep 8: 0/5 trades. Patience intact.

### Midday Addendum (Sep 10 — midday scan)
- **PPI August 2026 (released 8:30 AM ET)**: +0.4% MoM (inline with Dow Jones consensus); +5.4% YoY (0.1pp above est); Core PPI ex food & energy +0.2% MoM (below +0.3% est — softer than expected). Goods +1.1%, Services +0.1%. Drivers: diesel, jet fuel, gasoline, chemicals. Not a hot surprise on core — but headline annual 5.4% still well above Fed 2% target.
- **S&P 500**: −0.68% midday; Dow/Nasdaq also declining — "risk-off" again; bond yields "jumping" (per Yahoo Finance/TheStreet)
- **Brent crude**: ~$105/bbl — Iran targeted US Navy warships (new escalation); oil accelerating above $100 close; structural Hormuz squeeze worsening
- **XOM / Energy**: Energy stocks still underperforming crude (4th consecutive session: Sep 4, Sep 8, Sep 9, Sep 10); rate-fear/dollar headwind continues to override oil bid
- **XOM entry gate re-eval**:
  - (a) PPI soft/inline: PARTIAL ✓ (core below est; headline inline)
  - (b) Brent > $97: ✓ (~$105)
  - (c) 10Y yield < 4.82%: ✗ (yields jumping; 52-wk highs set yesterday)
  - (d) S&P flat-to-positive: ✗ (−0.68%)
- **Portfolio**: 0 positions, 0 orders; $772.02 cash (100%). No action taken.
- **HOLD confirmed**: Gates (c) and (d) fail. Energy underperformance pattern intact for 4th day. Cash preservation correct.
- **Tomorrow**: CPI August 2026 (8:30 AM ET Sep 11) — critical FOMC swing factor; if core CPI soft + energy stocks begin decoupling positively from crude, XOM entry may finally clear all gates. Full HOLD until CPI result and post-data S&P reaction confirm direction.

---

## 2026-09-11 — Pre-market Research

### Account
- Equity: $772.02
- Cash: $772.02 (100% cash, no positions)
- Buying power: $772.02
- Daytrade count: 0 (account never traded)
- Max position size: ~$193 (25% of $772.02)
- Open positions: none | Open orders: none
- Week of Sep 8: 0/5 trades used

### Market Context
- **Brent crude**: ~$106.11/bbl (−1.41% from Sep 10 ~$108 high); WTI ~$102.59/bbl (+0.11%)
- **Iran/Hormuz**: Ceasefire repeatedly violated; Iranian ballistic launch toward Kuwait, drone attacks near Strait; traffic severely disrupted; oil floor structural, tensions ongoing
- **S&P 500 futures**: +0.17% premarket; 64% probability of higher open; Dow futures +0.28%, Nasdaq +0.02%, Russell 2000 +0.18% — modest positive tone
- **Asia markets**: MSCI Asia Pacific −1.7% overnight (steepest 3-week drop) on oil surge + inflation fears; Japan, S. Korea, Australia, Taiwan all down
- **VIX**: 16.34 (normal range; up 14.7% YoY from ~14.2; September seasonality headwind)
- **⚠️ CPI August 2026 (8:30 AM ET TODAY)** — THE dominant event; last inflation data before FOMC Sep 15-16
  - Consensus: Headline +0.4% MoM / +3.4% YoY; Core +0.4% MoM / +2.4% YoY
  - "Fate of September Fed meeting lies with August CPI" — Citigroup
  - ACTUAL RESULTS NOT YET RELEASED (pre-market research; release imminent)
- **FOMC Sep 15–16**: 56–70% odds of 25bp hike to 3.75–4.00%; CPI is the swing factor
- **PPI Sep 10 (recap)**: Headline +0.4% MoM / +5.4% YoY (inline); Core +0.2% MoM (below +0.3% est — softer than feared); did not prevent market selloff −0.68%
- **XOM**: ~$165.23 close Sep 10; energy sector slid −0.8% Sep 10 (4th consecutive underperformance vs crude — Sep 4, 8, 9, 10)
- **Sector momentum**: Leading: XLP, XLI, XLB, XLE (+22% YTD); Lagging: XLK, XLC, XLY, XLF; XLE #1 YTD but 4 straight sessions underperforming crude
- **Earnings today**: ~4 reports scheduled before open; no major named catalyst identified
- **10Y yield**: At/near 52-week highs after PPI; exact pre-market level unknown but upward pressure remains

### Trade Ideas
1. **XOM (ExxonMobil) — POST-CPI CONDITIONAL** — This is the highest-probability entry window since account inception IF CPI prints soft.
   - Catalyst: Brent $106+ structural floor (Iran Hormuz crisis ongoing); XLE #1 sector YTD; potential CPI relief rally
   - Gate: (a) Core CPI ≤ +0.4% MoM AND headline ≤ +3.4% YoY, (b) Brent > $97 at open, (c) 10Y yield stabilizes or falls, (d) S&P flat-to-positive post-CPI
   - If ALL pass → wait for 30-min post-open consolidation; Entry: ~$163–167 (1 share); 10% trailing stop GTC; target: +15%; R:R ~1.5:1
   - REJECT if CPI hot (core >0.4% MoM or YoY >3.5%) → energy underperformance pattern resumes
2. **LMT or RTX (Defense) — secondary fallback** — Iran war ongoing; US escort operations + Hormuz crisis = sustained defense spend; XLI in leading sector
   - Entry: 30-min post-CPI consolidation; stop: −8%; target: +16%; R:R ~2:1
   - Activate only if energy thesis invalidated (ceasefire confirmed) or XOM gate fails; defense less rate-sensitive than energy
3. **Full HOLD (default before 8:30 AM ET)** — Do not trade before CPI release under any circumstances; CPI is binary; futures barely positive (+0.17%) and Asia down −1.7% means conviction is low pre-data

### Risk Factors
- **CPI hot print** (core >0.4% or headline >3.5%) → Fed hike cemented → yields spike → energy underperformance pattern continues for 5th day; FOMC Sep 16 in 4 days
- **5th consecutive energy underperformance** — XOM underperformed crude Sep 4, 8, 9, 10; same rate/dollar headwind may persist regardless of CPI result
- **Asia markets down 1.7% overnight** — potential drag on US open despite modestly positive futures
- **Brent $107 sell-the-news risk** — psychological resistance; ceasefire headline = $5–10 instant drop; any Oman deal invalidates energy thesis immediately
- **FOMC Sep 15–16 overhead** — even with soft CPI, market may not sustain new long positions with 56-70% hike probability in 4 days
- **Fractional share trailing stop issue** — if position is fractional qty, Alpaca rejects trailing_stop orders; must use whole shares or fixed-stop fallback
- **PDT**: 0/3 day trades used; any entry must hold overnight (swing trade only)

### Decision
**CONDITIONAL — GATE ON CPI AT 8:30 AM ET**
- **If CPI prints soft/inline (core ≤ +0.4% MoM)**: Re-evaluate XOM gate (a)–(d) in first 30 minutes post-open. This is the first genuine XOM entry window since inception — energy underperformance pattern MUST visibly break (XOM up while market positive) before executing.
- **If CPI prints hot (core >+0.4% MoM or headline >+3.5% YoY)**: FULL HOLD through FOMC Sep 16 (Sep 15-16). No entry in any sector.
- **Default NOW (pre-8:30 AM)**: HOLD — no trades before CPI release.
- Week of Sep 8: 0/5 trades. This is the 5th trading day of the week. Patience intact.

### Midday Addendum (Sep 11 — midday scan)
- **CPI August 2026 (released 8:30 AM ET)**: Headline +0.4% MoM / +3.4% YoY (inline with consensus); Core +0.3% MoM / +2.4% YoY — softer than some forecasts but "sticky" per market consensus; Fed rate hike Sep 16 "all but assured"
- **S&P 500**: +0.96% midday — "relief rally" on in-line print; market was more worried about a hotter number; gate (d) ✓
- **Brent crude**: ~$105/bbl (−1.4–2.4% today from recent $107 highs) — pulling back on oil profit-taking; still above $97; gate (b) ✓
- **10Y yield**: 4.91% (near multi-year highs; briefly approached 5.00%) — well above 4.82% gate threshold; gate (c) ✗ **FAILS**
- **XOM**: ~$165.23 (unchanged from Sep 10 close; energy stocks bouncing with broader market today)
- **XOM entry gate re-eval**:
  - (a) Core CPI ≤ +0.4% MoM: ✓ (0.3% — inline/soft)
  - (b) Brent > $97 at open: ✓ (~$105)
  - (c) 10Y yield < 4.82%: ✗ (4.91% — significantly above gate)
  - (d) S&P flat-to-positive: ✓ (+0.96%)
- **Portfolio**: 0 positions, 0 orders; $772.02 cash (100%). No action taken.
- **HOLD confirmed**: Gate (c) fails decisively. 10Y at 4.91% is the same rate/dollar headwind that caused XOM underperformance all week (Sep 4, 8, 9, 10). FOMC rate hike Sep 15–16 in 4 days — market now pricing hike as near-certain after CPI. Entering XOM into a confirmed rate hike cycle is poor risk/reward.
- **Next window**: Post-FOMC (Sep 17+). If Fed hikes 25bp as expected and language is not more hawkish than priced, yields may stabilize; XOM entry case could re-open. Full HOLD through Sep 16 FOMC.
- Week of Sep 8 final: 0/5 trades. Patience intact.

---

## 2026-09-14 — Pre-market Research (Sunday; preview for Mon Sep 15 open)

### Account
- Equity: $772.02
- Cash: $772.02 (100% cash, no positions)
- Buying power: $772.02
- Daytrade count: 0 (account never traded)
- Max position size: ~$193 (25% of $772.02)
- Open positions: none | Open orders: none
- Week of Sep 14: 0/5 trades used

### Market Context
- **WTI**: ~$102.52/bbl (+2.47% today); range $101.76–$103.58
- **Brent**: ~$107.95/bbl (+3.19%) — approaching $108; near 2026 highs
- **⚠️ CRITICAL NEW EVENT — Saudi East-West Pipeline shutdown (Sep 11)**: Drone strikes from Iraqi territory (Iran-backed militias) hit the 1,200km East-West pipeline; Saudi Arabia shut it down. It was carrying **4–5 million bbl/day — 4–5% of global supply** — and had been the PRIMARY bypass route for Middle East oil while Hormuz is restricted. BOTH major Middle East oil transit routes now disrupted simultaneously.
- **Iran/Hormuz (Day 199)**: Strait effectively closed; US naval escorts moving ~14 non-Iranian ships/day; structural multi-month supply squeeze ongoing
- **S&P 500 futures (Mon Sep 15 open)**: ~7,727.25; ESU26 +0.49% — modestly positive heading into FOMC week
- **VIX**: 15.84 (Sep 11 close, −11.21% on CPI day); estimate similar Sep 14 weekend
- **FOMC Sep 15–16 (decision Wed Sep 16 at 2 PM ET)**:
  - 85.6% CME FedWatch odds of 25bp hike to 3.75–4.00%
  - Dot plot (SEP) also released Wednesday
  - Fed Chair press conference 2:30 PM ET
  - Retail Sales released Wed morning Sep 16 before decision
  - ADP Employment + Empire State Index: Tue Sep 15 8:15–8:30 AM ET
  - Initial Claims + housing data: Thu Sep 17
- **Earnings**: No major pre-market earnings Mon–Wed; Lennar (LEN) after Wed close; Trip.com in focus
- **Sector momentum**: XLE +47.7% YTD (#1); XLI (+20% H1), XLP, XLB leading; XLK, XLC, XLY, XLF lagging
- **10Y yield**: 4.91% (Sep 11 close; near multi-year highs); 25bp hike fully priced

### Trade Ideas
1. **XOM (ExxonMobil) — POST-FOMC Sep 17 CONDITIONAL** — Saudi East-West Pipeline shutdown + Hormuz closure = most severe global oil supply disruption since conflict began; Brent ~$108; XLE #1 sector +47.7% YTD. The "25bp hike as priced → buy the rumor, sell the fact on rates" pattern could finally break the XOM/crude underperformance streak. Gate (all must pass Sep 17 morning): (a) FOMC language not incrementally hawkish beyond 25bp, (b) 10Y yield stabilizes or falls after Wed hike, (c) Brent > $100, (d) S&P flat-to-positive Sep 17. Wait for 30-min post-open consolidation; Entry: ~$160–168 (1 share); 10% trailing stop GTC (whole shares only — Alpaca fractional restriction); target: +15%; R:R ~1.5:1. Catalyst: Saudi+Hormuz dual supply shutdown + XLE sector leadership + post-FOMC rate relief.
2. **LMT or RTX (Defense) — secondary** — Iran-Iraq war widening; Saudi infrastructure now targeted by Iran-backed Iraqi militias; US military operations expanding; XLI in leading sector. Less rate-sensitive than energy — can enter earlier if FOMC risk is the block. Entry: 30-min consolidation; stop: −8%; target: +16%; R:R 2:1. Catalyst: geopolitical escalation + defense spending surge.
3. **Full HOLD through Sep 16 FOMC (default)** — 85.6% hike probability means Wednesday is binary; entering before decision risks yield spike on hawkish language; energy underperformed crude 5 straight sessions (Sep 4, 8, 9, 10, 11); pattern must break first.

### Risk Factors
- **FOMC hawkish surprise** — if dot plot signals >25bp total or language more restrictive than priced → yields spike further above 4.91%, energy stocks underperform crude for 6th consecutive session
- **Saudi pipeline repair** — any quick repair or ceasefire = oil supply partially restored; Brent could drop $5–10 fast
- **Oil at $108 = "sell the news" risk** — psychological resistance zone; profit-taking on Saudi headline already partly in price
- **XOM underperformance streak** — 5 consecutive sessions of energy stocks lagging crude despite rising oil; rate headwind has been persistent and structural
- **Geopolitical escalation tail** — if conflict widens to Saudi oil infrastructure broadly, risk-off could overwhelm energy long thesis (global recession fear overrides supply premium)
- **ADP/Empire State Tue morning** — could shift FOMC odds intraday before decision
- **Retail Sales Wed before FOMC** — hot number = hawkish confirmation; cold = rate relief
- **Fractional share rule** — must buy whole shares only for trailing stop to work on Alpaca
- **PDT**: 0/3 day trades used; any entry must be swing trade (hold overnight)

### Decision
**HOLD through FOMC (Sep 15–16)** — No trades before the rate decision. The Saudi pipeline shutdown is the biggest new catalyst since the conflict began and structurally changes the oil thesis, but it cannot override a Fed that is 85%+ likely to hike Wednesday. Post-FOMC (Sep 17+) is the first genuine entry window: if Fed hikes 25bp as priced and language is not incrementally hawkish, yields may stabilize ("buy the rumor, sell the fact") and XOM entry case opens for the first time since inception with a compelling catalyst.
- **Watch on Wednesday Sep 16**: (1) Retail Sales pre-FOMC, (2) FOMC statement language — specifically any signals beyond 25bp hike, (3) 10Y yield reaction post-2pm, (4) energy sector reaction vs. S&P
- **Sep 17 is the target**: 30-min consolidation in XOM, 1 share, 10% trailing stop GTC — but ONLY if all 4 gates pass
- Week of Sep 14: 0/5 trades. Patience intact.

### Midday Addendum (Sep 14 — midday scan, markets closed)
- **No positions / no orders** — account remains $772.02 cash (100%). No action possible or warranted.
- **Saudi pipeline update**: Yanbu (Red Sea) export storage covers only 5–7 days of exports; no repair timeline given. Combined with Hormuz, 30–40% of Gulf crude output now disrupted.
- **Strait of Hormuz**: Vessel traffic fallen to **single digits/day** (was 14/day average; pre-conflict normal ~125/day). Merchant vessel struck in Strait over weekend — 1 killed, 3 injured. Escalation accelerating.
- **FOMC confirmed**: 85.5% CME FedWatch odds of 25bp hike Sep 16 (unchanged from pre-market). Current rate 3.50–3.75%. Fed in quiet period.
- **Oil**: Brent ~$107–108; WTI ~$102–103. Intraday surge on dual-supply-disruption narrative. Supply shock increasingly structural.
- **Thesis unchanged**: HOLD through FOMC. Post-Sep 16 (Sep 17+) remains first viable XOM entry window if hike is inline (not incrementally hawkish) and 10Y yield stabilizes below 4.82%.
- **New risk to monitor**: If Saudi Yanbu reserves deplete within 5–7 days (~Sep 19–21) with no repair, next leg of oil move could be explosive — potential XOM breakout opportunity OR global recession fear-driven risk-off reversal. Watch closely post-FOMC.

---

## 2026-09-15 — Pre-market Research (FOMC Day 1)

### Account
- Equity: $772.02
- Cash: $772.02 (100% cash, no positions)
- Buying power: $772.02
- Daytrade count: 0 (account never traded)
- Max position size: ~$193 (25% of $772.02)
- Open positions: none | Open orders: none
- Week of Sep 15: 0/5 trades used

### Market Context
- **WTI**: ~$102.69–102.92/bbl (+1.5%); **Brent**: ~$107.05–107.46/bbl (+1.3%)
  - Saudi East-West pipeline remains shut (struck Sep 11 by Iran-backed Iraqi militias; 4–5M bbl/day offline)
  - Saudi Yanbu Red Sea reserves estimated at only 5–7 days; countdown to potential full export halt ~Sep 19–21
  - Strait of Hormuz: <10 transits/day (pre-conflict normal ~125/day); Iran refuses to reopen unless US concessions
  - Both major Middle East oil transit routes disrupted simultaneously — most severe supply shock since conflict began
  - Oil nearing $110; next major resistance is $110–115 range
- **S&P 500 futures**: −0.30% (Dow −0.40%, Nasdaq −0.32%, Russell 2000 −0.39%); Polymarket 32% chance of higher open
- **VIX**: 17.50 open; intraday range 16.58–18.17 (up from 15.84 Sep 11 close) — fear increasing
- **⚠️ 10Y TREASURY YIELD CROSSED 5.00%** — rose to 5.02–5.04% pre-market; HIGHEST SINCE 2007
  - 8bps jump overnight; "US 10-year yields rise to highest level since 2007" per Bloomberg/CNBC
  - This is ~20bps above the 4.82% XOM entry gate — gate (c) fails decisively and by a widening margin
- **FOMC Day 1 (of 2)**: Decision Wednesday Sep 16 at 2 PM ET; Retail Sales also Sep 16 at 8:30 AM ET
- **FOMC rate hike odds**: 80–88% probability of 25bp hike to 3.75–4.00% (CME/Polymarket); most hawkish consensus since conflict began
- **XOM (Sep 14 close)**: $165.63–$169.45 range; ~$166.72; Barclays reaffirmed Buy (Sep 10)
- **Earnings before open today**: No major reports scheduled
- **Sector momentum (YTD)**: XLE +47.7% (#1); XLI, XLP, XLB leading | XLK, XLC, XLY, XLF lagging
  - Energy 3-month momentum: +14.0% (median sector: −1.9%) — XLE dominant but energy stocks keep underperforming crude

### Trade Ideas
1. **XOM (ExxonMobil) — POST-FOMC Sep 17 CONDITIONAL**
   - Structural catalyst is now at maximum strength: Saudi pipeline + Hormuz = 30–40% of Gulf crude output offline
   - Yanbu depletion ~Sep 19–21 could trigger explosive next leg in oil; XLE +47.7% YTD with further upside if supply shock worsens
   - Gate (all must pass Sep 17 morning): (a) FOMC 25bp hike as priced with no incremental hawkishness in dot plot, (b) 10Y yield stabilizes or falls post-hike (classic "buy the rumor, sell the fact" on rates), (c) Brent > $100, (d) S&P flat-to-positive Sep 17
   - Entry: ~$163–170 (1 share, whole shares only per Alpaca fractional restriction); 10% trailing stop GTC; target: +15%; R:R ~1.5:1
   - Catalyst: Dual supply shutdown + XLE sector leadership + post-FOMC rate relief trade
2. **LMT or RTX (Defense) — secondary**
   - Iran war widening to Saudi infrastructure; US military escort operations expanding; XLI in leading sector
   - Less rate-sensitive than energy; can activate if energy thesis invalidated or post-FOMC if XOM gate fails
   - Entry: 30-min consolidation; stop: −8%; target: +16%; R:R 2:1
3. **Full HOLD today (default)** — FOMC Day 1 with binary decision tomorrow; 10Y at 5.02% is a new structural headwind; S&P negative pre-market

### Risk Factors
- **10Y yield at 5.00%+ (new 2026 high)** — energy stocks have underperformed crude every time yields spike (Sep 4, 8, 9, 10, 11); this is now ~20bps above the entry gate; XOM entry viability at lowest point since inception
- **FOMC hawkish surprise** — if dot plot signals >2 additional hikes or language more restrictive than priced → yields spike further; 5.25–5.50% range not impossible before year-end
- **Saudi Yanbu depletion timeline** — if Saudi exports halt (~Sep 19–21 without repair) could trigger risk-off global recession panic, overwhelming even the XOM long thesis
- **XOM underperformance streak** — 5+ consecutive sessions of energy stocks lagging crude despite oil at $107+; rate/dollar headwind structural and now worse with 5% yield
- **FOMC overnight binary** — any position entered today bears full FOMC risk; asymmetric downside if hawkish surprise
- **Iran ceasefire headline** — any sudden diplomatic deal = instant Brent drop $5–10; energy longs most exposed
- **VIX rising to ~17.5** — fear gauge moving toward September seasonal median (~19 by early Oct); increasing cost of being wrong
- **PDT**: 0/3 day trades used; any entry must hold overnight (swing trade only)

### Decision
**HOLD — FOMC Day 1; no trades before Sep 16 2PM ET decision.**
- 10Y yield at 5.02% (highest since 2007) makes gate (c) fail by the largest margin since tracking began.
- S&P futures −0.30% (gate d fails).
- FOMC binary event tomorrow — entering today means overnight rate-decision risk with ~80–88% hike probability.
- Oil supply thesis stronger than ever (dual supply shutdown), but market has consistently sold energy stocks on inflation/rate fear, not bought them.
- **Post-FOMC (Sep 17+) remains the first viable XOM entry window** — specifically if: hike is exactly 25bp, dot plot not more hawkish than priced, 10Y yield begins to pull back from 5%, and S&P recovers. If those conditions hold, the Saudi depletion countdown (~Sep 19–21) makes the XOM catalyst uniquely time-sensitive.
- Week of Sep 15: 0/5 trades. Patience intact.

### Midday Addendum (Sep 15 — midday scan)
- **Positions**: 0 | **Orders**: 0 | **Portfolio**: $772.02 cash (100%)
- **S&P 500**: −0.5% midday (fell from −0.30% pre-mkt); chipmaker selloff leading drag; Nasdaq −0.8%
- **10Y yield**: 5.02% (highest since 2007 — unchanged from pre-market; gate c fails by ~20bps)
- **Brent crude**: ~$107.30/bbl (+1.6%); Saudi East-West pipeline still offline; Hormuz still restricted
- **XOM**: ~$165 range (Sep 14 close $165.99); energy stocks likely underperforming crude again (6th session pattern)
- **FOMC**: Day 1 of 2-day meeting; decision tomorrow Sep 16 at 2 PM ET; >90% odds 25bp hike
- **Gate re-eval**:
  - (a) FOMC outcome: TBD — decision tomorrow
  - (b) Brent > $100: ✓ ($107.30)
  - (c) 10Y yield < 4.82%: ✗ (5.02%)
  - (d) S&P flat-to-positive: ✗ (−0.5%)
- **No action taken** — gates (c) and (d) fail; no positions to cut or stops to tighten
- **HOLD confirmed**: Identical to pre-market decision. Market behaving exactly as modeled.
- **Next window**: Post-FOMC Sep 17. If 25bp hike + non-hawkish language + 10Y yield begins pulling back from 5% + S&P recovers → XOM entry case opens. Saudi Yanbu depletion timeline (~Sep 19–21) adds urgency to post-FOMC entry if gates pass.

---

## 2026-09-16 — Pre-market Research (FOMC Decision Day)

### Account
- Equity: $772.02
- Cash: $772.02 (100% cash, no positions)
- Buying power: $772.02
- Daytrade count: 0 (account never traded)
- Max position size: ~$193 (25% of $772.02)
- Open positions: none | Open orders: none
- Week of Sep 15: 0/5 trades used

### Market Context
- **WTI**: ~$104.68/bbl (−1.09%); **Brent**: ~$108.51/bbl open (slight pullback from $107–108 recent range)
  - Saudi East-West pipeline still offline (struck Sep 11; 4–5M bbl/day offline)
  - Saudi Yanbu reserves ~5–7 days as of Sep 14; depletion risk ~Sep 19–21 without repair
  - Strait of Hormuz: <10 transits/day vs. pre-conflict ~125/day; no resolution
  - Oil slightly pulling back today — possible pre-FOMC profit-taking; structural supply floor intact
- **S&P 500 futures**: ~7,666 (+0.12%) — modestly positive after 3 consecutive down sessions; finding footing as oil + yields pull back slightly pre-FOMC
- **VIX**: ~17.2 (up 0.58%); elevated; rising from 2026 lows ~13.8; September seasonality headwind
- **10Y Treasury yield**: ~5.00% (highest since 2007; essentially unchanged from Sep 15's 5.02%) — gate (c) fails by ~18–20bps
- **FOMC Decision TODAY at 2 PM ET (pivotal)**:
  - 93% probability of 25bp hike to 3.75–4.00% — base case locked in
  - Dot plot released simultaneously — CRITICAL: may signal 10-8 majority for further hikes
  - Chair Warsh press conference 2:30 PM ET
  - "Rate hike only half the story; dot plot is the real market mover" — The Street
- **Retail Sales August (8:30 AM ET today)**: July was −0.6% MoM (miss); August official Census data out today; NRSInsights same-store sales down 1.1% in Aug (soft consumer signal)
- **Earnings before open**: No major reports scheduled today
- **Sector momentum**: XLE +47.7% YTD (#1 sector); 3-month momentum +14.0% (median sector −1.9%); XLI, XLP, XLB leading; XLK, XLC, XLY, XLF lagging
- **XOM**: ~$169.32 (−0.55% pre-market); Piper Sandler target raised to $185 (Sep 2); Permian hitting record 1.8M boe/day; LNG sales target raised to 50M tons by 2030

### Trade Ideas
1. **XOM (ExxonMobil) — POST-FOMC Sep 17 CONDITIONAL (highest priority)**
   - Saudi pipeline + Hormuz closure = most severe dual supply shock since conflict; Brent $108+; XLE #1 sector +47.7% YTD; Yanbu depletion ~Sep 19–21 adds urgency
   - Gate (all must pass Sep 17 morning): (a) FOMC hike exactly 25bp, no incremental hawkishness in dot plot (b) 10Y yield stabilizes or falls post-decision ("sell the fact" on rates), (c) Brent > $100, (d) S&P flat-to-positive Sep 17
   - Entry: ~$165–172 (1 whole share — Alpaca fractional share restriction blocks trailing stops); 10% trailing stop GTC; target: +15%; R:R ~1.5:1
   - Catalyst: Dual supply shutdown + XLE sector leadership + post-FOMC rate relief trade + Yanbu depletion timeline urgency
2. **LMT or RTX (Defense) — secondary fallback**
   - Iran war widening to Saudi infrastructure; US military escort operations + Strait crisis = sustained defense spend; XLI in leading sector
   - Activate only if energy thesis invalidated post-FOMC (ceasefire confirmed) or XOM gate (c) fails again
   - Entry: 30-min consolidation Sep 17; stop: −8%; target: +16%; R:R 2:1
3. **Full HOLD today (default)**
   - No trades before or during FOMC (binary event with dot plot risk)
   - Pre-FOMC entry means taking full overnight rate-decision risk

### Risk Factors
- **Dot plot hawkish surprise** — if majority signals >1 additional hike or 2026 terminal rate above 4.25% → yields spike further above 5%; energy underperformance pattern extends; worst-case scenario for XOM entry
- **Retail Sales 8:30 AM ET** — hot print = demand still strong despite oil shock = more inflationary pressure = more hawkish FOMC confirmation; cold print = dovish relief (helps yields)
- **Saudi Yanbu depletion ~Sep 19–21** — if Saudi halts Red Sea exports, next oil leg could be explosive ($115+); may trigger global recession fear and risk-off that overwhelms even energy long thesis
- **XOM underperformance streak** — energy stocks underperformed crude 6 straight sessions (Sep 4, 8, 9, 10, 11, 15); rate/dollar headwind; this pattern must VISIBLY break post-FOMC before entry
- **10Y yield at 5.00%** — ~18bps above gate; needs to pull back below 4.82% for gate to pass; even with "sell the fact" on rates, 20bps of yield decline in one day is aggressive
- **Iran ceasefire headline** — any diplomatic resolution = instant Brent drop $5–10; invalidates energy thesis; Oman talks reportedly still ongoing
- **VIX 17.2 and rising** — September seasonal worst month; median VIX rises to ~19 by early Oct; increasing cost of being wrong
- **PDT**: 0/3 day trades used; any entry must hold overnight (swing trade only)

### Decision
**HOLD — No trades before or during FOMC (2 PM ET today).**
- 10Y yield at 5.00% (gate c fails by ~18bps); S&P futures +0.12% (gate d borderline but FOMC binary risk overhead)
- FOMC at 2 PM ET is a binary event; dot plot is the real risk beyond the near-certain 25bp hike
- **Post-FOMC (Sep 17+) is the entry window**: If 25bp + dot plot non-hawkish (median 2026 rate ≤4.00%) + 10Y begins to pull back from 5% + S&P recovers → XOM gate opens for the first time since inception with the strongest catalyst set (Saudi depletion imminent + Hormuz shut + XLE #1 YTD)
- Watch tonight/post-decision: (1) FOMC statement language — any "ongoing increases" vs. "data-dependent" framing, (2) Dot plot — number of participants signaling >1 hike, (3) 10Y yield reaction post-2 PM, (4) XOM after-hours reaction
- Week of Sep 15: 0/5 trades. Patience intact. Post-FOMC Sep 17 is the most compelling entry window since account inception.

### Midday Addendum (Sep 16 — midday scan)
- **Positions**: 0 | **Orders**: 0 | **Portfolio**: $772.02 cash (100%)
- **FOMC Decision**: 25bp hike to 3.75–4.00% confirmed — EXACTLY as priced (93% probability pre-meeting). No hawkish surprise on the rate itself.
- **Dot plot**: Released with decision; key watch is whether median 2026 rate projection stays at 4.00% (baseline) vs. signaling >1 additional hike. Market reaction post-2 PM ET will be decisive.
- **Brent crude**: ~$108.51 (open); WTI ~$104.68; Saudi East-West pipeline still offline; Hormuz still restricted; structural supply floor intact.
- **XOM**: $164.49 (range $163.15–$168.58); roughly flat vs. Sep 15 close ~$165. Energy sector watching FOMC language closely.
- **10Y yield**: ~5.00–5.02% — gate (c) still fails by ~18–20bps even with hike now "sold." "Sell the fact" yield relief not yet confirmed at midday.
- **S&P 500**: Pre-market +0.12%; FOMC reaction at 2 PM ET will set direction for Sep 17 open.
- **Gate re-eval** (pre-2 PM — FOMC still live):
  - (a) FOMC 25bp non-hawkish: ✓ (hike inline; dot plot TBD post-2 PM)
  - (b) Brent > $100: ✓ ($108.51)
  - (c) 10Y yield < 4.82%: ✗ (5.00–5.02%)
  - (d) S&P flat-to-positive: borderline ✓ (pre-market +0.12%; FOMC reaction pending)
- **No action taken** — FOMC binary still live (dot plot at 2 PM); premature to enter before full reaction
- **HOLD confirmed through close today**: Post-FOMC reaction tonight and Sep 17 pre-market are the decisive signals. If dot plot non-hawkish + 10Y yield begins pulling back from 5% + S&P recovers → XOM Sep 17 morning entry case opens. If dot plot signals additional hikes → yield spike; full HOLD extends.
- **Saudi Yanbu urgency**: Depletion timeline ~Sep 19–21 (3–5 days away) adds urgency to post-FOMC entry if gates pass Sep 17.

---

## 2026-09-17 — Pre-market Research (Post-FOMC Day 1)

### Account
- Equity: $772.02
- Cash: $772.02 (100% cash, no positions)
- Buying power: $772.02
- Daytrade count: 0 (account never traded)
- Max position size: ~$193 (25% of $772.02)
- Open positions: none | Open orders: none
- Week of Sep 15: 0/5 trades used

### Market Context
- **WTI**: ~$102.14/bbl (−0.22%); **Brent**: ~$105.81/bbl (slight pullback from $107–108 recent range)
  - Saudi East-West pipeline still fully offline (struck Sep 11; 4–5M bbl/day bypassed Hormuz)
  - Saudi Aramco pivoting to sell ~20M bbls direct from outside Hormuz to Asian refiners (emergency measure)
  - **Saudi Yanbu depletion IMMINENT**: 5–7 day window from Sep 14 = depletion by Sep 19–21 (2–4 days away); if pipeline not repaired, Saudi Red Sea exports halt
  - Hormuz: still restricted (<10 transits/day); no Iran-Oman ceasefire confirmed
  - Oil slightly lower today — pre-market profit-taking after FOMC; structural supply floor remains
- **S&P 500 futures**: ~7,662 (+0.3–0.6%) — recovering after Sep 16 Dow −600pt selloff; "sell the hike, buy the fact" dynamic; S&P 500 spot ~7,596 (+0.59%)
- **VIX**: ~17.20 (essentially unchanged); 52-week range 13.38–35.30; elevated September seasonality
- **10Y Treasury yield**: ~5.016% — still above 4.82% gate (c) by ~18bps; Warsh hawkish language keeping long-end elevated; NO "sell the fact" yield relief materializing
- **FOMC Outcome (Sep 16 decision — key)**:
  - ✓ 25bp hike to 3.75–4.00% as priced (unanimous vote) — rate itself inline
  - ✗ **Dot plot HAWKISH**: signals ≥1 more hike by year-end; 2026–2027 terminal rate projections shifted higher; Chair Warsh specifically highlighted "persistent inflation risks" at press conference
  - Bottom line: rate inline but language/dot plot MORE hawkish than the "neutral" scenario the XOM gate required; gate (a) FAILS
- **Economic Releases Today**:
  - 8:30 AM ET: Initial Jobless Claims (weekly; prev ~228K; mid-cycle indicator)
  - 8:30 AM ET: New Residential Construction / Building Permits (Aug; housing softness expected)
  - 8:30 AM ET: Philadelphia Fed Manufacturing Survey (Sep; prev −6.2; sub-zero = contraction)
  - NAR Pending Home Sales (lower-impact; housing demand signal)
  - None are CPI/PPI-tier market movers; no binary risk today
- **Earnings before open**: No major reports scheduled Sep 17 (next major = XOM Oct 23)
- **Sector momentum (last 30 days)**:
  - XLE (Energy): #1 sector, +47.7% YTD; 3-month momentum sustained; oil shock driver
  - XLI (Industrials): leading; defense/infrastructure tailwind
  - XLK, XLC, XLY, XLF: lagging; rate-sensitive growth sectors under pressure
- **XOM**: $169.32 (−0.55% pre-market per prior data); "Strong Buy" technical; P/S still reasonable given $105+ Brent; next earnings Oct 23; Permian 1.8M boe/day record

### Trade Ideas

1. **XOM (ExxonMobil) — CONDITIONAL WATCH (not yet actionable)**
   - Catalyst: Saudi Yanbu depletion ~Sep 19–21 (imminent); Hormuz restricted; Brent $105+ structural floor; XLE #1 sector YTD; S&P recovering today
   - Gate status: (a) FOMC non-hawkish ✗ (dot plot hawkish, Warsh inflation language); (b) Brent > $100 ✓; (c) 10Y < 4.82% ✗ (5.016%); (d) S&P flat-to-positive ✓ (futures +0.3–0.6%)
   - **2 of 4 gates failing; no entry today unless intraday catalyst changes (c) and (a) perceptions**
   - Intraday triggers that could open gate: 10Y falls through 5.00% AND energy stocks visibly outperform S&P intraday (breaking the 7-session underperformance streak)
   - Entry (if gates clear): 1 whole share XOM at 30-min consolidation (~$165–172); 10% trailing stop GTC; target: +15% (~$190–198); R:R ~1.5:1
   - Risk: PDT swing trade only (hold overnight); Alpaca trailing stop requires whole shares

2. **RTX (Raytheon Technologies) — Secondary if energy thesis invalidated**
   - Catalyst: US military escort ops in Hormuz; Iran war widening to Saudi infrastructure; bipartisan defense supplemental spending in pipeline
   - Entry: 30-min consolidation Sep 17–18; stop: −8%; target: +16%; R:R 2:1
   - Only activate if XOM gate (c) continues to fail after Sep 19 Yanbu event

3. **HOLD (default) — No trades today**
   - Hawkish dot plot extends the yield headwind; gate (c) failing by ~18bps
   - Energy-equity underperformance streak at 7 consecutive sessions; needs visible pattern break before entry
   - S&P recovery today is encouraging but could reverse intraday
   - Yanbu depletion timeline: watching for confirmation news Sep 19–21; that event may force 10Y/energy divergence and create first real entry window

### Risk Factors
- **Hawkish dot plot**: signals ≥1 additional 2026 hike; kills "sell the fact" yield rally; 10Y may grind higher toward 5.2%; longest possible extension of gate (c) failure
- **Energy stock underperformance streak** (now 7 sessions): rate/dollar headwind still dominating the oil supply shock; XOM needs to VISIBLY outperform crude today to justify a re-entry gate review
- **Yanbu depletion overshoot risk**: If Saudi halts exports Sep 19–21, next oil surge to $115–120 could trigger global recession fears (demand destruction) → energy longs crushed on stagflation narrative shift
- **Philly Fed / Initial Claims at 8:30 AM**: weak data = dovish lean (helps yields); strong data = confirmation of FOMC hawk thesis (more yield pressure)
- **VIX 17.2**: September seasonal headwind; October often spikes; being wrong with a position on has increased cost
- **PDT**: 0/3 day trades; any entry must hold overnight

### Decision
**HOLD — No trades today. Dot plot was hawkish; 10Y at 5.016% (gate c fails). Watch intraday for 10Y < 5.00% + energy outperformance pattern break as conditional trigger. Yanbu depletion ~Sep 19–21 is the primary upcoming catalyst; Sep 19 or post-Yanbu could be first genuine entry window since inception.**
- Week of Sep 15: 0/5 trades. Patience intact.
- Next gate review: Monday Sep 22 (new week) or earlier if Yanbu halts exports (Sep 19–21).

### Midday Addendum (Sep 17 — midday scan)
- **Positions**: 0 | **Orders**: 0 | **Portfolio**: $772.02 cash (100%)
- **🚨 YANBU SUSPENSION CONFIRMED**: Aramco suspended crude loadings at Yanbu terminal — happening NOW, ahead of the Sep 19–21 depletion estimate. "Saudi Oil Crisis Deepens as Aramco Suspends Yanbu Loadings" (Yahoo Finance / OilPrice.com). This is the event we flagged; Saudi Red Sea exports halting.
- **Saudi alternative routes**: Saudi seeking ship-to-ship transfers and emergency routing via Sohar (Oman) — stopgap measures; capacity far below Yanbu's 4–5M bbl/day.
- **Brent crude**: ~$108.75/bbl (+2.9%); **WTI**: ~$105.83/bbl (+4.38%) — highest since May 19. Oil surging on Yanbu halt news.
- **S&P 500**: +0.59% (7,596); post-FOMC "buy the fact" recovery; gate (d) ✓
- **10Y Treasury yield**: ~4.996–5.00% (dropped ~2bps from 5.016%); still above gate (c) threshold of 4.82% by ~17bps; gate (c) ✗ — still fails
- **XOM**: Tracking near Sep 15 close ~$169; energy sector watching Yanbu news closely; MACD turned positive Sep 15 (bullish signal); exact intraday price unavailable
- **Gate re-eval (Sep 17 midday)**:
  - (a) FOMC non-hawkish: ✗ (dot plot hawkish; Warsh "persistent inflation risks" language)
  - (b) Brent > $100: ✓ ($108.75)
  - (c) 10Y yield < 4.82%: ✗ (4.996–5.00% — only 2bps off; but still fails)
  - (d) S&P flat-to-positive: ✓ (+0.59%)
- **No action taken**: 2 of 4 gates fail. No positions to cut, no stops to tighten.
- **HOLD confirmed**: Rate headwind (gate c) is the sole blocker now — yield needs to fall ~17bps more. Yanbu suspension has made the oil supply catalyst MAXIMUM (both transit routes offline). If 10Y falls through 4.82% on any dovish surprise, XOM entry becomes viable immediately.
- **Updated outlook**: Yanbu halt already happening = Saudi oil exports to Europe/Asia severely curtailed. Next leg oil move toward $115–120 is now plausible near-term. Watch if recession fears/stagflation narrative takes hold (would overwhelm energy long thesis). XOM at all-time highs near $169 — entry at current levels carries increased risk of "buy at the top." Re-evaluate entry price and stop levels if 10Y finally cooperates. Week of Sep 15: 0/5 trades.

---

## 2026-09-18 — Pre-market Research

### Account Snapshot
- **Equity:** $772.02 | **Cash:** $772.02 (100%) | **Buying Power:** $772.02
- **Day P&L:** $0.00 | **Phase P&L:** $0.00 (+0.00% vs $772.02 baseline)
- **Positions:** 0 | **Open Orders:** 0 | **Day trades used:** 0/3
- **Week of Sep 15:** 0/5 trades used

### Market Context
- **WTI:** ~$101.21/bbl (−1.9%); **Brent:** ~$102.57/bbl (−2.2%) — sharp pullback from $108.75 yesterday; market pricing in partial offset from Saudi "dark" tanker alternatives and Egyptian corridor routing (not pipeline restoration — Yanbu still suspended)
- **Saudi Yanbu:** Aramco crude loading suspension confirmed Sep 15; East-West pipeline offline since Sep 11 (drone strikes). Saudi crude exports down ~2/3; alternatives via Egypt/Suez + dark tankers partially filling gap but well below 4–5M bbl/day pipeline capacity
- **S&P 500 futures:** +1.94% pre-market (Nasdaq +2.62%, Dow +1.36%, Russell +1.14%) — "cooler crude = lower yields = risk-on" dynamic emerging; stocks rallying as oil retreats and bond yields pull back
- **VIX:** ~15.44 prev close; intraday range 13.80–14.58; markedly lower than yesterday's 17.2 — fear declining
- **10Y Treasury yield:** FALLING today as oil retreats; was 4.996–5.00% on Sep 17; today's oil-driven yield relief is directionally favorable but magnitude uncertain — likely still above 4.82% gate (c) by ~10–18bps intraday
- **Economic calendar:** No major releases today (post-FOMC, post-Claims Friday); clean tape
- **Earnings before open:** No major reports; Progressive (PGR) August earnings possibly scheduled Sep 18 (timing unconfirmed); market-moving impact minimal
- **Sector momentum (30-day):** Energy, Industrials, Materials, Consumer Staples = Leading quadrant; Tech/Comms/Consumer Disc = Lagging; Energy still #1 YTD (+47.7%)

### XOM Specific
- **Price:** ~$161.68–166 (highest since May 2026); up ~8.94% past 4 weeks; +51.44% YoY
- **Venezuela deal:** Exxon reportedly nearing deal to invest in Venezuelan oil fields — new upstream growth catalyst; after-hours reaction on Sep 17 was muted (limited market impact so far)
- **Dividend:** $1.03/share paid Sep 10 (ex-div already passed; not a current catalyst)
- **Next earnings:** Oct 23, 2026

### Trade Ideas

**1. XOM — CONDITIONAL WATCH (closest to actionable since Day 1 — 13 sessions)**
- Catalyst: Yanbu suspension ongoing (Saudi Red Sea exports severely curtailed); Hormuz restricted; Venezuela upstream deal (new); VIX declining to 14–15; S&P +1.94% pre-market; XLE sector #1 YTD
- Gate status:
  - (a) FOMC posture: Hawkish dot plot is baked in; TODAY'S relevant question is whether yield relief from oil pullback shifts market's near-term rate path perception — ambiguous; soft gate
  - (b) Brent > $100: ✓ ($102.57 — margin narrowing; watch $100 floor closely)
  - (c) 10Y < 4.82%: ❓ UNCERTAIN — yesterday 5.00%; today falling but ~18bps of relief needed; likely still 4.84–4.92% intraday; monitor
  - (d) S&P flat-to-positive: ✓ (+1.94% pre-market)
- Oil pullback is AMBIGUOUS for XOM: helps yields (gate c improving), but weakens the day's energy price catalyst; Yanbu structural halt means today's dip is likely temporary, not fundamental reversal
- Entry trigger (intraday — only if gate c confirms): 1 whole share XOM at 30-min consolidation breakout above $165; 10% trailing stop GTC; target: $190 (+15%); R:R ~1.5:1
- PDT: 0/3 day trades; would be swing trade held overnight — eligible

**2. RTX (Raytheon) — Secondary watch only**
- Catalyst: US military Hormuz escort ops expanding; Iran-Saudi conflict risk; defense supplemental spending
- Activate only if XOM gate (c) fails through Sep 22 AND oil falls below $97 (energy thesis invalidated)

**3. HOLD (default)**
- Gate (c) uncertain/likely still failing today (exact 10Y unknown pre-market; need confirmation below 4.82%)
- Today is FRIDAY — buying = 3-day weekend exposure (Saudi/Iran weekend news risk)
- Energy stocks underperformed crude for 7+ consecutive sessions; no confirmed pattern break yet

### Risk Factors
- **Gate (c) magnitude:** 10Y needs ~18bps of same-day relief from 5.00% → 4.82%; large single-day move; today's oil dip helps but likely insufficient
- **Oil floor erosion:** If "dark" tanker gap-fill expands, Brent could slide toward $95–97 → both energy thesis AND Brent > $100 gate threatened
- **Friday entry:** Weekend geopolitical risk cuts both ways (Saudi/Iran escalation vs. ceasefire)
- **XOM at multi-month highs:** ~$161-166 = late entry risk if oil pullback continues
- **VIX declining:** Positive signal today, but October seasonal VIX spike risk looming
- **Financial sector weakness:** BofA/Goldman warning on Q3 investment banking fees drag on broad market

### Decision
**HOLD — Gate (c) remains uncertain and likely still failing today (10Y probably 4.85–4.95%, not confirmed below 4.82%). Today's oil pullback is ambiguous: helps yields but weakens XOM's day catalyst. Friday weekend risk adds further caution. Monitor 10Y INTRADAY — if confirmed below 4.82% AND XOM holds above $163 AND energy sector visibly outperforms S&P 500 → trigger XOM entry with 1 whole share at 30-min consolidation. Otherwise, stay in cash.**
- Week of Sep 15: 0/5 trades. Patience maintained.
- Next review: Mon Sep 22 opens fresh week (0/5 trades); weekend Saudi/Iran/Yanbu headlines may shift the thesis materially.

### Midday Addendum (Sep 18 — midday scan)
- **Positions**: 0 | **Orders**: 0 | **Portfolio**: $772.02 cash (100%)
- **10Y Treasury yield**: 4.951–4.98% intraday (slight relief from yesterday's 5.016%, but gate (c) still FAILS by ~13–16bps; well above 4.82% threshold)
- **Brent crude**: $104.64/bbl (−$3.87 from Sep 17 high; structural Yanbu halt persists but partial Saudi pipeline repair effort underway) — gate (b) ✓
- **S&P 500**: +0.86% (7,656.98) — gate (d) ✓
- **New risk**: Saudi Arabia reportedly working to restore East-West pipeline — if repair confirmed, oil floor weakens; Brent could slide toward $95–97; energy thesis would be partially undermined
- **Gate re-eval (Sep 18 midday)**:
  - (a) FOMC non-hawkish: ✗ (hawkish dot plot baked in; Warsh "persistent inflation risks")
  - (b) Brent > $100: ✓ ($104.64)
  - (c) 10Y yield < 4.82%: ✗ (4.95–4.98% — still ~13–16bps above gate)
  - (d) S&P flat-to-positive: ✓ (+0.86%)
- **No action taken**: 2 of 4 gates fail; no positions to cut, no stops to tighten
- **HOLD confirmed**: Rate headwind (gate c) remains the sole blocker; ~13bps improvement vs Sep 17 is directionally positive but insufficient. Saudi pipeline repair attempt is a new bearish oil risk to monitor over the weekend.
- **Weekend watchlist**: (1) Saudi East-West pipeline repair progress — any restoration timeline = oil bearish; (2) Iran-Oman ceasefire talks; (3) 10Y yield direction; (4) Mon Sep 22 opens fresh week (0/5 trades) — first genuine entry window if 10Y falls below 4.82%
- Week of Sep 15: 0/5 trades. No telegram notification (no action taken).

---

## 2026-09-21 — Pre-market Research

### Account
- **Equity:** $772.02 | **Cash:** $772.02 (100%) | **Buying Power:** $772.02
- **Day P&L:** $0.00 | **Phase P&L:** $0.00 (+0.00% vs $772.02 baseline)
- **Positions:** 0 | **Open Orders:** 0 | **Day trades used:** 0/3
- **Week of Sep 21:** 0/5 trades used

### Market Context
- **WTI:** ~$97.09/bbl (−3.0%); **Brent:** ~$100.50–$103.19/bbl (−2–3%) — oil declining on Trump-Xi summit diplomacy anticipation (Sep 24 Washington DC meeting)
- **Saudi/Hormuz update:** East-West pipeline still offline (no repair confirmed); Hormuz still restricted; Saudi Aramco told European customers no crude next month — supply disruption structural but market pricing in diplomatic resolution premium
- **S&P 500 futures:** +0.7–0.95% pre-market; 81% probability of higher open (Polymarket); ES at ~7,730; Dow +0.8%, Nasdaq +1.1%, Russell +1.1%
- **VIX:** ~14.81–14.95 (significant decline from 17.2 on Sep 15; fear receding sharply)
- **10Y Treasury yield:** ~4.94% (improving from 5.01% Sep 18; still ~12bps above 4.82% gate threshold)
- **Trump-Xi Summit (Sep 24 Washington DC):** Trade, AI, Taiwan, Iran war agenda; stocks and bonds rallying on diplomacy optimism; oil declining as market prices in potential geopolitical de-escalation
- **Earnings before open:** LGCY ($0.61 est), AYTU (−$0.12 est) — small caps, no trading catalyst
- **Earnings after close:** SFIX, CBRL, MLKN — minor, no sector relevance
- **Economic calendar:**
  - 10:30 AM ET: Fed Goolsbee speech (qualitative; potential rate signal)
  - 12:30 PM ET: Chicago Fed National Activity Index (aggregate activity read)
  - No binary macro events today; clean tape
- **Sector momentum (30-day):** XLE still #1 YTD (+47.7%); XLI, XLP, XLB leading; XLK, XLC, XLY, XLF lagging; VIX decline and S&P rally suggest broadening risk-on rotation possible

### XOM Specific
- **Price today:** $161.31–$163.54 (below $165–169 range from last week; declining with oil)
- **Venezuela deal:** Advancing (reported Sep 17; new upstream growth catalyst — limited market impact so far)
- **Saudi Aramco:** No crude to European customers next month
- **Next earnings:** Oct 23, 2026

### Trade Ideas
1. **XOM (ExxonMobil) — CONDITIONAL WATCH (not yet actionable)**
   - Catalyst: Saudi pipeline + Hormuz dual shutdown still structural; XLE #1 YTD; Venezuela deal; oil floor declining today
   - Gate status:
     - (a) FOMC posture: ✗ (hawkish dot plot from Sep 16 still in effect; Warsh "persistent inflation risks")
     - (b) Brent > $97: ✓ ($100.50–103 — narrowing; watch $97 floor)
     - (c) 10Y yield < 4.82%: ✗ (4.94% — ~12bps above gate; improving direction)
     - (d) S&P flat-to-positive: ✓ (+0.7–0.95% pre-market)
   - Trump-Xi summit (Sep 24) creates OIL THESIS UNCERTAINTY — any US-China-Iran discussions = additional Brent downside risk
   - Entry trigger (intraday): 10Y confirms below 4.82% + energy stocks visibly outperform S&P + Brent holds above $97 + XOM holds $160+ → 1 whole share at 30-min consolidation; 10% trailing stop GTC; target: +15% (~$185); R:R ~1.5:1
2. **RTX (Raytheon) — Secondary watch**
   - Catalyst: US-Iran war ongoing; US military Hormuz escort ops; defense supplemental spending; XLI leading sector
   - Activate if: XOM gate (c) continues to fail post-summit AND oil falls below $97 (energy thesis shifts to defense)
   - Entry: 30-min consolidation; stop: −8%; target: +16%; R:R 2:1
3. **HOLD (default)**
   - Gates (a) and (c) fail; oil declining toward $97 threatens gate (b); Trump-Xi summit uncertainty
   - Better entry window: Post-summit (Sep 24+) once geopolitical picture clarifies

### Risk Factors
- **Trump-Xi summit (Sep 24):** If US-China-Iran diplomatic resolution discussed = oil supply bearish; Brent could drop $5–10 fast
- **Oil eroding toward $97 gate:** Brent at $100.50 is 3.6% from threshold; any further decline fails gate (b)
- **Gate (c) fails by 12bps:** 10Y needs to fall from 4.94% to 4.82% — 12bps intraday; possible on Goolsbee dovish tone but not guaranteed
- **Goolsbee speech 10:30 AM ET:** Hawkish = yield spike, gates fail further; dovish = yield relief opportunity
- **XOM declining:** Trading $161–163 (below $165–169 last week); entry point risk if oil floor eroding
- **October VIX seasonality:** VIX at 14.8 approaching lows; seasonal spike to ~19 in Oct still a risk
- **Saudi pipeline repair:** Saudi reportedly seeking alternatives; any confirmed repair timeline = oil bearish
- **PDT:** 0/3 day trades; any entry must hold overnight

### Decision
**HOLD** — Gates (a) and (c) fail. Oil declining on Trump-Xi summit diplomacy optimism creates energy thesis uncertainty heading into Sep 24. Gate (c) improving (4.94% vs 5.01%) but insufficient by ~12bps. VIX at 14.8 and S&P +0.95% are encouraging macro conditions, but entering XOM today means taking on pre-summit oil thesis risk.
- **Intraday trigger:** Goolsbee speech dovish + 10Y confirms below 4.82% + energy stocks outperform S&P intraday → conditional XOM entry; 1 whole share; 10% trailing stop GTC
- **Better window:** Post-Trump-Xi summit (Sep 24+) for geopolitical clarity; or if 10Y breaks below 4.82% with sustained yield relief
- **No urgent action required:** 0 positions to cut; 0 stops to tighten; full cash preservation intact
- Week of Sep 21: 0/5 trades. Patience maintained.

### Midday Addendum (Sep 21 — midday scan)
- **Positions**: 0 | **Orders**: 0 | **Portfolio**: $772.02 cash (100%)
- **Goolsbee speech (10:30 AM ET)**: HAWKISH — "path to 2% unlikely to be painless"; inflation may require faster rate hikes; strong demand adding to inflation; "no ambiguity" how Fed would react if needed. Gate (a) worsens further — hawkish posture more entrenched, not softening
- **WTI**: ~$97.56/bbl (−2.73%); **Brent**: ~$101–105/bbl (range $101.22–$104.82 today) — oil continuing to decline on Trump-Xi summit (Sep 24) geopolitical de-escalation pricing; WTI approaching the $97 threshold
- **10Y Treasury yield**: ~4.94% pre-market; Goolsbee hawkish tone likely keeping yields elevated intraday; gate (c) almost certainly still failing
- **S&P 500**: +0.7–0.95% pre-market positive tone holding; gate (d) ✓
- **Gate re-eval (Sep 21 midday)**:
  - (a) FOMC/Fed posture: ✗ WORSE — Goolsbee explicitly hawkish; faster hikes signal reinforces Sep 16 dot plot
  - (b) Brent > $97: ✓ ($101–105) — margin narrowing; WTI $97.56 approaching threshold; monitor
  - (c) 10Y yield < 4.82%: ✗ (estimated ~4.94%; Goolsbee speech prevents yield relief)
  - (d) S&P flat-to-positive: ✓
- **No action taken** — 3 of 4 gates fail; no positions to cut, no stops to tighten
- **HOLD confirmed**: Goolsbee's hawkish comments were the intraday catalyst; reinforces the Fed's rate path is NOT softening. Oil declining on Trump-Xi summit optimism is a new bearish oil signal — gate (b) at risk if Brent slides toward $97 pre-summit. No entry today.
- **Watch pre-Trump-Xi summit (Sep 24)**: if oil continues declining + 10Y yields stay elevated, both gate (b) and gate (c) may fail simultaneously — would shift watchlist toward RTX/defense. Post-summit (Sep 24+) remains better entry window for geopolitical clarity.

---

## 2026-09-22 — Pre-market Research

### Account
- **Equity:** $772.02 | **Cash:** $772.02 (100%) | **Buying Power:** $772.02
- **Day P&L:** $0.00 | **Phase P&L:** $0.00 (+0.00% vs $772.02 baseline)
- **Positions:** 0 | **Open Orders:** 0 | **Day trades used:** 0/3
- **Week of Sep 22:** 0/5 trades used

### Market Context
- **WTI:** ~$93.18/bbl (declining sharply from $97.56 Sep 21 — Trump signals + summit diplomacy pricing); **Brent:** ~$101.39–101.51/bbl (+1.05% premarket on Iranian airline sanctions, but down from $105 range)
- **S&P 500 futures:** ES ~7,767 (Dow/S&P futures gaining; Nasdaq 100 slipping slightly); net mixed-to-positive
- **VIX:** ~14.87 (below 15; significantly lower than 17.2 on Sep 15; fear receding)
- **10Y Treasury yield:** ~4.97% (Sep 21 close: 4.97%, down from 5.01% on Sep 18; gate (c) still fails by ~15bps)
- **Today's catalysts:**
  - **US Treasury "Economic D-Day" / Iranian Airlines Shutdown (Sep 23 deadline):** Sec. Bessent warned all Iranian airlines shut down globally by Sep 23; secondary sanctions on any airport/fuel supplier/ticketer serving Iranian carriers → exclusion from dollar clearing system. Tightest Iran economic squeeze since conflict began. Slight Brent bid (+1.05% premarket).
  - **Tech/AI surge:** Intel +12%, AMD +10% (AMD market cap crosses $1T) — AI semiconductor demand; Nasdaq near all-time highs; sector rotation toward tech underway
  - **Trump-Xi summit Sep 24 (Washington DC):** Trade truce extension, Iran war, AI, Taiwan on agenda. Oil declining on diplomacy optimism. Market pricing partial de-escalation. China privately urging Tehran to rein in Houthis.
  - **XOM underperformance:** XOM fell ~3.2% to ~$158 in prior session while S&P gained 1.49% — worst energy/market divergence yet; now 8+ consecutive sessions of energy stocks underperforming crude
- **Earnings before open:** AutoZone (AZO), KB Home (KBH) — not relevant to watchlist
- **Economic calendar:**
  - 8:30 AM ET: Philadelphia Fed Non-Manufacturing Survey (minor)
  - 10:00 AM ET: Richmond Fed Manufacturing Activity (minor)
  - This week: 10+ Fed speakers scheduled; NO binary macro events (light data week)
  - No CPI/PPI/NFP/FOMC this week — clean macro tape except Fed speakers
- **Sector momentum (30-day leading):** XLE, XLI, XLB, XLP (stable) | XLK improving today on AI rally | XLC, XLY, XLF lagging
- **Iran/Supply:**  Saudi East-West pipeline still offline; Hormuz restricted; Bessent sanctions tightening Iran oil exports; Yanbu suspended; STRUCTURAL supply disruption ongoing despite oil price dip on summit hopes

### Trade Ideas
1. **XOM (ExxonMobil) — WATCH ONLY (not actionable)**
   - Catalyst: Iranian airline sanctions + Saudi/Hormuz dual shutdown intact; Brent $101 floor; XLE #1 YTD
   - Gate status:
     - (a) Fed posture: ✗ (hawkish dot plot + Goolsbee + Bessent "Economic D-Day" posture; no pivot signal)
     - (b) Brent > $97: ✓ ($101.39 — holding for now; WTI $93.18 approaching gate-threat level)
     - (c) 10Y yield < 4.82%: ✗ (~4.97% — ~15bps above gate; no relief materializing)
     - (d) S&P flat-to-positive: ✓ (futures mixed but Dow/S&P positive)
   - XOM at ~$158 (fell from $169 high last week; energy underperformance streak 8+ sessions); late entry risk
   - **REJECT today** — 2 gates fail; XOM actively declining into tech rotation; Trump-Xi summit 2 days away adds oil uncertainty

2. **RTX (Raytheon Technologies) — Elevated watch (conditional post-summit)**
   - Catalyst: Iran escalation escalating (airline shutdown = tightening pressure on Iranian regime); US military escort operations in Hormuz ongoing; defense supplemental spending; XLI in leading sector; less rate-sensitive than energy names
   - Gate (post-summit trigger, Sep 24+): (a) No ceasefire/major diplomatic de-escalation at summit, (b) US-Iran conflict continues, (c) S&P flat-to-positive, (d) RTX 30-min consolidation above prior close
   - Entry: ~$110–115 at 30-min consolidation; stop: −8%; target: +16%; R:R ~2:1
   - **CONDITIONAL:** Pre-summit (today + Sep 23) = watch only. Post-summit clarity = potential activation

3. **Full HOLD (default)**
   - Trump-Xi summit Sep 24 creates 2-day uncertainty window on oil/geopolitics/Iran
   - Energy stocks underperforming for 8+ sessions — pattern not yet broken
   - 10Y yield ~15bps above gate; no imminent catalyst for 15bp same-day move

### Risk Factors
- **Trump-Xi summit Sep 24:** If trade truce extended + Iran de-escalation discussed = oil bearish; Brent could slide below $97 gate; energy and defense thesis both undermined temporarily
- **WTI approaching $93:** Gate (b) requires Brent > $97; WTI $93 means the spread is narrow; any Iran diplomatic breakthrough = WTI through $90, Brent below $97
- **XOM at multi-week lows (~$158):** Energy stock declining despite $101+ crude = structural rate/rotation headwind; entering at or near lows into a potential summit surprise adds late-entry risk
- **Tech rotation accelerating:** Intel +12%, AMD +10%; capital rotating from energy → tech; XOM could underperform further near-term
- **Fed speakers this week (10+):** Any hawkish surprise from any Fed speaker = yields spike, gate (c) fails further
- **Iranian airline sanctions:** While bullish for oil structurally, could trigger retaliatory Iranian escalation (shipping strikes, Strait closure attempt) = risk-off event that would spike oil but crush equities broadly
- **Gate (c) structural headwind:** 15bps still above 4.82%; FOMC next hike not priced out; terminal rate projections not declining

### Decision
**HOLD** — No trades today or Sep 23. Trump-Xi summit Sep 24 is a 2-day binary event for oil, Iran, and geopolitics — entering any position now means taking full summit surprise risk. XOM is actively declining (−3.2% last session, now ~$158) while tech is surging; energy underperformance streak at 8+ sessions. 10Y still failing gate by 15bps.

**Post-summit (Sep 25+) playbook:**
- **Outcome A (de-escalation):** Summit produces Iran ceasefire framework or Chinese pressure on Tehran → Brent slides below $97, gate (b) fails → PIVOT: RTX/defense becomes primary idea; XOM watchlist deactivated
- **Outcome B (no deal / Iran conflict continues):** Brent holds $97+, US-Iran pressure maintained → XOM gate check resumes; RTX activated as concurrent watch; look for 10Y yield any relief below 4.82%
- Week of Sep 22: 0/5 trades. Patience maintained. No positions at risk. No urgent action required.
 (pre-market research 2026-09-22)

### Midday Addendum (Sep 22 — midday scan)
- **Positions**: 0 | **Orders**: 0 | **Portfolio**: $772.02 cash (100%)
- **Brent crude**: ~$99/bbl (dropped BELOW $100 psychological level from $101.39 pre-market; 4th consecutive declining session driven by diplomatic de-escalation pricing). Gate (b) threshold is $97 — Brent now only $2 above. Trend is bearish.
- **Hormuz transit**: Reached 6-MONTH HIGH — supply restriction easing faster than modeled; Saudi East-West pipeline restoration underway. Both of these directly undercut the "dual supply disruption" thesis that has been the core XOM catalyst.
- **Iran diplomacy accelerating**: Trump said Iran war will "end soon"; Trump open to meeting Iranian president at UNGA; Saudi Arabia asking Beijing to pressure Tehran on Houthis; China privately urging Tehran to rein in Houthis. De-escalation materializing ahead of Sep 24 Trump-Xi summit.
- **S&P 500**: Little changed to slightly positive (most companies advancing); chipmakers up 6th consecutive day; big banks −1.8%. Gate (d) ✓ marginally.
- **10Y Treasury yield**: ~5.0% (Fed officials repeated more rate hikes on table; no yield relief). Gate (c) ✗ — fails by ~18bps.
- **XOM**: ~$162–163 (−0.67%); declining further as oil slides.
- **Gate re-eval (Sep 22 midday)**:
  - (a) Fed posture: ✗ (Fed officials signaling more hikes; hawkish stance unchanged)
  - (b) Brent > $97: ✓ but DETERIORATING ($99 and declining; $97 gate at risk within 1–2 sessions)
  - (c) 10Y yield < 4.82%: ✗ (~5.0%)
  - (d) S&P flat-to-positive: ✓ (marginally)
- **No action taken** — 2 gates fail; no positions to cut; no stops to tighten.
- **⚠️ THESIS PIVOT SIGNAL**: The energy/XOM thesis is materially weaker now vs. pre-market. Hormuz 6-month transit high + Saudi pipeline repair + Trump "war ending soon" = the structural supply disruption underpinning XOM is unwinding in real time. If Brent falls below $97 before or after the Sep 24 summit, gate (b) fails and XOM watchlist should be deactivated.
- **Post-summit (Sep 25+) revised playbook**:
  - **Outcome A (de-escalation confirmed)**: Brent < $97 confirmed → DEACTIVATE XOM; ACTIVATE RTX/defense watch; energy sector rotation to safety/defense underway
  - **Outcome B (no deal, conflict resumes)**: Brent bounces back above $100 + 10Y yields show any relief → XOM conditional entry reverts; oil thesis partially restored
- **HOLD confirmed**: No trades. No notification (no action taken). Week of Sep 22: 0/5 trades.

---

## 2026-09-23 — Pre-market Research

### Account
- **Equity:** $772.02 | **Cash:** $772.02 (100%) | **Buying Power:** $772.02
- **Day P&L:** $0.00 | **Phase P&L:** $0.00 (+0.00% vs $772.02 baseline)
- **Positions:** 0 | **Open Orders:** 0 | **Day trades used:** 0/3
- **Week of Sep 22:** 0/5 trades used

### Market Context
- **WTI:** ~$93–95/bbl (sharply declining from $97.56 Monday; oil down 3–5% over 2 sessions on Iran diplomacy pricing); **Brent:** ~$98/bbl (−1.87% Sep 22; retreating from $101 range; now only ~$1 above the $97 gate threshold)
- **S&P 500 futures:** +0.11% premarket; 62% probability of higher open; mixed: S&P/Dow rising, Nasdaq 100/Russell 2000 declining; Asian stocks higher on chipmaker rally (Nasdaq 100 hit first record since June)
- **VIX:** 14.21 (−4.44% today; lowest level since early September; fear subdued; below prior 14.87 close)
- **10Y Treasury yield:** ~4.96% (Sep 21 close; essentially flat from Sep 18 5.00%; gate (c) still fails by ~14bps above 4.82% threshold)
- **Trump UNGA (Sep 22–23):** Trump addressed UNGA threatening to "annihilate" Iran if negotiations fail; said he thinks a deal will happen after midterm elections. Iranian President Pezeshkian addresses UNGA today (Sep 23) — live market-moving risk. US and Iran officials met on sidelines at UN. Diplomacy accelerating, but no ceasefire confirmed.
- **Trump-Xi Summit (Sep 24 — TOMORROW):** Xi Jinping arriving at Joint Base Andrews today; 2-day summit begins tomorrow. Core agenda: Iran/oil, trade, AI, Taiwan. China using Iranian leverage as bargaining chip vs. US tariffs/tech controls. Low expectations for immediate breakthrough, but oil declining on de-escalation premium. Key binary event for energy thesis.
- **AI/Tech rally:** Chipmakers surging — Nasdaq 100 hit record on Sep 22 (6th consecutive chipmaker rally day); Intel +12%, AMD +10% (AMD crosses $1T market cap). Capital rotating from energy → tech. XLK improving for first time in months.
- **Earnings before open:** CTAS (Cintas) Q1 FY27, GIS (General Mills) Q1 FY27 — not relevant to watchlist
- **Economic calendar:** Light data week — no binary macro events (no CPI/PPI/NFP/FOMC); 10+ Fed speakers scheduled all week; Fed still signaling 16/19 members project ≥1 more 2026 hike; terminal rate projections risen to 4.1% EOY
- **Sector momentum (30-day):** XLE, XLI, XLB, XLP leading | XLK improving (AI rally) | XLC, XLY, XLF lagging | XLRE/XLU neutral

### Trade Ideas
1. **XOM (ExxonMobil) — WATCH ONLY / AT DEACTIVATION THRESHOLD**
   - Brent $98 is $1 above gate (b) threshold ($97) and in a declining trend (4 straight down sessions)
   - Trump-Xi summit TOMORROW is a binary de-escalation risk for oil
   - Gates: (a) ✗ Fed hawkish (16/19 FOMC members project more hikes), (b) ✓ PRECARIOUS ($98, 1% margin), (c) ✗ (~4.96% — 14bps above 4.82%), (d) ✓ (S&P +0.11% futures)
   - **No entry today or Sep 24** — summit binary risk + Brent one session away from gate failure
   - Post-summit trigger (Sep 25+): If Brent holds above $97 AND 10Y begins declining → reassess; If Brent < $97 → DEACTIVATE XOM entirely

2. **RTX (Raytheon) — ELEVATED WATCH (post-summit activation candidate)**
   - US-Iran conflict continuing despite diplomacy; US military Hormuz escort operations ongoing; defense supplemental spending intact; XLI in leading sector; less rate-sensitive than energy
   - Pre-summit (today + Sep 24) = WATCH ONLY; entry gate only activates post-summit on Outcome A (energy thesis deactivated, conflict continues)
   - Post-summit trigger: No ceasefire/major de-escalation + S&P flat-to-positive + RTX 30-min consolidation above prior close
   - Entry: ~$110–115; stop: −8% (~$101–106); target: +16% (~$128–133); R:R ~2:1
   - Catalyst: Iran war / Hormuz crisis ongoing + US defense supplemental + XLI sector leadership

3. **Tech/AI play — WATCH ONLY**
   - Nasdaq 100 at record; AMD +10%, Intel +12%; XLK finally improving
   - XLK has been lagging sector all year — rotation signals mixed; not entering a lagging sector on late breakout without 2 sessions of confirmation
   - Watch: if XLK holds above 50-day MA for 2 consecutive sessions post-summit, semiconductor name (NVDA/AMD) enters watchlist; not today

### Risk Factors
- **Trump-Xi summit tomorrow (Sep 24):** If de-escalation / Iran ceasefire framework announced → Brent drops below $97 → energy thesis fully deactivated; XOM watchlist retired
- **Iranian President UNGA speech today (Sep 23):** Any escalatory language = oil spike + equities pressure; conciliatory = Brent drops further toward $95
- **Brent gate failure risk:** $98 = 1% above $97 gate; one negative session deactivates energy thesis
- **10Y structural headwind:** 4.96% with 16/19 FOMC members projecting more hikes; 14bps improvement needed before gate (c) ever clears; terminal rate rising to 4.1%
- **Tech rotation accelerating:** Capital leaving energy for AI/tech; XOM declining even as sector fundamentals (Hormuz, Saudi) remain disrupted — structural rotation headwind ongoing
- **XOM at 2-week lows (~$158–162):** Each passing session makes the entry-point risk worse; energy underperformance now 9+ consecutive sessions
- **PDT:** 0/3 day trades used; any entry would require overnight hold (swing trade)
- **October VIX seasonality:** VIX at 14.21 (low); historical October spike to ~17–19 possible

### Decision
**HOLD** — No trades today or tomorrow (Sep 24). Trump-Xi summit is a binary event that could deactivate the energy thesis entirely by Thursday open. Brent at $98 is one bad session from gate failure. 10Y at 4.96% continues to block gate (c) with no near-term catalyst for 14bp relief. VIX at 14.21 suggests no urgency to act.

**Post-summit (Sep 25+) decision tree:**
- **Outcome A (de-escalation / ceasefire signal):** Brent confirms < $97 → DEACTIVATE XOM watchlist permanently; ACTIVATE RTX at 30-min consolidation with standard gates
- **Outcome B (stalemate / Iran conflict continues):** Brent holds $97+ + any yield relief → XOM conditional entry reverts with standard 4-gate check; RTX concurrent secondary watch
- **Outcome C (escalation):** New US-Iran strikes / Strait closure → Brent spikes above $100; all gates except (a) and (c) pass; still no entry without yield relief; oil spike + risk-off = energy stocks underperform again (established pattern)

No positions to cut. No stops to tighten. Week of Sep 22: 0/5 trades. Patience maintained.

### Midday Addendum (Sep 23 — midday scan)
- **Positions**: 0 | **Orders**: 0 | **Portfolio**: $772.02 cash (100%)
- **Brent crude**: $101.61 (+2.37%) — bounced from 5-session decline; gate (b) ✓ comfortable today. Driver: US-Iran UNGA talks described as "very productive" by Trump; Iranian President Pezeshkian rejected nuclear restrictions but left diplomatic door open.
- **WTI**: ~$98/bbl — sitting just above the adjacent watch level.
- **⚠️ CRITICAL NEW DEVELOPMENT — Saudi East-West Pipeline Restart Imminent**: Saudi Arabia is preparing to restart East-West pipeline exports "in coming days," which would allow it to bypass the Strait of Hormuz entirely. This is the SINGLE LARGEST THREAT to the energy/XOM thesis since inception — the dual supply disruption (Yanbu + Hormuz) has been the core structural oil catalyst; pipeline restart removes the Yanbu leg.
- **Trump-Xi Summit (Sep 24 — tomorrow)**: Low expectations for Iran breakthrough. China buys 80%+ of Iran's seaborne oil and is unlikely to pressure Tehran. Analysts expect "quiet sanctions talk, not a breakthrough." Oil declined ~2.1–2.2% in summit anticipation; Brent bounced today on UNGA talk optimism.
- **US-Iran UNGA talks**: Described as "very productive" per Trump; further talks planned. De-escalation trajectory accelerating; diplomatic channels now open for first time since conflict began.
- **Gate re-eval (Sep 23 midday)**:
  - (a) Fed posture: ✗ (hawkish; 16/19 FOMC members project more hikes; unchanged)
  - (b) Brent > $97: ✓ ($101.61) — comfortable today but Saudi pipeline restart threatens structural oil floor within days
  - (c) 10Y yield < 4.82%: ✗ (~4.96% estimated; no catalyst for yield relief today)
  - (d) S&P flat-to-positive: ✓ (estimated; chipmaker rally continuing)
- **No action taken** — no positions to cut, no stops to tighten; pre-market HOLD decision confirmed.
- **HOLD confirmed**: No trades today per pre-market plan (summit binary risk + 10Y failing + Saudi pipeline risk). 2 of 4 gates continue to fail.
- **Energy thesis status**: DETERIORATING. Saudi pipeline restart + US-Iran productive UNGA talks = structural supply disruption narrative is unwinding. If pipeline restarts and Brent slides below $97 post-summit, XOM watchlist deactivates and RTX becomes primary idea.
- **Post-summit (Sep 25+) playbook remains unchanged** per pre-market research: Outcome A (de-escalation confirmed) = Deactivate XOM, Activate RTX; Outcome B (stalemate) = XOM conditional; Outcome C (escalation) = still no entry without 10Y relief.
- Week of Sep 22: 0/5 trades. No Telegram notification (no action taken).

---

## 2026-09-24 — Pre-market Research

### Account
- **Equity:** $772.02 | **Cash:** $772.02 (100%) | **Buying Power:** $772.02
- **Day P&L:** $0.00 | **Phase P&L:** $0.00 (+0.00% vs $772.02 baseline)
- **Positions:** 0 | **Open Orders:** 0 | **Day trades used:** 0/3
- **Week of Sep 22:** 0/5 trades used (cap: 5/5)

### Market Context
- **WTI:** ~$88.72–$90.50/bbl (down from $92.71 yesterday; oil sliding on summit de-escalation pricing); **Brent:** ~$97.93–$98.60/bbl (CRITICAL: barely $0.93 above the $97 gate threshold — declining trend)
- **S&P 500 futures:** +0.12% (recovering after 3 consecutive down sessions; Nasdaq 100 was −1.13% yesterday)
- **VIX:** ~15.18 (+0.97 pts / +6.83% on the day; modest uptick on summit uncertainty)
- **10Y Treasury yield:** ~4.79% (⚠️ DOWN ~1bp from yesterday's ~4.96%; if confirmed, THIS IS THE FIRST TIME gate (c) would clear since account inception — needs verification intraday)
- **Trump-Xi Summit (TODAY at White House):** Xi arrived; top Chinese business executives in tow; Agenda: trade/tariffs, AI, Iran war resolution, Taiwan; Iran is the oil wildcard — China buys 80%+ of Iran seaborne exports; Soufan Center: "summit raises hopes for Iran war settlement — imminent possibility"; LOW expectations for breakthrough; outcome unknown at research time
- **Saudi East-West pipeline:** "Restart in coming days" — confirmed imminent; this REMOVES the Yanbu-leg of the dual supply disruption thesis (the #1 structural XOM catalyst risk)
- **US-Iran UNGA talks:** Trump described as "very productive"; further talks planned; diplomatic de-escalation trajectory accelerating
- **Earnings before open:** COST (Costco Q4 FY26), DRI (Darden Restaurants Q1 FY27); ~13 total reports
- **Economic calendar:**
  - 8:30 AM ET: Initial Jobless Claims — labor market health check
  - 10:00 AM ET: New Residential Sales
  - Fed speakers: Williams, Barkin, Hammack, Paulson (hawkish backdrop; 10+ Fed appearances this week; any hawkish signal could reverse the 4.79% yield level)
- **Sector momentum (30-day leading):** XLE, XLI, XLB, XLP still leading | XLK improving (AI rally) | XLC, XLY, XLF lagging

### Gate Status (XOM — as of pre-market)
- **(a) Fed posture non-hawkish:** ✗ — Hawkish; Fed hiked Sep 16; 16/19 FOMC members project ≥1 more hike; Williams/Barkin speaking today
- **(b) Brent > $97:** ✓ PRECARIOUS ($97.93–$98.60, ~$1 above gate; Saudi pipeline restart imminent = severe near-term threat)
- **(c) 10Y yield < 4.82%:** ✓ TENTATIVE (4.79% reported — FIRST time gate potentially clears; must confirm intraday; 4 Fed speakers today could reverse)
- **(d) S&P flat-to-positive:** ✓ (+0.12% futures)

**Gate summary:** 3 of 4 gates potentially pass today (b marginally, c tentatively, d cleanly). Gate (a) still fails. Gate (c) clearing for first time is significant, but Trump-Xi summit binary risk and imminent Saudi pipeline restart make TODAY the WRONG day to act.

### Trade Ideas
1. **XOM (ExxonMobil) — CONDITIONAL WATCH (post-summit, Sep 25+)**
   - 10Y yield at 4.79% = first genuine gate (c) clear; if it holds, the rate headwind may be easing
   - BUT: Summit TODAY is binary; Saudi pipeline restart imminent = gate (b) threatened within 1–2 sessions
   - Gate (a) still failing (hawkish Fed posture + 4 speakers today could spike yields back above 4.82%)
   - **No entry today** — wait for summit outcome; if Brent holds above $97 post-summit AND 4 Fed speakers don't reverse yield to 4.82%+ → Sep 25 pre-market check for XOM
   - Entry (post-summit, if all 4 gates clear): ~$158–163; 10% trailing stop GTC (1 whole share); target: +15% (~$182–188); R:R ~1.5:1
   - Catalyst: Dual supply disruption structural (Hormuz + partial Yanbu) + XLE #1 sector YTD

2. **RTX (Raytheon) — ELEVATED WATCH (summit Outcome A trigger)**
   - US-Iran conflict ongoing; US military Hormuz escort ops; defense supplemental; XLI leading sector
   - Post-summit trigger (Outcome A): Summit produces no ceasefire → conflict continues → RTX activation
   - Entry: ~$110–115; 30-min consolidation; stop: −8% (~$101–106); target: +16% (~$128–133); R:R 2:1
   - Catalyst: Iran war continuation + US defense supplemental + XLI sector leadership
   - Less rate-sensitive than energy — gate (a) less of a blocker for RTX

3. **Full HOLD (default today)**
   - Trump-Xi summit binary event = highest oil/geopolitical uncertainty of the week
   - Saudi pipeline restart within days = gate (b) threatened for XOM
   - 4 Fed speakers today = gate (c) reversal risk

### Risk Factors
- **Trump-Xi summit outcome (TODAY):** De-escalation / Iran ceasefire framework → Brent drops below $97 → XOM watchlist DEACTIVATED; pivot to RTX (Outcome A). No deal → XOM thesis partially restored with new yield tailwind (gate c clearing). Escalation → oil spike + risk-off → energy stocks underperform again (established pattern)
- **Saudi East-West pipeline restart imminent:** Removes Yanbu leg of dual supply disruption; Brent could slide toward $95 even without summit breakthrough — gate (b) at extreme risk within 1–2 sessions
- **4 Fed speakers today (Williams, Barkin, Hammack, Paulson):** Any hawkish comment could spike 10Y back above 4.82% and reverse the tentative gate (c) clear — most important intraday risk
- **Brent $97.93 = 1% from gate failure:** Declining trend (4 sessions); WTI $88–90 confirms broad oil weakness; one negative session deactivates energy thesis
- **XOM 9+ consecutive sessions of underperforming crude:** Rate/rotation headwind structural; even if oil floor holds, equity upside limited near-term
- **Initial Jobless Claims 8:30 AM ET:** Strong print = more rate hike fuel → gate (a) worsens and gate (c) threatened
- **COST/DRI earnings:** COST beat/miss could move consumer discretionary/staples sentiment broadly
- **PDT:** 0/3 day trades used; any entry must be swing trade held overnight

### Decision
**HOLD** — No trades today. Trump-Xi summit is the binary event dominating oil and geopolitics. The 10Y at 4.79% is the FIRST potential gate (c) clear since account inception and is a MAJOR change from yesterday (4.96%), but 4 Fed speakers today create reversal risk. Saudi pipeline restart is imminent and threatens gate (b). Brent at $97.93 is one bad headline from gate failure.

**Post-summit (Sep 25+) playbook:**
- **Outcome A (de-escalation / Iran ceasefire framework):** Brent confirms < $97 → DEACTIVATE XOM; ACTIVATE RTX at 30-min consolidation if: no ceasefire confirmation AND S&P flat-to-positive AND 10Y < 4.82%
- **Outcome B (stalemate / no deal):** Brent holds $97+ → Sep 25 XOM check with all 4 gates; IF 10Y remains below 4.82% AND Brent above $97 → this is the first genuine XOM entry window since inception; execute with 1 whole share, 10% trailing stop GTC
- **Outcome C (escalation):** US-Iran new strikes / Strait closure → oil spike, risk-off; energy stocks underperform (established pattern); still no entry without gates clearing

No positions to cut. No stops to tighten. Week of Sep 22: 0/5 trades. Patience maintained.

### Market-Open Addendum (Sep 24 — 9:30–10:00 AM ET)
- **Positions**: 0 | **Orders**: 0 | **Portfolio**: $772.02 cash (100%)
- **Account confirmed (live)**: Equity $772.02 | Cash $772.02 | Buying Power $772.02 | balance_asof 2026-09-23
- **XOM quote**: Bid $163.80 / Ask $164.59 — liquid; last trade $163.845; day range $162.08–$163.98 (up from $161.28 prior close +1.6%)
- **RTX quote**: Bid $191.61 / Ask $191.88 — liquid; last trade $191.74 (down from $192.245 prior close −0.27%)
- **⚠️ 10Y Treasury yield**: ~5.12% (pre-market research cited 4.79% — stale/incorrect data; live yield is ~30bps ABOVE gate (c) threshold; tentative gate (c) clear INVALIDATED)
- **Brent crude**: ~$102/bbl (+2.4%) — gate (b) ✓ for now; but Saudi East-West pipeline RESTARTED Sep 22 at low capacity (~40% in 2 days; full restart 6–8 weeks) — removes Yanbu leg of dual supply disruption thesis
- **S&P 500**: ~7,699, −0.09% today (futures were −0.6% pre-market); gate (d) ✗
- **Trump-Xi Summit**: Underway at White House (Sep 23–25); no concrete outcomes announced; focus on trade, AI, Iran; no breakthrough yet
- **Gate re-eval (live data)**:
  - (a) Fed posture non-hawkish: ✗ (hawkish; 5.12% 10Y confirms; no pivot)
  - (b) Brent > $97: ✓ ($102) — structurally weakening with Saudi pipeline restart
  - (c) 10Y yield < 4.82%: ✗ (5.12% — fails by ~30bps; pre-market 4.79% was stale)
  - (d) S&P flat-to-positive: ✗ (−0.09%)
- **HOLD confirmed**: 3 of 4 gates fail. Pre-market tentative gate (c) clear was based on stale data.
- **⚠️ Energy thesis update**: Saudi East-West pipeline restarting removes primary structural XOM catalyst. XOM deactivation risk now highest since inception.
- **Post-summit (Sep 25+) revised**: With Saudi pipeline restarting, Outcome A probability elevated. If Brent < $97 post-summit → DEACTIVATE XOM; ACTIVATE RTX. If Brent holds $97+ AND 10Y shows genuine relief → XOM conditional remains.
- No trades placed. No Telegram notification. Week of Sep 22: 0/5 trades.

### Midday Addendum (Sep 24 — midday scan)
- **Positions**: 0 | **Orders**: 0 | **Portfolio**: $772.02 cash (100%)
- **Brent crude**: ~$96.84/bbl (−4.7%) — **BELOW $97 gate (b) threshold**. Driver: Saudi East-West pipeline restarted Sep 22 at partial capacity (~40%; full restart 6–8 weeks). This removes the Yanbu-leg of the dual supply disruption thesis. Gate (b) ✗ FAILS.
- **10Y Treasury yield**: ~5.12–5.13% — near 2026 highs. Gate (c) ✗ fails by ~30bps (needs < 4.82%).
- **S&P 500**: ~7,685–7,699 (−0.09–0.30%); second consecutive down session. Gate (d) ✗ fails.
- **XOM**: ~$164.30 (+1.9% from prior close) — diverging from crude (stock up while crude down); outperforming on record output/LNG story and Joliet refinery outage (minor negative). Relative strength noted but does NOT overcome deactivation trigger.
- **Trump-Xi Summit**: No Iran breakthrough; US-China trade truce extended to Jan 10 (status quo). Xi did not commit to cutting Chinese Iran oil purchases. No near-term crude-bearish catalyst from summit → Iran supply disruption remains structural but oil floor weakened by pipeline restart.
- **⚠️ OUTCOME A CONFIRMED**: Brent $96.84 < $97 → **XOM WATCHLIST DEACTIVATED** per documented playbook (see Sep 22, Sep 23, Sep 24 pre-market entries). The dual supply disruption thesis (Hormuz + Yanbu) has lost its Yanbu leg; energy thesis no longer meets structural entry criteria.
- **RTX activation status**: Post-summit Outcome A trigger activated for watchlist. RTX gates: (a) US-Iran conflict continues (no ceasefire) ✓, (b) S&P flat-to-positive ✗ (negative today), (c) RTX 30-min consolidation — not yet confirmed. RTX entry does NOT trigger today (S&P gate fails). Elevated watch for Sep 25+.
- **Gate re-eval (Sep 24 midday)**:
  - (a) Fed posture: ✗ (hawkish; 5.12% 10Y)
  - (b) Brent > $97: ✗ ($96.84 — DEACTIVATED)
  - (c) 10Y yield < 4.82%: ✗ (~5.12%)
  - (d) S&P flat-to-positive: ✗ (negative)
- **No action taken** — 4 of 4 gates fail; no positions to cut; no stops to tighten.
- **HOLD confirmed**: No trades. No Telegram notification (no action taken).
- **Post-summit (Sep 25+) playbook — UPDATED**:
  - XOM: DEACTIVATED — Brent gate confirmed below $97 midday. Do not re-activate unless Brent sustainably reclaims $100+ on new supply disruption event.
  - RTX: PRIMARY WATCHLIST — activate Sep 25 if: S&P flat-to-positive AND RTX 30-min consolidation above prior close AND US-Iran conflict not ceasefire-resolved AND 10Y < 4.82%.
  - Tech/AI (NVDA/AMD): Secondary watchlist — XLK improving 2+ sessions; Nasdaq 100 at record; watch for 2-session confirmation above 50-day MA before entry.
- Week of Sep 22: 0/5 trades. Week ends 0/0 since inception.

---

## 2026-09-25 — Pre-market Research

### Account
- **Equity:** $772.02 | **Cash:** $772.02 (100%) | **Buying Power:** $772.02
- **Day P&L:** $0.00 | **Phase P&L:** $0.00 (+0.00% vs $772.02 baseline)
- **Positions:** 0 | **Open Orders:** 0 | **Day trades used:** 0/3
- **Week of Sep 25:** 0/5 trades used (new week)
- balance_asof: 2026-09-24 | daytrade_count: 0

### Market Context
- **WTI:** ~$94.76/bbl (Sep 24 close, +2.82%); **Brent:** ~$107/bbl (Sep 24 late session — spiked to $108+ on Houthi missile attacks on Saudi cities, then trimmed on US-Iran deal talks). *Note: Brent was $96.84 at Sep 24 midday; recovered sharply in afternoon session.*
- **S&P 500 futures:** +0.49% (~7,756); stock index futures recovering as crude oil retreat knocks bond yields lower; S&P above 50-DMA (7,629) and 200-DMA (7,196) — positive technical positioning
- **VIX:** 15.67 (Sep 24 close, +3.23% on day); moderate; below September seasonal norm of ~17–19
- **10Y Treasury yield:** ~5.12% (near 2026 highs; down slightly today on oil retreat, but gate (c) requires < 4.82% — fails by ~30bps)
- **Today's catalysts:**
  - **Trump-Xi Summit (ongoing — Sep 23–25):** No Iran breakthrough yet; US-China trade truce extended to Jan 10 (status quo); Xi did not commit to cutting Chinese Iran oil purchases. Summit effectively concluded without major oil-market breakthrough.
  - **US-Iran deal signals:** Reports that US and Iranian negotiators exploring deal to restore Persian Gulf exports; drove Brent from $108 down to $107; this is the first credible US-Iran de-escalation signal beyond diplomacy. **Bearish for oil long-term if confirmed.**
  - **Houthi/Yemen escalation:** Houthi militants fired missiles at Saudi cities — drove Brent spike to $108+ before trimming on deal-talk headlines.
  - **Oil price whipsaw:** Brent $96.84 midday → $108+ spike → ~$107 close; extreme intraday volatility; structural supply disruption thesis mixed.
  - **Yields retreating slightly** on oil pullback from highs; not enough for gate (c) relief.
  - **Tech/AI rally continues:** Nasdaq 100 at record; AI semiconductor demand; XLK improving for 2nd consecutive week; AMD $1T market cap.
- **Earnings before open today:** Light — ~7 reports scheduled; no major named catalyst relevant to watchlist
- **Economic calendar:**
  - Today Sep 25: University of Michigan Consumer Sentiment (minor)
  - **Wed Sep 30: PCE inflation** — next major macro event; Fed's preferred inflation gauge
  - Next week: light data until PCE Sep 30 and ISM/jobs data week of Oct 6
- **Sector momentum (30-day):**
  - **Leading:** XLE, XLI, XLB, XLP (stable)
  - **Improving:** XLK (AI rally, 2+ sessions of leadership); XLF (steeper yield curve + NII tailwind)
  - **Lagging:** XLC, XLY
  - **Neutral:** XLRE, XLU
- **RTX-specific news (Sep 22–25):**
  - $105.6M US Air Force contract modification awarded Sep 22
  - Lyntris qualified hardware for SPY-6 radar family (Raytheon)
  - Pratt & Whitney first GTF Advantage aircraft delivery
  - Bernstein analyst Douglas Harned lowered PT to $223 from $232; maintains Market Perform
  - RTX down ~11% over trailing 30 days ($226 peak Aug → ~$198 mid-Sep); potential support level entry

### Trade Ideas
1. **RTX (Raytheon Technologies) — CONDITIONAL (primary, Outcome A activation)**
   - Per documented Outcome A playbook (energy deactivated; conflict continues): RTX is the primary watchlist name
   - Catalyst: Iran war ongoing despite diplomacy; US military Hormuz escort operations; $105.6M USAF contract; XLI in leading sector; defense supplemental spending; less rate-sensitive than energy
   - Gate check (pre-market):
     - (a) US-Iran conflict not ceasefire-resolved: ✓ (deal talks, but no ceasefire confirmed)
     - (b) S&P flat-to-positive: ✓ (+0.49% futures)
     - (c) 10Y yield < 4.82%: ✗ (~5.12% — fails by ~30bps)
     - (d) RTX 30-min consolidation above prior close: TBD at open (~$191–192 from Sep 24)
   - **CONDITIONAL entry today**: gate (c) fails at pre-market; ONLY enter if 10Y shows meaningful intraday relief toward 4.82% AND RTX establishes 30-min consolidation above prior close. RTX at ~$198 with $105.6M fresh USAF contract and SPY-6 qualification is constructive; Bernstein cut PT but Market Perform (not downgrade). Stop: −8% (~$182); target: +16% (~$230); R:R ~2:1. Size: 1 share (~$198, under $193 max — need to verify exact price at open; may need to reduce or use notional).
   - **REJECT today if:** 10Y remains ≥5.00% + no intraday yield relief → full HOLD

2. **Tech/AI (NVDA/AMD) — SECONDARY WATCH (not actionable yet)**
   - XLK improving 2 consecutive sessions; Nasdaq 100 at record; AMD $1T market cap; AI capex demand intact
   - Need 1 more session confirmation above 50-DMA + XLK maintaining lead sector status before activation
   - Watch Sep 28+ if XLK continues; entry ~NVDA or AMD at 30-min consolidation on a clean macro day

3. **XOM/Energy — DEACTIVATED**
   - Brent confirmed <$97 at Sep 24 midday ($96.84); XOM watchlist retired per documented Outcome A trigger
   - *Caveat: Brent recovered to ~$107 late Sep 24 on Houthi attacks + US-Iran deal talks; however, deal signals are structurally bearish for oil. Do not re-activate XOM on a one-session spike driven by headlines that simultaneously signal Iran supply restoration.*
   - Re-activation threshold: Brent sustainably reclaims $100+ on new structural supply disruption event (not a one-day headline bounce) AND 10Y yield relief

### Risk Factors
- **10Y yield ~5.12%:** Structural headwind for all rate-sensitive names; gate (c) fails by ~30bps; no catalyst for 30bp same-day relief; PCE Sep 30 is next potential yield catalyst
- **US-Iran deal signals:** If US-Iran export deal confirmed → Brent could crater below $90; energy thesis fully dead; RTX could face "peace premium" unwind risk too (defense spending narrative weakens on ceasefire)
- **Houthi missile strikes on Saudi:** Escalatory event but "sell the news" risk — Brent spiked $4 then retraced; market learning to fade oil spike headlines
- **Oil price whipsaw:** $96 → $108 → $107 in one session = extreme volatility; avoid any energy exposure
- **RTX trailing 30-day decline (−11%):** Entering a declining trend requires confirmed 30-min consolidation, not just a bounce; Bernstein PT cut is a caution signal
- **Trump-Xi summit concluding today (Sep 25):** Summit wrap-up comments could move oil/defense names; no-breakthrough is base case; any positive Iran language = risk-off for RTX
- **Week of Sep 25 = Week 5 since inception (0 trades all month):** Strategy says patience > activity, but also 75–85% deployed; we remain 0% deployed at Day 17+ — legitimate to look for quality entry if gates clear
- **UMich Consumer Sentiment today:** Minor event; weak print could pressure consumer discretionary but minimal watchlist impact
- **PDT:** 0/3 day trades used; any entry must be swing trade held overnight

### Decision
**HOLD** — Default. 10Y yield at ~5.12% fails gate (c) by ~30bps, which blocks RTX activation per the documented Sep 24 playbook gate. S&P futures are positive (+0.49%) and US-Iran conflict continues without ceasefire, so 3 of 4 RTX gates pass — but yield is the binding constraint. Today is also the summit wrap-up session (Sep 23–25), meaning final communiqués could still surprise on Iran.

**CONDITIONAL upgrade to RTX entry (Sep 25 intraday only):**
- If 10Y pulls back toward 4.90% or below (yield relief driven by oil retreat or weak UMich) AND RTX establishes 30-min consolidation above prior close (~$191–192) → 1 whole share RTX, 10% trailing stop GTC, hold as swing trade.
- If 10Y holds ≥5.00%: FULL HOLD through PCE (Sep 30).

**Sector pivot complete:** Energy thesis deactivated; RTX/defense is primary; Tech/AI is secondary (1 more session confirmation needed).

Week of Sep 25: 0/5 trades. 28th consecutive session without a trade.
