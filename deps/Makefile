.PHONY: all ccls gotools impl gotests fillstruct gomodifytags rust-analyzer hover
all: ccls gotools impl gotests fillstruct gomodifytags hover rust-analyzer

ccls:
	cd ccls && mkdir -p build && cd build && cmake ../ -DCMAKE_EXPORT_COMPILE_COMMANDS=YES #-DUSE_SYSTEM_RAPIDJSON=off
	make -C ccls/build

gotools:
	cd tools/gopls && \
		GOPROXY=https://goproxy.io go build -o ../../../bin/gopls ./
	cd tools/ && \
		GOPROXY=https://goproxy.io go build -o ../../bin/goimports ./cmd/goimports

impl:
	cd impl && \
		GOPROXY=https://goproxy.io go build -o ../../../bin/impl ./

gotests:
	cd gotests && \
		GOPROXY=https://goproxy.io go build -o ../../../bin/gotests ./

fillstruct:
	cd fillstruct && \
		GOPROXY=https://goproxy.io go build -o ../../../bin/fillstruct ./cmd/fillstruct

gomodifytags:
	cd gomodifytags && \
		GOPROXY=https://goproxy.io go build -o ../../../bin/gomodifytags ./

rust-analyzer:
	cd rust-analyzer && \
		cargo xtask install --server 

hover:
	cd hover && \
		GOPROXY=https://goproxy.io go build -o ../../bin/hover .
