# Env
export PYTHONDONTWRITEBYTECODE=1

# Func
.PHONY: docs

help:
	@echo "\033[32minit\033[0m"
	@echo "    Init environment for face-mask."
	@echo "\033[32mclean\033[0m"
	@echo "    Remove python and build artifacts."
	@echo "\033[32mclean-pyc\033[0m"
	@echo "    Remove python artifacts."
	@echo "\033[32mclean-build\033[0m"
	@echo "    Remove build artifacts."
	@echo "\033[32mpublish\033[0m"
	@echo "    Publish to pypi."

init:
	pip install -r requirements.txt

clean: clean-pyc clean-build clean-test

clean-pyc:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*.log' -exec rm -f {} +
	find . -name '*~' -exec rm -f  {} +
	find . -name '__pycache__' -exec rm -rf {} +

clean-build:
	rm -rf build dist *.egg-info .eggs

clean-test:
	find . -name '.pytest_cache' -exec rm -rf {} +
	find . -name '.log' -exec rm -rf {} +

publish: clean
	python setup.py bdist_wheel
	python setup.py sdist
	twine check dist/*
	twine upload dist/*
	make clean
