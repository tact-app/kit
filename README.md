# 🖥️ Tact.kit

Tact UI kit.

## Quick Start

Requirements:

- [Docker Desktop][Docker].
- Access tokens for
  - [Font Awesome][]
  - [Vercel][] (optional)

[Docker]:         https://www.docker.com/products/docker-desktop/
[Font Awesome]:   https://fontawesome.com/
[Vercel]:         https://vercel.com/

```bash
$ alias run='./Taskfile'
$ alias activate='source bin/activate'
$ activate && run setup
```

## Manage secrets

You can update tokens by the following commands

```bash
$ run set_fontawesome_token
$ run set_vercel_token
```

## Tools

### Update

```bash
$ run refresh
```

## License

GNU Affero General Public License v3.0 or later.
See [LICENSE](LICENSE) to see the full text.

We use [CLA assistant][] to sign copyright agreements while contributing.
See [CLA][] to see the full text.

[CLA]:                https://gist.github.com/kamilsk/44221b6834a6cdc273b5e3411224f8be
[CLA assistant]:      https://cla-assistant.io/tact-app/kit
[CLA assistant.src]:  https://github.com/cla-assistant/cla-assistant

<p align="right">made with ❤️ for everyone</p>
