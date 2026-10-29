# Meta

Skills that set up, route, and grow the playbook rather than doing GTM work themselves.

## User-invoked

Reachable only when you type them (`disable-model-invocation: true`).

- **[setup-gtm](./setup-gtm/SKILL.md)**: Create or update your Profile with your product, Product stage, and Sales motion, plus an empty section for every skill that fills one in later. Run once per Workspace.
- **[gtm-retro](./gtm-retro/SKILL.md)**: Judge a live Campaign on its judge-by date against its Target signal, from the signal you counted and the Customer conversations it brought in, and record its Verdict (kept, killed, or scaled), naming the positioning skill to revise when its evidence points at your ICP or Value proposition. Run once per Campaign.

## Model-invoked

Reached by the model when another skill calls them, never from the `/` menu (`user-invocable: false`).

- **[interview](./interview/SKILL.md)**: The round-based Interview every workflow skill runs with you before writing its Profile section, Campaign definition, or Artifact.
- **[research](./research/SKILL.md)**: Researches a question about your market against primary sources and saves the findings in your Workspace, such as the Proven posts `social-post` adapts and the Proven lead magnets `lead-magnet` builds on.
