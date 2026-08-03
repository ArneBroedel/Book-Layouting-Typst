# Release-package fixtures

Inputs for `toolset/boundaries` unit tests and `bookkit boundaries check-release`.

| File | Expected |
|---|---|
| `pass_print_minimal.yaml` | OK |
| `pass_both_channels.yaml` | OK |
| `fail_bad_revision.yaml` | FAIL (content_revision) |
| `fail_scope_channel_mismatch.yaml` | FAIL (scope vs channels) |
| `fail_missing_chapter_id.yaml` | FAIL (chapter_id empty) |
