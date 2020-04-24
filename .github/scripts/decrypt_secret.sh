#!/bin/sh

gpg --quiet --batch --yes --decrypt --passphrase="$SECRET_PASSPHRASE" \
--output "$HOME/android/app/google-services.json" "$HOME/.github/secrets/google-services.json.gpg"
