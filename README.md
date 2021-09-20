# Figmagic GitHub action

Use [Figmagic](https://github.com/mikaelvesavuori/figmagic) to retrieve tokens, graphics, and/or React components from a Figma document.

## Setup and usage

You need to set two secrets: `FIGMA_URL` and `FIGMA_TOKEN`. Read more in the [Figmagic documentation](https://github.com/mikaelvesavuori/figmagic#running-figmagic) about how to get them. Refer to [GitHub's documentation](https://docs.github.com/en/actions/reference/encrypted-secrets) for how to set them.

Figmagic will pick up desired configuration from your `figmagic.json` file, but if this file does not exist Figmagic will create ("init") a base configuration file to use.

## Required input and output arguments

### `figma-url`

Figma document URL (full path) or document ID.

### `figma-token`

Personal Figma API token.

## Optional input and output arguments

No optional inputs/outputs are provided.

## Secrets the action uses

This Action uses two secrets: `FIGMA_URL` and `FIGMA_TOKEN`, as described above.

## Environment variables the action uses

None.

## An example of how to use this action in a workflow

```yml
on: [push]

jobs:
  figmagic:
    runs-on: ubuntu-latest
    name: Use Figmagic
    steps:
      - uses: actions/checkout@v2
      - id: figmagic
        uses: mikaelvesavuori/figmagic-action@v1.0.0
        with:
          figma-url: ${{ secrets.FIGMA_URL }}
          figma-token: ${{ secrets.FIGMA_TOKEN }}
```
