#!/usr/bin/env bash

gpg --quiet --batch --yes --decrypt --passphrase="$SECRET_PASSPHRASE" \
--output "./android/app/google-services.json" "./.github/secrets/google-services.json.gpg"
