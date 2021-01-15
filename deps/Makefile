.PHONY: all ccls gotools impl gotests fillstruct gomodifytags terraform terraform-ls rls hover
all: ccls gotools impl gotests fillstruct gomodifytags terraform terraform-ls hover # rls

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
	cd terraform-ls && \
		GOPROXY=https://goproxy.io go build -o ../../bin/terraform-ls .

#rls:
#	cd rls && \
#		cargo build --release && \
#		ln -sf ${shell pwd}/rls/target/release/rls ../../bin/rls

hover:
	cd hover && \
		GOPROXY=https://goproxy.io go build -o ../../bin/hover .
