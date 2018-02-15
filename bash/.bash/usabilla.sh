[ -e "$HOME/.usabillarc" ] && source $HOME/.usabillarc

function start-themes-api() {
  (screen -D -m -SR mongo mongod && \
  cd ~/Projects/usabilla/themes-api && screen -D -m -SR api yarn start:watch && /
  cd ~/Projects/usabilla/themes-publisher && screen -D -m -SR pub yarn start:watch && /
  echo 'themes api started')
}

declare -a REPOS=(
  "themes-editor-internal"
  "themes-api"
  "themes-publisher"
)

BASE_REPO_PATH="${HOME}/Projects/usabilla"

function report-changes() {
  for i in "${REPOS[@]}"
  do
    report-changes-since-last-tag $i
  done
}

function report-changes-since-last-tag() {
  local repo=$1
  local full_path="${BASE_REPO_PATH}/${repo}"
  (
    cd $full_path

    echo "*${repo}*"
    [[ ! -z $(git status --short | xargs) ]] && echo "Repo is dirty" && exit 1

    git checkout master --quiet
    git pull --quiet
    local change_count=$(git changelog-tag | wc -l | xargs)
    echo "${change_count} commits since tag $(git latest-tag-version)"
    git changelog-tag
    echo ''
  )
}
