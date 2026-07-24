# stack-wrapper-static-content

A container wrapper scheme for the [stack](https://github.com/bozemanpass/stack) tool
that serves static HTML content with nginx.

A repository containing only static content (an `index.html` and friends) can be built
into a servable container image with no containerization knowledge required:

```
$ stack fetch repo bozemanpass/stack-wrapper-static-content
$ stack webapp build --wrapper static-content --source-repo ~/my-static-site
```

## Contents

- `wrapper.yml` — the wrapper manifest (see the stack tool's `docs/wrappers.md`)
- `Containerfile` — build for the `bozemanpass/static-content-base` base image
- `Containerfile.app` — wraps the app source into a servable image (build context is the app repository)
- `build.sh` — build script invoked by the stack tool
