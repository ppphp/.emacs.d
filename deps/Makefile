

.PHONY: all ccls gotools terraform rls typescript-language-server
all: ccls gotools terraform rls typescript-language-server

ccls:
	cmake -Hccls -Bccls/Release -DCMAKE_BUILD_TYPE=Release \
	    	-DCMAKE_PREFIX_PATH=/usr/lib/llvm-7 \
	    	-DLLVM_INCLUDE_DIR=/usr/lib/llvm-7/include \
	    	-DLLVM_BUILD_INCLUDE_DIR=/usr/include/llvm-7/
	cmake --build ccls/Release/
	ln -sf ${shell pwd}/ccls/Release/ccls ../bin/ccls

gotools:
	cd tools && \
		GOPROXY=https://goproxy.io go build -o ../../bin/gopls ./cmd/gopls && \
		GOPROXY=https://goproxy.io go build -o ../../bin/goimports ./cmd/goimports

terraform:
	cd terraform && \
		GOPROXY=https://goproxy.io go build -o ../../bin/terraform .

rls:
	cd rls && \
		cargo build --release && \
		ln -sf ${shell pwd}/rls/target/release/rls ../../bin/rls

typescript-language-server:
	cd typescript-language-server && \
		yarn && \
		ln -sf ${shell pwd}/typescript-language-server/server/src/cli.ts ../../bin/typescript-language-server

