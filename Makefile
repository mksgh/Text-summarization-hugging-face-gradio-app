install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	pylint --disable=R,C *.py

format:
	black *.py

test:
	python -m pytest -vv --cov=hello test_hello.py

all: install lint format 