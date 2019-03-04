#!/bin/sh

set -eux

# include build-packages/gitlab-ci/build_pkg_functions.sh
. /usr/local/bin/build_pkg-functions.sh

func_artifactory_repo

# TODO: GEMS and PROJECT should be available as environment variable
GEMS="https://artifacts.radarservices.net/api/gems"
HOST="${GEMS}/${ARTIFACTORY_REPO}"

# build GEM
gem source -a "${HOST}/"
gem build "${CI_PROJECT_DIR}/rs_paginator.gemspec"

jfrog rt u --url="${ARTIFACTORY_URL}" --access-token="${ARTIFACTORY_TOKEN}" "${CI_PROJECT_DIR}/*.gem" "${ARTIFACTORY_REPO}/gems/"
