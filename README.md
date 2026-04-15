# Project Website Setup

A clean Jekyll site using [Minimal Mistakes](https://mmistakes.github.io/minimal-mistakes/).

Deployment through github pages not yet available (content still in progress)

## To work locally (until Github Pages is setup)

### 1. Ruby

Jekyll is a Ruby program.

- **Mac:** `brew install ruby` (if you don't have Homebrew: [brew.sh](https://brew.sh))

### 2. Bundler

```bash
gem install bundler
```

Verify: `bundler -v`

**First time only:**

```bash
make install
```

This downloads all the gems Jekyll needs. Takes a minute or two.

**Every time you want to work:**

```bash
make serve
```

Open your browser to **http://localhost:4000**

The `--livereload` flag means your browser automatically refreshes every time you save a file. Edit, save, see the change instantly.