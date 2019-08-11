

.PHONY: all ccls gotools
all: ccls gotools

ccls:
	cmake -Hccls -Bccls/Release -DCMAKE_BUILD_TYPE=Release \
	    	-DCMAKE_PREFIX_PATH=/usr/lib/llvm-7 \
	    	-DLLVM_INCLUDE_DIR=/usr/lib/llvm-7/include \
	    	-DLLVM_BUILD_INCLUDE_DIR=/usr/include/llvm-7/
	cmake --build ccls/Release/
	ln -sf ${shell pwd}/ccls/Release/ccls ../bin/ccls

gotools:
	cd tools && \
		go build -o ../../bin/gopls ./cmd/gopls && \
		go build -o ../../bin/goimports ./cmd/goimports

