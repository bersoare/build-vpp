VPP_TAG=v23.02

.PHONY: build
build:
	@docker build . -t vpp:prod -f Dockerfile_prod --build-arg=VPP_TAG=${VPP_TAG} --target prod --no-cache

.PHONY: build-debug
build-debug:
	@docker build . -t vpp:debug -f Dockerfile_debug --build-arg=VPP_TAG=${VPP_TAG} --target debug --no-cache