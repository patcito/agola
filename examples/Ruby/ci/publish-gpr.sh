#!/bin/sh

mkdir -p "$HOME/.gem"
printf -- "---\n:github: Bearer ${GEM_HOST_API_KEY}\n" > "$HOME/.gem/credentials"
chmod 0600 "$HOME/.gem/credentials"
gem build *.gemspec
gem push --KEY github --host "https://rubygems.pkg.github.com/${OWNER}" *.gem
