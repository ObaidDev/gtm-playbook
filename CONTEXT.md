# GTM Playbook

A Claude Code plugin of go-to-market skills distilled from material the author has learned from. Skills keep a founder's GTM work stateful: they read and refine shared files in the founder's workspace instead of giving generic advice.

## Language

### The plugin

**Source**:
A raw piece of learning material (a video transcript, article, or book note) that skills are distilled from. Kept local, never published.
_Avoid_: reference, input, corpus item

**Founder**:
The person running the skills on their own product. One founder workspace holds one product.
_Avoid_: user, client, customer (customer means the founder's buyer)

**Workspace**:
The folder where a founder runs the skills and where all GTM state for one product lives.
_Avoid_: project, repo

### GTM state

**Profile**:
The living description of one product's go-to-market position, created by the first skill and read by every downstream skill.
_Avoid_: brief, context, config

**Interview**:
The round-based questioning a workflow skill runs with the Founder before writing its Profile section, Campaign definition, or Artifact.
_Avoid_: grilling, Q&A, questionnaire

**Open question**:
A decision in a skill's **Interview** that the Founder left unsettled, recorded at the end of the Profile section, Campaign definition, or Artifact it belongs to. A field still waiting on one holds the recommended draft, marked `(unconfirmed)`.
_Avoid_: unknown, TODO, gap

**Artifact**:
A concrete GTM deliverable a skill writes into the workspace, such as a post draft, lead-magnet outline, or outbound email. Every demand Artifact belongs to exactly one **Campaign**.
_Avoid_: output, asset, deliverable

**Campaign**:
One hypothesis about the ICP, tested with exactly one **Lead magnet** and the Artifacts that promote it, ending in a **Verdict**. Moves through planned, live, and judged.
_Avoid_: initiative, funnel, launch

**Target signal**:
The measurable result a Campaign commits to when planned, with a judge-by date (for example, 20 Lead magnet downloads and 3 Customer conversations by a given day).
_Avoid_: goal, KPI, success metric

**Verdict**:
The judgment closing a Campaign: kept (keep running), killed (hypothesis false), or scaled (promote with paid).
_Avoid_: result, outcome, status

**Experiment log**:
The running record of trials inside Campaigns (a post, a paid boost, an outbound batch), each with its signal.
_Avoid_: journal, results, tracker

**Customer conversation**:
A recorded exchange with a prospect or customer: whether the problem was confirmed, objections raised, and their words. Evidence for revising the **Profile**; may link to the **Campaign** it came from.
_Avoid_: call, interview, discovery call

**Product stage**:
How far along the founder's product is (pre-product, beta, revenue). Lives in the **Profile**.
_Avoid_: stage (alone), phase, maturity

### GTM concepts

**ICP**:
The ideal customer profile: who has the urgent and important problem the product solves, and which social platform they spend time on.
_Avoid_: persona, target audience, avatar

**Value proposition**:
A one-sentence claim of how the product is ten times better than the alternatives at solving the ICP's problem.
_Avoid_: tagline, pitch, USP

**Lead magnet**:
An educational piece (checklist or guide with a distinct point of view) that solves one specific problem of the ICP, which a prospect trades their contact details for.
_Avoid_: freebie, opt-in, gated content

**Lead stage**:
The qualifier a prospect answers on the landing page, used to tell an ICP lead from a non-ICP lead. Defined in the ICP.
_Avoid_: stage (alone), lead score

**Warm outbound**:
Outreach to a prospect who has already taken a lead magnet, opening from the problem that action reveals.
_Avoid_: cold outbound, follow-up, nurture

**Demand acquisition**:
Getting the ICP to come to the founder through organic social content and lead magnets, instead of emailing shared lead lists.
_Avoid_: inbound marketing, demand gen

**Find Out ASAP**:
Putting an imperfect product in front of the ICP early to learn whether the problem, ICP, and value proposition are real, instead of building in stealth.
_Avoid_: build in public, MVP launch

**Outcome pricing**:
A platform fee with included usage plus usage overage, replacing per-seat pricing.
_Avoid_: usage-based pricing (alone), seat pricing
