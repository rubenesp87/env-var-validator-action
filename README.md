# Environment variable validator

Check that an environment variable file not contains empty values

## Inputs
### `filepath`

**Required** Path to a env var file.

## Example usage

```yaml
uses: rubenesp87/env-var-validator-action@0.1.0
with:
  filepath: '.env'
```

```yaml
uses: rubenesp87/env-var-validator-action@0.1.0
with:
  filepath: 'packages/.env.app'
```
