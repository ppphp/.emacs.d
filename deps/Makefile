

.PHONY: all ccls gotools terraform rls typescript-language-server flutter
all: ccls gotools terraform typescript-language-server flutter # rls

ccls:
	cd ccls && cmake .
	make -C ccls
	ln -sf ${shell pwd}/ccls/ccls ../bin/ccls

gotools:
	cd tools && \
		GOPROXY=https://goproxy.io go build -o ../../bin/gopls ./cmd/gopls && \
		GOPROXY=https://goproxy.io go build -o ../../bin/goimports ./cmd/goimports

terraform:
	cd terraform && \
		GOPROXY=https://goproxy.io go build -o ../../bin/terraform .

#rls:
#	cd rls && \
#		cargo build --release && \
#		ln -sf ${shell pwd}/rls/target/release/rls ../../bin/rls

typescript-language-server:
	cd typescript-language-server && \
		yarn && \
		ln -sf ${shell pwd}/typescript-language-server/server/src/cli.ts ../../bin/typescript-language-server

flutter:
	ln -sf ${shell pwd}/flutter/bin/flutter ../bin/flutter


