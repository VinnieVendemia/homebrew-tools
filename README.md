



# homebrew-tools

Repo for storing various homebrew tools.


## Deploy new version


eg. divaide: 

```
<!-- replace tag with correct tag -->
curl -L https://github.com/vinnievendemia/divaide/archive/refs/tags/v0.1.1.tar.gz | shasum -a 256
```

Replace SHA and url in formula:

```
  url "https://github.com/vinnievendemia/divaide/archive/refs/tags/vX.X.X.tar.gz"
  sha256 "new sha"
```