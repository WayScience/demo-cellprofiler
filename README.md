# CellProfiler Demonstrations

Demonstrating various CellProfiler development or implementations.

## Development

Perform the following steps to setup a Python development environment.

1. [Install Python](https://www.python.org/downloads/) (we recommend using [`pyenv`](https://github.com/pyenv/pyenv) or similar)
1. [Install uv](https://docs.astral.sh/uv/)
1. Install the environment: `uv sync`

### Running Tasks

We use Poe the Poet for processing various tasks within this repo.
Poe the Poet is included as an environment dependency and may be used as follows:

```bash
# show existing tasks
uv run poe

# run a specific task
uv run poe <task name>
```
