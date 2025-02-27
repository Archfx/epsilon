#!/bin/bash

echo
echo "--------------------------------------"
echo "         AOSP 15.0 Uploadbot          "
echo "                  by                  "
echo "                ArchFX                "
echo "--------------------------------------"
echo

set -e

BL=$PWD/treble_aosp
BD=$PWD/duo-de/builds
TAG="$(date +v%Y.%m.%d)"
GUSER="archfx"
# GREPO="duoPosture"
GREPO="duoTreble"
# GREPO="duo-de"

SKIPOTA=false
if [ "$1" == "--skip-ota" ]; then
    SKIPOTA=true
fi

createRelease() {
    echo "--> Creating release $TAG"
    res=$(gh release create "$TAG" --repo "$GUSER/$GREPO" --title "$TAG"  )
    echo
}

uploadAssets() {
    buildDate="$(date +%Y%m%d)"
    find $BD/ -name "aosp-*-15.0-$buildDate.img.xz" | while read file; do
        echo "--> Uploading $(basename $file)"
        gh release upload "$TAG" "$file" --repo "$GUSER/$GREPO"
        echo
    done
}

updateOta() {
    cd treble_aosp
    echo "--> Updating OTA file"
    git add config/ota.json
    git commit -m "build: Bump OTA to $TAG"
    git push --set-upstream origin main-15
    echo
    cd ..
}

START=$(date +%s)

createRelease
uploadAssets
# [ "$SKIPOTA" = false ] && updateOta

END=$(date +%s)
ELAPSEDM=$(($(($END-$START))/60))
ELAPSEDS=$(($(($END-$START))-$ELAPSEDM*60))

echo "--> Uploadbot completed in $ELAPSEDM minutes and $ELAPSEDS seconds"
echo
