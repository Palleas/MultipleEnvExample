#!/usr/bin/env bash
/usr/libexec/PlistBuddy -c "Add SERVER_ENDPOINT String $SERVER_ENDPOINT" "$BUDDYBUILD_WORKSPACE/MultipleEnvExample/Info.plist"
/usr/libexec/PlistBuddy -c "Add STRIPE_KEY String $STRIPE_KEY" "$BUDDYBUILD_WORKSPACE/MultipleEnvExample/Info.plist"
