## Repo rules

This repo is the `gtm-playbook` Claude Code plugin and its own single-plugin marketplace (`obaiddev`). This file lives in `.claude/` rather than the repo root because a root `CLAUDE.md` fails `claude plugin validate --strict`.

### Skills

Skills live in bucket folders under `skills/`: `positioning/`, `demand/`, `principles/`, `meta/`. One folder per skill, holding its `SKILL.md`.

Every skill in a bucket is **promoted**: it appears in all three of its bucket `README.md`, the top-level `README.md`, and the `skills` array of `.claude-plugin/plugin.json`. Each bucket `README.md` lists its skills with a one-line description, linked to the `SKILL.md`, grouped into **User-invoked** and **Model-invoked**.

Workflow and meta skills are user-invoked (`disable-model-invocation: true`, with a human-facing `description`). Principle skills are model-invoked, with a `description` whose trigger phrasing names the trap they guard against.

`ask-gtm` is the router. Whenever a skill is added, renamed, or removed, re-read `ask-gtm`'s `SKILL.md` and re-sync it in the same change, so it never routes to a skill that does not exist or misses one that does.

Skills use the vocabulary in `CONTEXT.md` (Profile, Artifact, Campaign, ICP, Lead stage, and so on) and avoid the synonyms it lists. The `gtm/` state folder contract, including the Profile format and section owners, is defined in `skills/meta/setup-gtm/STATE.md`; a skill that adds or changes an owned Profile section updates that file too.

Every `SKILL.md` ends with a one-line credit: the creator and Source title for a skill distilled from a Source, or the creator and work for a skill built on someone else's pattern (such as the interview loop, credited to Matt Pocock's grilling skill). Link that credit to the original so a Founder can find it.

Skills are self-contained: never assume another plugin (such as `mattpocock-skills`) is installed, and never tell the agent to call a skill outside this plugin. When a skill needs another skill's pattern, copy its text verbatim into the skill (quoted, not paraphrased), and add a `NOTICE.md` beside the `SKILL.md` carrying the original's link and license notice. The credit line is attribution, not a dependency. This applies to the interview loop in every workflow skill: copy it from `skills/meta/setup-gtm/SKILL.md`, step 2. Sources stay in the gitignored `sources/` folder and are never committed or quoted verbatim; skills paraphrase and drop all promotional content (ADR-0001).

No em-dashes in this repo's prose. Rewrite the sentence with a comma, colon, period, or parentheses instead.

### Validation and evals

Run `claude plugin validate . --strict` after touching either manifest or adding a skill. It must pass.

Behaviour is tested with `claude plugin eval` cases in `evals/`: each runs a skill against a Workspace and asserts on the `gtm/` state it leaves behind, not on wording. See `evals/README.md` for how to run them.

## Agent skills

### Issue tracker

Issues are tracked in GitHub Issues on ObaidDev/gtm-playbook via the `gh` CLI. See `docs/agents/issue-tracker.md`.

### Triage labels

Default vocabulary: needs-triage, needs-info, ready-for-agent, ready-for-human, wontfix. See `docs/agents/triage-labels.md`.

### Domain docs

Single-context: one `CONTEXT.md` + `docs/adr/` at the repo root. See `docs/agents/domain.md`.
