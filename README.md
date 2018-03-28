# Analizo site source code

### Releasing

rough instructions for releasing and publishing packages to the site

* build analizo and doxyparse packages
* copy package files (.deb, .dsc, .changes, .tar.gz and .diff.gz) into download/
* ensure that .changes files are gpg-signed
  ```
  gpg --clear-sign <file>.changes
  ```
* cd download && ./update-repository
* update `analizo_version` on `_config.yml` file
* test the site locally if you haven't yet:
  ```
  jekyll s
  ```
* git add . && git commit -m 'update repository and site'
* git push
