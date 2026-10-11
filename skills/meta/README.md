# Meta

Skills that set up, route, and grow the playbook rather than doing GTM work themselves.

## User-invoked

Reachable only when you type them (`disable-model-invocation: true`).

- **[setup-gtm](./setup-gtm/SKILL.md)**: Create or update your Profile with your product, Product stage, and Sales motion, plus an empty section for every skill that fills one in later. Run once per Workspace.

## Model-invoked

Reached by the model when another skill calls them, never from the `/` menu (`user-invocable: false`).

- **[interview](./interview/SKILL.md)**: The round-based Interview every workflow skill runs with you before writing its Profile section, Campaign definition, or Artifact.
