# use-preact

Use preact to reduce bundle sizes, this script will add preact-compat as an alias


## Usage

```bash
npm i --save-dev use-preact
```

By default use-preact points to the location of the webpack config for create-react-app projects.

```bash
use-preact <PATH_TO_CONFIG> <SEARCH_STRING>

use-preact ./node_modules/react-scripts/config/ preact-compat
```
