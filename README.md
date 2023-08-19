![Tact.kit][social.preview]

# 🎁 Tact.kit

Tact UI kit.

## Quick Start

Requirements:

- [Docker Desktop][Docker].
- Access tokens for
  - [Chromatic][] (optional)
  - [Font Awesome][]
  - [GitHub][] (optional)
  - [Graphite][] (optional)
  - [Sentry][] (optional)
  - [Vercel][] (optional)

[Chromatic]:      https://www.chromatic.com/
[Docker]:         https://www.docker.com/products/docker-desktop/
[Font Awesome]:   https://fontawesome.com/
[GitHub]:         https://cli.github.com/
[Graphite]:       https://graphite.dev/
[Sentry]:         https://sentry.io/welcome/
[Vercel]:         https://vercel.com/

```bash
$ alias run=./Taskfile
$ run setup
$ run wait-for-it -q -w localhost:3000 -- open http://localhost:3000/ &
$ run storybook serve # or `run storybook dev`
```

## Manage secrets

You can update tokens by the following commands

```bash
$ run set_chromatic_token
$ run set_fontawesome_token
$ run set_github_token
$ run set_graphite_token
$ run set_sentry_token
$ run set_vercel_token
```

## Tools

### Update

```bash
$ run refresh
```

### Installation

```bash
$ run tools install
```

### Chromatic CLI
**Useful:** [docs][Chromatic CLI], [src](https://github.com/chromaui/chromatic-cli).

```bash
$ run chromatic --exit-zero-on-changes
```

### GitHub CLI
**Useful:** [docs][GitHub CLI], [src](https://github.com/cli/cli).

```bash
$ run gh help
$ run @workflows
```

### Graphite CLI
**Useful:** [docs][Graphite CLI], [src](https://github.com/withgraphite/graphite-cli).

```bash
$ run gt --help
```

### Sentry CLI
**Useful:** [docs][Sentry CLI], [src](https://github.com/getsentry/sentry-cli).

```bash
$ run sentry --help
```

### Vercel CLI
**Useful:** [docs][Vercel CLI], [src](https://github.com/vercel/vercel).

```bash
$ run vercel help
$ run @deployments clean
```

You can avoid using the token parameter when working with these commands,
it's substituted automatically under the hood.

[Chromatic CLI]:    https://www.chromatic.com/docs/cli
[Docker CLI]:       https://docs.docker.com/engine/reference/commandline/cli/
[GitHub CLI]:       https://cli.github.com/
[Graphite CLI]:     https://graphite.dev/docs/graphite-cli
[Sentry CLI]:       https://docs.sentry.io/product/cli/
[Vercel CLI]:       https://vercel.com/docs/cli

## License

GNU Affero General Public License v3.0 or later.
See [LICENSE](LICENSE) to see the full text.

We use [CLA assistant][] to sign copyright agreements while contributing.
See [CLA][] to see the full text.

[CLA]:                https://gist.github.com/kamilsk/44221b6834a6cdc273b5e3411224f8be
[CLA assistant]:      https://cla-assistant.io/tact-app/kit
[CLA assistant.src]:  https://github.com/cla-assistant/cla-assistant

<p align="right">made with ❤️ for everyone by OctoLab</p>

[social.preview]: https://cdn.octolab.org/tact/interface.png
