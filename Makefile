#                                 __                 __
#    __  ______  ____ ___  ____ _/ /____  ____  ____/ /
#   / / / / __ \/ __ `__ \/ __ `/ __/ _ \/ __ \/ __  /
#  / /_/ / /_/ / / / / / / /_/ / /_/  __/ /_/ / /_/ /
#  \__, /\____/_/ /_/ /_/\__,_/\__/\___/\____/\__,_/
# /____                     matthewdavis.io, holla!
#
NAME	    := appsoa/docker-alpine-nmap
ALIAS	    := nmap
VERSION	    := 1.0.0
USER_EMAIL  := $(shell git config --get user.email)
USER_NAME   := $(shell git config --get user.name)
AUTHOR      := "${USER_NAME} <${USER_EMAIL}>"
export

.PHONY:	all build test tag_latest release

all:	clean build

help:

	@echo AUTHOR LABEL: ${AUTHOR}

build:

	@echo "Building an image with the current tag $(NAME):$(VERSION).."

	docker build    --rm \
                    --build-arg AUTHOR=$(AUTHOR) \
					--tag $(NAME):$(VERSION) \
					.

run:

	docker run --rm -it $(NAME):$(VERSION) -Pn -p80,443 google.com

tag_latest:

	docker tag $(NAME):$(VERSION) $(NAME):latest

release:

	docker push $(NAME)
