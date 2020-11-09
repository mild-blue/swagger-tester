CONDA_ENV=swagger-tester

conda-create:
	conda env create -f conda.yml --name $(CONDA_ENV)

# updates environment when some changes were applied to the file
conda-update:
	conda env update --file conda.yml --prune --name $(CONDA_ENV)


#(install dependency python manager, install dependencies, add pre-commit hook that cleans up notebooks upon a commit)
# creates environment from the file
setup:
	pip install pip-tools
	pip-sync
	pre-commit install
