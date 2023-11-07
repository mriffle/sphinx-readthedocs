# sphinx-readthedocs
Docker image that will build Sphinx documentation for readthedocs--useful
for testing your local files without looking up how to install Sphinx.

# Instructions
Change into your doc directory and type the following to build HTML:

```
docker run --rm -v `pwd`:/docs mriffle/sphinx-readthedocs:latest make html
```
