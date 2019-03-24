# Project-specific variables
BINARIES ?=	hello
CONVEY_PORT ?=	9042


# Common variables
SOURCES :=	$(shell find . -type f -name "*.go")
COMMANDS :=	$(shell go list ./... | grep -v /vendor/ | grep /cmd/)
PACKAGES :=	$(shell go list ./... | grep -v /vendor/ | grep -v /cmd/)
GOENV ?=	GO15VENDOREXPERIMENT=1
GO ?=		$(GOENV) go
GODEP ?=	$(GOENV) godep
USER ?=		$(shell whoami)


all:	build


.PHONY: build
build:	$(BINARIES)


$(BINARIES):	$(SOURCES)
	$(GO) build -o ./dist/$@ ./cmd/$@


.PHONY: test
test:
	$(GO) get -t .
	$(GO) test -v .
