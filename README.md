```bash
# build the jekyll image:
docker build -t jekyll-base .
# serve site local
docker run -v "$PWD:/var/src" -p 4000:4000 -p 35729:35729 jekyll-base jekyll serve --host '0.0.0.0' --livereload --force_polling
```