#                                 __                 __
#    __  ______  ____ ___  ____ _/ /____  ____  ____/ /
#   / / / / __ \/ __ `__ \/ __ `/ __/ _ \/ __ \/ __  /
#  / /_/ / /_/ / / / / / / /_/ / /_/  __/ /_/ / /_/ /
#  \__, /\____/_/ /_/ /_/\__,_/\__/\___/\____/\__,_/
# /____                     matthewdavis.io, holla!
#
FROM    alpine:3.6 AS base
ARG     AUTHOR
LABEL   AUTHOR $AUTHOR

RUN apk \
    --update \
    --no-cache \
    --virtual build-dependencies \
    add \
    curl wget nmap

ENTRYPOINT [ "nmap" ]
