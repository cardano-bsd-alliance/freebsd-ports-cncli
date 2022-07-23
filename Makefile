PORTNAME=		cncli
DISTVERSIONPREFIX=	v
DISTVERSION=		5.0.3
CATEGORIES=		net-p2p
EXTRACT_ONLY+=	input-output-hk-libsodium-${LIBSODIUM_HASH}_GH0${EXTRACT_SUFX}

MAINTAINER=		boris@zfs.ninja
COMMENT=		A community-based cardano-node CLI tool

LICENSE=		APACHE20
LICENSE_FILE_APACHE20=	${WRKSRC}/LICENSE

USES=	autoreconf:build cargo gmake libtool pkgconfig

USE_GITHUB=	yes
GH_ACCOUNT=	cardano-community input-output-hk:sodium
GH_PROJECT=	${PORTNAME} libsodium:sodium
GH_TAGNAME=	${LIBSODIUM_HASH}:sodium

#USE_RC_SUBR=	cncli

LIBSODIUM_HASH=	66f017f16633f2060db25e17c170c2afa0f2a8a1
LIBS_PREFIX=	${WRKDIR}/libs_install

CARGO_ENV=	SODIUM_LIB_DIR=${LIBS_PREFIX}${PREFIX}/lib PKG_CONFIG_PATH=${LIBS_PREFIX}${PREFIX}/libdata/pkgconfig/

OPENSSLBASE=	/usr
OPENSSLDIR=	/etc/ssl
OPENSSLINC=	/usr/include
OPENSSLLIB=	/usr/lib

CARGO_CRATES=   ahash-0.4.7 \
		aho-corasick-0.7.18 \
		ansi_term-0.12.1 \
		arrayref-0.3.6 \
		arrayvec-0.5.2 \
		async-channel-1.6.1 \
		async-executor-1.4.1 \
		async-global-executor-2.2.0 \
		async-io-1.7.0 \
		async-lock-2.5.0 \
		async-std-1.12.0 \
		async-task-4.3.0 \
		atomic-waker-1.0.0 \
		atty-0.2.14 \
		autocfg-1.1.0 \
		autotools-0.2.5 \
		az-1.2.0 \
		base58-0.2.0 \
		base64-0.13.0 \
		bech32-0.8.1 \
		bech32-0.9.0 \
		bigdecimal-0.2.2 \
		bitflags-1.3.2 \
		blake2b_simd-0.5.11 \
		blocking-1.2.0 \
		bumpalo-3.10.0 \
		byteorder-1.4.3 \
		bytes-1.2.0 \
		cache-padded-1.2.0 \
		cc-1.0.73 \
		cfg-if-0.1.10 \
		cfg-if-1.0.0 \
		chrono-0.4.19 \
		chrono-tz-0.5.3 \
		clap-2.34.0 \
		concurrent-queue-1.2.2 \
		constant_time_eq-0.1.5 \
		core-foundation-0.9.3 \
		core-foundation-sys-0.8.3 \
		crossbeam-channel-0.5.5 \
		crossbeam-deque-0.8.1 \
		crossbeam-epoch-0.9.9 \
		crossbeam-utils-0.8.10 \
		cryptoxide-0.4.2 \
		ctor-0.1.22 \
		either-1.7.0 \
		encoding_rs-0.8.31 \
		env_logger-0.7.1 \
		env_logger-0.8.4 \
		event-listener-2.5.2 \
		fallible-iterator-0.2.0 \
		fallible-streaming-iterator-0.1.9 \
		fastrand-1.7.0 \
		fnv-1.0.7 \
		foreign-types-0.3.2 \
		foreign-types-shared-0.1.1 \
		form_urlencoded-1.0.1 \
		futures-0.3.21 \
		futures-channel-0.3.21 \
		futures-core-0.3.21 \
		futures-executor-0.3.21 \
		futures-io-0.3.21 \
		futures-lite-1.12.0 \
		futures-macro-0.3.21 \
		futures-sink-0.3.21 \
		futures-task-0.3.21 \
		futures-util-0.3.21 \
		getrandom-0.2.7 \
		gloo-timers-0.2.4 \
		gmp-mpfr-sys-1.4.8 \
		h2-0.3.13 \
		half-1.8.2 \
		hashbrown-0.9.1 \
		hashbrown-0.12.3 \
		hashlink-0.6.0 \
		heck-0.3.3 \
		hermit-abi-0.1.19 \
		hex-0.4.3 \
		http-0.2.8 \
		http-body-0.4.5 \
		httparse-1.7.1 \
		httpdate-1.0.2 \
		humantime-1.3.0 \
		humantime-2.1.0 \
		hyper-0.14.20 \
		hyper-tls-0.5.0 \
		idna-0.2.3 \
		indexmap-1.9.1 \
		instant-0.1.12 \
		ipnet-2.5.0 \
		itertools-0.10.3 \
		itoa-1.0.2 \
		js-sys-0.3.58 \
		kv-log-macro-1.0.7 \
		lazy_static-1.4.0 \
		libc-0.2.126 \
		libsqlite3-sys-0.20.1 \
		log-0.4.17 \
		matches-0.1.9 \
		memchr-2.5.0 \
		memoffset-0.6.5 \
		mime-0.3.16 \
		minicbor-0.17.1 \
		minicbor-derive-0.11.0 \
		mio-0.8.4 \
		native-tls-0.2.10 \
		net2-0.2.37 \
		num-bigint-0.3.3 \
		num-integer-0.1.45 \
		num-traits-0.2.15 \
		num_cpus-1.13.1 \
		once_cell-1.13.0 \
		openssl-0.10.41 \
		openssl-macros-0.1.0 \
		openssl-probe-0.1.5 \
		openssl-sys-0.9.75 \
		pallas-addresses-0.12.0-alpha.0 \
		pallas-codec-0.12.0-alpha.0 \
		pallas-crypto-0.12.0-alpha.0 \
		pallas-miniprotocols-0.12.0-alpha.0 \
		pallas-multiplexer-0.12.0-alpha.0 \
		pallas-primitives-0.12.0-alpha.0 \
		pallas-traverse-0.12.0-alpha.0 \
		parking-2.0.0 \
		parse-zoneinfo-0.3.0 \
		percent-encoding-2.1.0 \
		pin-project-lite-0.2.9 \
		pin-utils-0.1.0 \
		pkg-config-0.3.25 \
		polling-2.2.0 \
		ppv-lite86-0.2.16 \
		pretty_env_logger-0.4.0 \
		proc-macro-error-1.0.4 \
		proc-macro-error-attr-1.0.4 \
		proc-macro2-1.0.40 \
		quick-error-1.2.3 \
		quote-1.0.20 \
		rand-0.8.5 \
		rand_chacha-0.3.1 \
		rand_core-0.6.3 \
		rayon-1.5.3 \
		rayon-core-1.9.3 \
		redox_syscall-0.2.13 \
		regex-1.6.0 \
		regex-syntax-0.6.27 \
		remove_dir_all-0.5.3 \
		reqwest-0.11.11 \
		rug-1.16.0 \
		rusqlite-0.24.2 \
		ryu-1.0.10 \
		schannel-0.1.20 \
		scopeguard-1.1.0 \
		security-framework-2.6.1 \
		security-framework-sys-2.6.1 \
		serde-1.0.139 \
		serde-aux-2.3.0 \
		serde_cbor-0.11.2 \
		serde_derive-1.0.139 \
		serde_json-1.0.82 \
		serde_urlencoded-0.7.1 \
		slab-0.4.7 \
		smallvec-1.9.0 \
		socket2-0.4.4 \
		strsim-0.8.0 \
		structopt-0.3.26 \
		structopt-derive-0.4.18 \
		syn-1.0.98 \
		tempfile-3.3.0 \
		termcolor-1.1.3 \
		textwrap-0.11.0 \
		thiserror-1.0.31 \
		thiserror-impl-1.0.31 \
		time-0.1.44 \
		tinyvec-1.6.0 \
		tinyvec_macros-0.1.0 \
		tokio-1.20.0 \
		tokio-native-tls-0.3.0 \
		tokio-util-0.7.3 \
		tower-service-0.3.2 \
		tracing-0.1.35 \
		tracing-core-0.1.28 \
		try-lock-0.2.3 \
		unicode-bidi-0.3.8 \
		unicode-ident-1.0.2 \
		unicode-normalization-0.1.21 \
		unicode-segmentation-1.9.0 \
		unicode-width-0.1.9 \
		url-2.2.2 \
		value-bag-1.0.0-alpha.9 \
		vcpkg-0.2.15 \
		vec_map-0.8.2 \
		version_check-0.9.4 \
		waker-fn-1.1.0 \
		want-0.3.0 \
		wasi-0.10.0+wasi-snapshot-preview1 \
		wasi-0.11.0+wasi-snapshot-preview1 \
		wasm-bindgen-0.2.81 \
		wasm-bindgen-backend-0.2.81 \
		wasm-bindgen-futures-0.4.31 \
		wasm-bindgen-macro-0.2.81 \
		wasm-bindgen-macro-support-0.2.81 \
		wasm-bindgen-shared-0.2.81 \
		web-sys-0.3.58 \
		wepoll-ffi-0.1.2 \
		winapi-0.3.9 \
		winapi-i686-pc-windows-gnu-0.4.0 \
		winapi-util-0.1.5 \
		winapi-x86_64-pc-windows-gnu-0.4.0 \
		windows-sys-0.36.1 \
		windows_aarch64_msvc-0.36.1 \
		windows_i686_gnu-0.36.1 \
		windows_i686_msvc-0.36.1 \
		windows_x86_64_gnu-0.36.1 \
		windows_x86_64_msvc-0.36.1 \
		winreg-0.10.1


PLIST_FILES=	bin/cncli

do-build:
		cd ${WRKSRC_sodium} && ./autogen.sh
		cd ${WRKSRC_sodium} && ./configure --prefix=${PREFIX} --with-pthreads --disable-shared
		cd ${WRKSRC_sodium} && gmake -j${MAKE_JOBS_NUMBER} && gmake DESTDIR=${LIBS_PREFIX} install
		${MKDIR} ${LIBS_PREFIX}${PREFIX}/libdata/pkgconfig
		${MV} ${LIBS_PREFIX}${PREFIX}/lib/pkgconfig/libsodium.pc ${LIBS_PREFIX}${PREFIX}/libdata/pkgconfig/libsodium.pc

.include <bsd.port.mk>
