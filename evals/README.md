# Evals

Behaviour tests for the skills, run with `claude plugin eval`. Each case runs a skill in a fresh, empty Workspace (seeded by the case's `scaffold_script` when it has one) and grades the `gtm/` state left behind. Graders assert on state, never on the wording of a reply.

| Case | What it checks |
|---|---|
| `setup-gtm-empty-workspace` | `setup-gtm` creates the Profile with the product, the Product stage, and an empty dated section per owning skill |
| `setup-gtm-rerun` | Re-running `setup-gtm` updates the Product section, keeps every other section and its date, and adds missing sections |
| `setup-gtm-not-model-invoked` | Asking for setup in plain words never fires `setup-gtm` (only meaningful in the plugin arm; the no-plugin arm passes trivially) |
| `define-icp-no-profile` | `define-icp` with no Profile names `setup-gtm` and writes nothing |
| `define-icp-owns-only-icp` | `define-icp` fills the ICP section with its platform and moves its date, leaving every other section and its date unchanged |
| `value-prop-no-icp` | `value-prop` with the ICP still a placeholder names `define-icp` and writes nothing |
| `value-prop-owns-only-value-prop` | `value-prop` fills the Value proposition section with its alternatives and measure, and moves its date, leaving every other section and its date unchanged |
| `outcome-positioning-no-value-prop` | `outcome-positioning` with the Value proposition still a placeholder names `value-prop` and writes nothing |
| `outcome-positioning-owns-only-outcome-positioning` | `outcome-positioning` fills the Outcome positioning section with its outcome, the work to show, its context and harness, and its integrations, and moves its date, leaving every other section and its date unchanged |
| `outcome-positioning-rejects-productivity` | `outcome-positioning` given a time-saved framing writes a growth or risk reduction outcome, not productivity |

## Running

From the repo root:

```sh
claude plugin eval . --scaffold --allow-tools Write Edit --ablation none
```

- `--scaffold` runs the case fixtures (`*.sh` beside each `case.yaml`). They only write into the run's temporary Workspace.
- `--allow-tools Write Edit` lets skills write the `gtm/` state.
- `--ablation none` skips the no-plugin baseline arm. Drop it to also see how a run without the plugin scores.
- Add `--case <name>` to run one case, and `--runs <n>` to change the number of runs per case (each case sets 1).

Results go to `evals/results/`, which is gitignored.
