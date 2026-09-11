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
