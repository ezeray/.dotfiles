#!/bin/zsh

log_src=/Users/ezequielraigorodsky/.dotfiles/my-c-logger-lib/src/logger.c
log_hdr=/Users/ezequielraigorodsky/.dotfiles/my-c-logger-lib/include/logger.h

if [[ ! -d ./src || ! -d ./include ]]; then
    printf "To bring in the logger library there have to be both a './src' "
    printf "AND a './include' directory\n"
fi

cp ${log_src} ./src/.
cp ${log_hdr} ./include/.
