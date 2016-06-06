TAGS := 1.5 1.6 1.7 1.5-wheezy 1.6-wheezy 1.7-wheezy

.PHONY: all
all:
	$(foreach tag,$(TAGS), mkdir $(tag); m4 -D TAG=$(tag) Dockerfile.m4 > $(tag)/Dockerfile ;)
