#!/bin/bash

# ------------------------------------------------------
# Command to build TTF + Web Font:
#     npm run build -- contents::ralaimazoto-iosevka
# Command to build TTF:
#     npm run build -- ttf::ralaimazoto-iosevka
# Command to build TTF Unhinted:
#     npm run build -- ttf-unhinted::ralaimazoto-iosevka
# ------------------------------------------------------

git pull \
    && npm run build -- ttf::ralaimazoto-iosevka \
    && mkdir -p ~/.fonts/ \
    && cp dist/ralaimazoto-iosevka/ttf/*.ttf ~/.fonts/ \
    && fc-cache -f
