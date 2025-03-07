default: pylint pytest

pylint:
	find . -iname "*.py" -not -path "./tests/*" | xargs -n1 -I {}  pylint --output-format=colorized {}; true

pytest:
	PYTHONDONTWRITEBYTECODE=1 pytest -m "not optional" -v --color=yes
