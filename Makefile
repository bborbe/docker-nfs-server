VERSION ?= latest
REGISTRY ?= docker.io

default: build

clean:
	docker rmi $(REGISTRY)/bborbe/nfs-server:$(VERSION)

build:
	docker build --build-arg VERSION=$(VERSION) --no-cache --rm=true -t $(REGISTRY)/bborbe/nfs-server:$(VERSION) .

upload:
	docker push $(REGISTRY)/bborbe/nfs-server:$(VERSION)
