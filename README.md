# use-preact

Use preact to reduce bundle sizes, this script will add preact-compat as an alias


## Usage

```bash
npm i --save-dev use-preact
```

By default use-preact points to the location of the webpack config for create-react-app projects.

```bash
./node_modules/use-preact/use-preact.sh <PATH_TO_CONFIG> <SEARCH_STRING>

# Default values
./node_modules/use-preact/use-preact.sh ./node_modules/react-scripts/config/ preact-compat
```

If you are using preact, you can pass in the `--preact flag`
