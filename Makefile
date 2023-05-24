setup:
	python3 -m venv ~/.azure_devops
	#source ~/.azure_devops/bin/activate

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv test_hello.py


lint:
	pylint --disable=R,C hello.py

all: install lint test
