#!/usr/bin/env bash

function jekyll_new {
  path=$1
        
  docker run --rm \
    --volume="$path:/srv/jekyll" \
    -it jekyll/jekyll:latest \
    jekyll new mjlab.github.io
}

function jekyll_run {
  path=$1

  echo $JEKYLL_GITHUB_TOKEN
  docker run --rm \
    -e JEKYLL_GITHUB_TOKEN=$JEKYLL_GITHUB_TOKEN \
    -p 4000:4000 \
    --volume="$path:/srv/jekyll" \
    --volume="$path/vendor/bundle:/usr/local/bundle" \
    -it jekyll/jekyll:latest \
    jekyll serve --watch
}
