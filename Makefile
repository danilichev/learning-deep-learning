.PHONY: setup
init:
	pyenv local
	python -m venv .venv
	cd .venv/bin && source activate
	.venv/bin/pip install -U pip setuptools ipykernel
	.venv/bin/pip install poetry
	.venv/bin/poetry env use `pyenv which python`
	.venv/bin/poetry install
	