install:
	poetry install

dev:
	poetry run flask --app page_analyzer:app run

debug:
	poetry run flask --app page_analyzer:app --debug run

lint:
	poetry run flake8 page_analyzer

pylint:
	poetry run pylint page_analyzer

build:
	./build.sh

PORT ?= 8000
start:
	poetry run gunicorn -w 5 -b 0.0.0.0:$(PORT) page_analyzer:app

.PHONY: install dev debug lint pylint start build
