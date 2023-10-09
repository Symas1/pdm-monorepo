# Example monorepo with [PDM](https://pdm.fming.dev/latest/)

## Steps to set-up
1. Install [PDM](https://pdm.fming.dev/latest/#recommended-installation-method)
2. Create new virtual environment (e.g., using [pyenv](https://github.com/pyenv/pyenv))
3. ```bash
   pdm use ~/path/to/python/interpreter 
   # e.g., ~/.pyenv/versions/3.11.6/envs/pdm-monorepo/bin/python
   ```
4. Install the dependencies
   ```bash
   make install
   ```
5. Build and run docker image 
   to verify that monorepo set up is correct
   ```bash
   make build run
   ```