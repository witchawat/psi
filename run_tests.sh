pip install -q -r test_requirements.txt
mkdir -p reports/html
nosetests -w tests --with-coverage --cover-html  --cover-html-dir=../reports/html --cover-branches
nosetests -w tests --with-coverage --cover-erase --with-xunit --cover-branches

# For coveralls.io service(This is disabled by now)
# Please make sure environment variable COVERALLS_REPO_TOKEN exists and is correct.
# Reference: http://levibostian.com/python-code-coverage-and-coveralls-io/
# coveralls

# For codecov.io service
bash <(curl -s https://codecov.io/bash) -t b0607487-ef58-48c2-9efa-8538b24fcdfd
