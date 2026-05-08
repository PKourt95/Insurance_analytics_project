## dbt model layers

This folder is organized into three layers:

- `staging/`: 1:1 cleaned copies of raw source tables (rename, type-cast, basic dedupe).
- `intermediate/`: reusable transformation steps that combine multiple staging models.
- `marts/`: final business-facing models (facts/dimensions or reporting tables).

