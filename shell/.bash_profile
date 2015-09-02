#!/bin/bash

DOTFILES_DIR="$HOME/.dotfiles"

load_dotfiles() {
  declare -a files=(
    "${DOTFILES_DIR}/shell/.colors"
    "${DOTFILES_DIR}/shell/.exports"
    "${DOTFILES_DIR}/shell/.paths"
    "${DOTFILES_DIR}/shell/.aliases"
    "${DOTFILES_DIR}/shell/.prompt"
    "${DOTFILES_DIR}/shell/functions/*"
    "${HOME}/.bash_profile.local"
  )

  for index in ${!files[*]}
  do
    if [[ -r ${files[$index]} ]];
      echo ${files[$index]}
    fi
  done
}

load_dotfiles
unset load_dotfiles