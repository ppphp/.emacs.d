<<<<<<< HEAD
.PHONY: all ccls gotools impl gotests fillstruct gomodifytags terraform rls typescript-language-server
all: ccls gotools impl gotests fillstruct gomodifytags terraform typescript-language-server # rls
=======
.PHONY: all ccls gotools impl gotests fillstruct gomodifytags terraform rls
all: ccls gotools impl gotests fillstruct gomodifytags terraform # rls
>>>>>>> 3e3b1e88aa4a1582340463a175fa871a29835e34

ccls:
	cd ccls && mkdir -p build && cd build && cmake ../ -DUSE_SYSTEM_RAPIDJSON=off
	make -C ccls/build
	ln -sf ${shell pwd}/ccls/build/ccls ../bin/ccls

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

terraform:
	cd terraform && \
		GOPROXY=https://goproxy.io go build -o ../../bin/terraform .
	cd terraform-lsp && \
		GOPROXY=https://goproxy.io go build -o ../../bin/terraform-lsp .

#rls:
#	cd rls && \
#		cargo build --release && \
#		ln -sf ${shell pwd}/rls/target/release/rls ../../bin/rls

<<<<<<< HEAD
typescript-language-server:
	cd typescript-language-server && \
		yarn && \
		ln -sf ${shell pwd}/typescript-language-server/server/src/cli.ts ../../bin/typescript-language-server

=======
>>>>>>> 3e3b1e88aa4a1582340463a175fa871a29835e34
hover:
	cd hover && \
		GOPROXY=https://goproxy.io go build -o ../../bin/hover .
