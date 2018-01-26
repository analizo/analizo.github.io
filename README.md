# Analizo site source code

### Pre-requisites

* Text::Template
* pandoc

### Releasing

rough instructions for releasing and publishing packages to the site

* build analizo and doxyparse packages
* copy package files (.deb, .dsc, .changes and .tar.gz) into download/
* ensure that .changes files are gpg-signed
  ```
  gpg --clear-sign <file>.changes
  ```
* cd download && ./update-repository
* build the site locally if you haven't yet:
  ```
  make && make html
  ```
* cd site/publish && git add . && git commit -m 'update repository'
* cd site && make upload
