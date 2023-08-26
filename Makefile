default:
	python3 -m build

clean:
	rm -rf dist
	rm -rf build

deploy:
	make clean
	python3 -m build
	python3 -m twine upload --repository pypi dist/*