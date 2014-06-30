#!/bin/sh -u

# ENVIRONMENT PRESETS ALREADY IN /vagrant/koborc 	# <-- checked into the repository
# THIS FILE PULLS IN THE ENVIRONMENT AS DEFINED IN /vagrant/(env_kobocat|env_koboform) # respectively, for each project
# THESE VALUES MAY BE OVERRIDDEN BY /vagrant/env.sh (optional file) # <-- not checked into the repository

# scripts/01_environment_vars.sh

install_info() {
    echo "KoBoToolbox install: [$0] $1"
}

export HOME="/home/vagrant"

export KOBO_PSQL_DB_USER="kobo"
export KOBO_PSQL_DB_PASS="kobo"
# export KOBO_PSQL_DB_NAME="kobotoolbox"

export VH="/vagrant"
export VS="/vagrant/scripts"
export KOBOCAT="kobocat"

export DIST_KOBO_DEVEL="dist-kobo-devel"

export KOBOCAT_REPO="https://github.com/kobotoolbox/kobocat.git"
export KOBOCAT_BRANCH="master"
export KOBOCAT_PATH="/vagrant/kobocat"

export KOBOCAT_TEMPLATES_REPO="https://github.com/kobotoolbox/kobocat-template.git"
export KOBOCAT_TEMPLATES_BRANCH="master"
export KOBOCAT_TEMPLATES_PATH="/vagrant/kobocat-template"

export KOBOFORM_REPO="https://github.com/kobotoolbox/dkobo.git"
export KOBOFORM_BRANCH="master"
export KOBOFORM_PATH="/vagrant/koboform"

export AUTOLAUNCH="1"

#export KOBOFORM_SERVER="localhost"
#export KOBOFORM_SERVER_PORT="8000"

if [ -f "/vagrant/env.sh" ]; then
	. /vagrant/env.sh
fi
