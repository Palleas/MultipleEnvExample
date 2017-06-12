#!/usr/bin/env bash

# Adding environment variables into the Info.plist using PlistBuddy
# More infos on Plistbuddy: https://developer.apple.com/legacy/library/documentation/Darwin/Reference/ManPages/man8/PlistBuddy.8.html
/usr/libexec/PlistBuddy -c "Add SERVER_ENDPOINT String $SERVER_ENDPOINT" "$BUDDYBUILD_WORKSPACE/MultipleEnvExample/Info.plist"
/usr/libexec/PlistBuddy -c "Add STRIPE_KEY String $STRIPE_KEY" "$BUDDYBUILD_WORKSPACE/MultipleEnvExample/Info.plist"
