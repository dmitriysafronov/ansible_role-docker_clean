#!/usr/bin/env bash

git \
  clone \
  https://github.com/dmitriysafronov/ansible_role-template.git \
  .update

rsync -av \
  --include=.github/ \
  --include=.github/dependabot.yml \
  --include=.github/workflows/ \
  --include=.github/workflows/lint.yaml \
  --include=.github/workflows/rebase-on-push-to-main-branch.yaml \
  --include=.requirements/* \
  --include=update.sh \
  --exclude=* \
  --delete-after \
  .update/ \
  ./

rm -rf .update/
