# Use preact
# Switch a react project to using preact if its isn't using it already.
#
# EX: grep -rl "preact-compat" ./node_modules/react-scripts/config/
# EX: find ./node_modules/react-scripts/config/*.config.* -type f -exec sed -i "s/alias: {/alias: {\n\t\t\t\'react\': \'preact-compat\',\n\t\t\t\'react-dom\': \'preact-compat\',/gi" {} \;

filePattern=${1:-./node_modules/react-scripts/config/}
searchString=${2:-preact-compat}

replaceString="alias: {"
newString="\
  alias: {\
    'react\': \'preact-compat\',\
    'react-dom\': \'preact-compat\',\
"

SEARCH="$(grep -rl "$searchString" $filePattern)"
echo "${SEARCH}"

if [ ! "${SEARCH}" ]
  then
    echo "preact was not detected, adding it as a webpack config alias..."

    REPLACE="$(find $filePattern -type f -exec sed -i "" -e "s/$replaceString/$newString/g" {} \;)"
    echo "${REPLACE}"
fi
