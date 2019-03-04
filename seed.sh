#!/bin/bash


EXTENSIONS=(
  "aaron-bond.better-comments"
  "dbaeumer.jshint"
  "dbaeumer.vscode-eslint"
  "eamodio.gitlens"
  "ms-vscode.vscode-typescript-tslint-plugin"
  "HookyQR.beautify"
  "kumar-harsh.graphql-for-vscode"
  "mauve.terraform"
  "ms-vscode.atom-keybindings"
  "RamiroBerrelleza.bitbucket-pull-requests"
  "sodatea.velocity"
  "zhuangtongfa.Material-theme"
);

if ! [ -x "$(command -v code)" ]; then
  echo "Error: vscode is not installed in the commandline." >&2
  exit 1
fi

echo "Installing VSCode extensions"

for i in "${EXTENSIONS[@]}"
do
  code --install-extension $i
done

vscodeSettings='{
    "atomKeymap.promptV3Features": true,
    "editor.multiCursorModifier": "ctrlCmd",
    "editor.formatOnPaste": true,
    "workbench.colorTheme": "One Dark Pro",
    "editor.fontSize": 17,
    "git.confirmSync": false,
    "git.enableSmartCommit": true,
    "git.autofetch": true
}'

echo "Installing settings"
echo $vscodeSettings > $HOME/Library/Application\ Support/Code/User/settings.json