# ai-home-lab
> run common AI apps using docker

## Supported programs
| Program                                                            | Usage                                        | Status |
| :----------------------------------------------------------------- | :------------------------------------------: | :----: |
| [n8n](https://docs.n8n.io/hosting/installation/docker)             | AI workflow automation tool                  | ✅ |
| [open-webui](https://github.com/open-webui/open-webui)             | web interface for interacting with AI models | ✅ |

## Why?
For this effort, I decided to use `docker` and `docker compose` instead of `kubernetes` or `k3s` as I don't think there is a need to scale beyond a single-node server to run the supported AI apps today. Keep it simple for now.

## Requirements
- [Docker](https://www.docker.com)

> **Note:** take a look at my [cloudflare-tunnel-lab](https://github.com/tjmaynes/cloudflare-tunnel-lab) project to access this AI lab remotely.

## Usage
To start the AI apps, run the following command:
```bash
make start
```

To stop the AI apps, run the following command:
```bash
make stop
```
