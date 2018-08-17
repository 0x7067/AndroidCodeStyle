#!/bin/bash
# Installs Kobe AndroidStudio Code Style into your AndroidStudio codestyles folder.
# Inspired by https://github.com/grandcentrix/AndroidCodeStyle

echo "Installing Kobe AndroidStudio code style..."
echo ""

LATEST_CODE_STYLE="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/styles/Kobe.xml"
for TARGET_DIR in $HOME/Library/Preferences/AndroidStudio*         \
                  $HOME/Library/Preferences/AndroidStudioPreview*  \
                  ~/.AndroidStudio*/config                         \
                  ~/.AndroidStudioPreview*/config

do
  if [[ -d $TARGET_DIR ]]; then
    # create codestyles dir and ...
    mkdir -p ${TARGET_DIR}/codestyles
    # ... copy to latest style to ${TARGET_DIR}
    echo "Copying..."
    cp -frv ${LATEST_CODE_STYLE} ${TARGET_DIR}/codestyles

  fi
done

echo ""
echo "Done."
echo "Restart AndroidStudio. Go to Preferences->Editor->Code Style and apply Scheme 'Kobe'."
