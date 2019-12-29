

.PHONY: all ccls gotools terraform rls typescript-language-server flutter
all: ccls gotools terraform typescript-language-server flutter # rls

ccls:
	cd ccls && mkdir -p build && cd build && cmake ../
	make -C ccls/build
	ln -sf ${shell pwd}/ccls/build/ccls ../bin/ccls

gotools:
	cd tools/gopls && \
		GOPROXY=https://goproxy.io go build -o ../../../bin/gopls ./
	cd tools/ && \
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
	ln -sf ${shell pwd}/flutter/bin/cache/dart-sdk/bin/dart ../bin/dart
	ln -sf ${shell pwd}/flutter/bin/cache/dart-sdk/bin/dartfmt ../bin/dartfmt
	ln -sf ${shell pwd}/flutter/bin/cache/dart-sdk/bin/dartanalyzer ../bin/dartanalyzer
	ln -sf ${shell pwd}/flutter/bin/cache/dart-sdk/bin/dartdoc ../bin/dartdoc
	ln -sf ${shell pwd}/flutter/bin/cache/dart-sdk/bin/dartdevc ../bin/dartdevc
	ln -sf ${shell pwd}/flutter/bin/cache/dart-sdk/bin/dart2js ../bin/dart2js
	ln -sf ${shell pwd}/flutter/bin/cache/dart-sdk/bin/pub ../bin/pub


