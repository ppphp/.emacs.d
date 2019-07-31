

.PHONY: ccls
ccls:
	cmake -Hccls -Bccls/Release -DCMAKE_BUILD_TYPE=Release \
	    	-DCMAKE_PREFIX_PATH=/usr/lib/llvm-7 \
	    	-DLLVM_INCLUDE_DIR=/usr/lib/llvm-7/include \
	    	-DLLVM_BUILD_INCLUDE_DIR=/usr/include/llvm-7/
	cmake --build ccls/Release/
	ln -s ${shell pwd}/ccls/Release/ccls ../bin/ccls


